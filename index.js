import express from 'express';


import {connectDB} from './DB/Modules/connection.js';
import userRouter from './Src/Modules/user/user.router.js';


const app = express()
const port = 3000

connectDB
app.use(express.json())
app.use(userRouter)






app.listen(port, () => console.log(`Example app listening on port ${port}!`))