import { Sequelize } from 'sequelize'

export const sequelizeInstance = new Sequelize('test', 'root', 'root', {
  host: 'localhost',
  dialect: 'mysql',
});

export const connectDB =async()=>{
    return await sequelizeInstance.sync().then(()=>{
        console.log('DB Connected')
    });

};
