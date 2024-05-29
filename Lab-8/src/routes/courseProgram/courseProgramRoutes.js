import express from "express";
import { createCourseProgram, getCourseProgram } from "../../controllers/courseProgram/courseProramController.js";

export const courseProgram = express.Router();
courseProgram.get("/get-course-program", getCourseProgram);

courseProgram.post("/create-course-program", createCourseProgram)


