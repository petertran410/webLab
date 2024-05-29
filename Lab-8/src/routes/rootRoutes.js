import express from "express";
import { courseProgram } from "./courseProgram/courseProgramRoutes.js";
import { course } from "./course/courseRoutes.js";

export const rootRoute = express.Router();

rootRoute.use("/course-program", courseProgram);
rootRoute.use("/course", course);
