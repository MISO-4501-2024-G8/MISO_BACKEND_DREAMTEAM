const express = require('express');
const mysql = require('mysql2/promise');
const bodyParser = require('body-parser');
require('dotenv').config();

const app = express();
const secret = 'MISOG8';

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
  console.log("LOGIN");
  try {
    const { email, password } = req.body;
    const connection = await pool.getConnection();
    const [rows] = await connection.query(`CALL LoginUsuario('${email}', '${password}', '${secret}')`);
    connection.release();
    res.json(rows[0][0]);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error interno del servidor' });
  }
});

// Ruta para insertar un nuevo usuario
app.post('/usuarios', async (req, res) => {
  console.log("REGISTER");
  try {
    const { nombre, email, password } = req.body;
    const connection = await pool.getConnection();
    const [rows] = await connection.query(`CALL InsertarUsuario('${nombre}', '${email}', '${password}', NOW(), '${secret}')`);
    connection.release();
    res.json({ message: 'Usuario insertado correctamente' });
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
  console.log("LIST_USERS");
  try {
    const connection = await pool.getConnection();
    const [rows] = await connection.query("SELECT * FROM usuario");
    connection.release();
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error interno del servidor' });
  }
});

app.get('/healthcheck', (req, res) => {
  res.status(200).json({ message: 'OK' });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor iniciado en el puerto ${PORT}`);
});
