import { User } from "../../../DB/Modules/user.Module.js";
import { Op } from "sequelize";



// >>>>>>>>>>>>>>>>>>>>>>(Add User )<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
export const addUser = async (req, res, next) => {
  const { name, email, password,age } = req.body

  try {
    const user = await User.create({ name, email, password,age })
    res.json({ message: 'Added done', User: user })
  } catch (error) {
    res.json({ message: 'Added Fail', error })
  }
}


// >>>>>>>>>>>>>>>>>>>>>>(Get AllUsers)<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export const getAllUsers = async (req, res, next) => {
  const users = await User.findAll()
  res.json({ message: 'Done', users })

}

// >>>>>>>>>>>>>>>>>>>>>>(Update User)<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export const updateUser = async (req, res, next) => {
  const { id } = req.params;
  const {name, email, password,age } = req.body;
  const results = await User.update(
    {name, email, password,age },{
      where:{
        id,
      },
    }
  );
  if (results === 0) {
    return res.json({
      success: false,
      message: 'User not found'
    });
  } else {
    return res.json({
      success: true,
      message: 'User deleted successfully'
    });
  }
}

// >>>>>>>>>>>>>>>>>>>>>>(Delete User )<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export const deleteUser = async (req, res, next) => {
  const { id } = req.params;
  const results = await User.destroy({
      where:{
        id,
      },
    }
  );
  if(results[0]===0){
    return res.json({
      success:false , message: 'User not found',
    })
  }
  else{
    return res.json({
      success:true,
      message: 'user deleted successfully',
    })}


};

// >>>>>( search for user where his name start with "a" 
// and age less than 30 => using like for characters)<<<<<<<

export const searchUsers = async (req, res, next) => {
  const result = await User.findAll({
      where: {
          [Op.and]: [{ name: { [Op.like]: "a%"} }, { age: { [Op.lt]: 30 } }]
      }

  });
  if (result== 0) {
      return res.json({ success: false, Message: "user not found"})
  }
  return res.json({ success: true, result })
}


// >>>>>(search for user where his age is between 20 and 30 )<<<<<<<


export const searchUserAge= async (req, res, next) => {
  const result = await User.findAll({
      where: {
          age: { [Op.between]: [20, 30] }
      }

  }
  );
  if (result== 0) {
      return res.json({ success: false, Message: "user not found"})
  }
  return res.json({ success: true, result })

}

// >>>>>>>>>>>>>>>>>>>>>>(get the 3 oldest users)<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export const getOldestUsers = async (req, res, next) => {
  const result = await User.findAll({
      order: [['age', 'DESC']],
      limit: 3
  });
  if (result== 0) {
      return res.json({ success: false, Message: "user not found"})
  }
  return res.json({ success: true, result })
}

// >>>>>>>>>>>>>>>>>>>>>>(search for users by list of ids => using IN)<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


export const getUsersByIds = async (req, res, next) => {
  const { ids } = req.body;

  try {
    const user = await User.findAll({
      where: {
        id: {
          [Op.in]: [1, 2] ,
        },
      },
    });

    res.json({ message: 'Done', user });
  } catch (error) {
    res.json({ message: 'Failed to search users by IDs', error });
  }
};


