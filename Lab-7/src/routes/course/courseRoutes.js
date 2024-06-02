import express from "express";
import {
  createCourse,
  deleteCourse,
  getCourse,
  updateCourse,
} from "../../controllers/course/courseController.js";

export const course = express.Router();
course.get("/get-course", getCourse);

course.post("/create-course", createCourse);

course.put("/update-course/:course_id", updateCourse);

course.delete("/delete-course/:course_id", deleteCourse);
