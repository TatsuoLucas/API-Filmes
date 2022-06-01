import 'dotenv/config'

import usuarioController from './controller/usuarioController.js'
import filmeController  from './controller/filmeController.js'

import express from 'express'
import cors from 'cors'

const server = express();
server.use(cors());
server.use(express.json());
//Liberar para a Rota da strorage
server.use('/storage/capaFilmes', express.static('storage/capasFilmes'));


//configuração dos EndPoints
server.use(usuarioController);  
server.use(filmeController);



server.listen(process.env.PORT, ()=> console.log(`API conectada na porta ${process.env.PORT }`))