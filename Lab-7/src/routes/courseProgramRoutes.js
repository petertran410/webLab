import express from "express";
import { getCourseProgram } from "../controllers/courseProramController.js";

export const courseProgram = express.Router();
courseProgram.get("/get-course-program", getCourseProgram);
