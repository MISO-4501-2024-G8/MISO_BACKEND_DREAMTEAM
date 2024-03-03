const express = require('express');
const mysql = require('mysql2/promise');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');


const dotenv = require('dotenv');
const path = require('path');
console.log(`.env.${process.env.NODE_ENVIRONMENT}`);
dotenv.config({ path: `.env.${process.env.NODE_ENVIRONMENT}` });



const app = express();
const secret = 'MISOG8';
const PORT = process.env.PORT;
const expirationTIme = 600 * 1000;

app.use(bodyParser.json());

// Configuración de la conexión a la base de datos
const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
});

// Ruta para el login de usuario
app.post('/login', async (req, res) => {
  let textoFechaHora = (new Date()).toLocaleString();
  console.log(`LOGIN ${textoFechaHora}`);
  try {
    const { email, password } = req.body;
    const connection = await pool.getConnection();
    const token = jwt.sign({
      email,
      password,
      exp: Date.now() + expirationTIme
    }, process.env.TOKEN_SECRET)
    await connection.query(`CALL LoginUsuario('${email}', '${password}', '${token}')`);
    connection.release();
    res.status(200).json({ message: 'Usuario Ingreso Correctamante', token: token });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error interno del servidor' });
  }
});

// Ruta para insertar un nuevo usuario
app.post('/register', async (req, res) => {
  let textoFechaHora = (new Date()).toLocaleString();
  console.log(`REGISTER ${textoFechaHora}`);
  try {
    const { nombre, email, password } = req.body;
    const connection = await pool.getConnection();
    const token = jwt.sign({
      email,
      password,
      exp: Date.now() + expirationTIme
    }, process.env.TOKEN_SECRET)
    const [rows] = await connection.query(`CALL InsertarUsuario('${nombre}', '${email}', '${password}', NOW(), '${token}')`);
    connection.release();
    res.status(200).json({ message: 'Usuario insertado correctamente', token: token });
  } catch (error) {
    console.error(error);
    if(error.code === 'ER_SIGNAL_EXCEPTION' && error.sqlState === '45000') {
      res.status(400).json({ message: error.sqlMessage });
    }else{
      res.status(500).json({ message: 'Error interno del servidor' });
    }
  }
});

// Ruta para obtener la lista de usuarios
app.get('/usuarios', async (req, res) => {
  let textoFechaHora = (new Date()).toLocaleString();
  console.log(`LIST_USERS ${textoFechaHora}`);
  try {
    // Bearer token
    const auth = req.headers.authorization;
    console.log(auth);
    if (!auth) {
      return res.status(401).send({error: "No token provided"})
    }
    const token = auth.split(' ')[1];
    const payLoad = jwt.verify(token, process.env.TOKEN_SECRET)
    if (Date.now() > payLoad.exp){
      return res.status(401).send({error: "Token expired"})
    }
    else{
      const connection = await pool.getConnection();
      const [rows] = await connection.query("SELECT * FROM usuario");
      connection.release();
      res.json(rows);
    }   
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error interno del servidor' });
  }
});

app.get('/healthcheck', (req, res) => {
  res.status(200).json({ message: 'OK' });
});

app.get('/', (req, res) => {
  res.status(200).json({ message: 'OK MS REGISTER LOGIN CORRIENDO' });
});


app.listen(PORT, () => {
  console.log(`Servidor iniciado en el puerto ${PORT}`);
});
