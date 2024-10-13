import { Router } from 'express';
import {addUser, deleteUser, getAllUsers, searchUsers, searchUserAge, updateUser, getUsersByIds, getOldestUsers } from './user.controller.js';

export const router = Router();

router.post('/user', addUser);
router.get('/user', getAllUsers );
router.patch('/user/:id',updateUser);
router.delete('/user/:id',deleteUser);
router.get('/searchUsers',searchUsers);
router.get('/searchUserAge',searchUserAge)
router.get('/getOldestUsers ',getOldestUsers)
router.get('/getUsersByIds',getUsersByIds)
export default router;

