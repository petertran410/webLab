import express from "express";
import {
  createCourse,
  deleteCourse,
  getCourse,
  updataCourse,
} from "../../controllers/course/courseController.js";

export const course = express.Router();
course.get("/get-course", getCourse);

course.post("/create-course", createCourse);

course.put("/update-course/:course_id", updataCourse);

course.delete("/delete-course/:course_id", deleteCourse);
