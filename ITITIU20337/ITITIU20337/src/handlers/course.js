import { pool } from "../db/index.js";

export const getAllCourses = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM course");
    res.json(rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
};

export const createCourse = async (req, res) => {
  const { id, course_level_id, name, name_vn, credit_theory, credit_lab, description } = req.body;
  try {
    const [result] = await pool.query(
      "INSERT INTO course (id, course_level_id, name, name_vn, credit_theory, credit_lab, description) VALUES (?, ?, ?, ?, ?, ?, ?)",
      [id, course_level_id, name, name_vn, credit_theory, credit_lab, description]
    );
    res.status(201).json({ id: result.insertId });
  } catch (error) {
    res.status(500).send(error.message);
  }
};


export const updateCourse = async (req, res) => {
  const { id } = req.params;
  const { course_level_id, name, name_vn, credit_theory, credit_lab, description } = req.body;
  try {
    await pool.query(
      "UPDATE course SET course_level_id = ?, name = ?, name_vn = ?, credit_theory = ?, credit_lab = ?, description = ? WHERE id = ?",
      [course_level_id, name, name_vn, credit_theory, credit_lab, description, id]
    );
    res.sendStatus(204);
  } catch (error) {
    res.status(500).send(error.message);
  }
};

export const deleteCourse = async (req, res) => {
  const { id } = req.params;
  try {
    await pool.query("DELETE FROM course WHERE id = ?", [id]);
    res.sendStatus(204);
  } catch (error) {
    res.status(500).send(error.message);
  }
};
