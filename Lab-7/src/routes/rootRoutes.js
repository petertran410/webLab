import express from "express";
import { courseProgram } from "./courseProgramRoutes.js";

export const rootRoute = express.Router();

rootRoute.use("/course-program", courseProgram);