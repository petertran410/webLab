import { Router } from "express";
import { getAllCourses, createCourse, updateCourse, deleteCourse } from "../handlers/course.js";

const router = Router();

router.get("/", getAllCourses);
router.post("/create", createCourse);
router.put("/update/:id", updateCourse);
router.delete("/delete/:id", deleteCourse);

export default router;
