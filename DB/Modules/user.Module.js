///////////////////////(user.Module.js)\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
import { DataTypes } from 'sequelize'
import { sequelizeInstance } from './connection.js'


export const User = sequelizeInstance.define(
    'user',
    {
      id: {
        type: DataTypes.INTEGER(11),
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: DataTypes.STRING(55),
        unique: true,
      },
      email: {
        type: DataTypes.STRING(55),
        unique: true,
      },
      password: {
        type: DataTypes.STRING(55),
        allowNull: false,
      },
      age:{ 
        type:DataTypes.INTEGER,
    },
  });
  