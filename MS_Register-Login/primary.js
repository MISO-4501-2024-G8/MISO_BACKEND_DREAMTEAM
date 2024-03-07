const cluster = require('cluster');
const os = require('os');
const path = require('path');

const __dirnamep = path.dirname(require.resolve('./'));
const numCPUs = os.cpus().length;
console.log(`Número de CPUs: ${numCPUs}`);
console.log(`PID MASTER: ${process.pid}`);
cluster.setupPrimary({
    exec: `${__dirnamep}/index.js`
});

for (let i = 0; i < numCPUs; i++) {
    cluster.fork();
}

cluster.on('disconnect', (worker) => {
    console.log(`Desconectado: ${worker.id}`);
    cluster.fork();
});

cluster.on('exit', (worker, code, signal) => {
    console.log(`Worker ${worker.process.pid} died`);
    console.log('worker iniciando');
    cluster.fork();
});
