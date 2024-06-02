import React, { useEffect, useState } from "react";
import "./formCourse.scss";
import {
  createCourseAPI,
  deleteCourseAPI,
  getCourseAPI,
} from "../utils/fetchFromAPI";

const FormCourse = () => {
  const [isFormVisible, setIsFormVisible] = useState(false);
  const [courses, setCourses] = useState();

  const [formData, setFormData] = useState([]);

  const toggleFormVisibility = () => {
    setIsFormVisible(!isFormVisible);
  };

  useEffect(() => {
    fetchCourses();
  }, []);

  const fetchCourses = async () => {
    try {
      const result = await getCourseAPI();
      setCourses(result);
    } catch (err) {
      console.log(err);
    }
  };

  const handleDelete = async (courseId) => {
    try {
      await deleteCourseAPI(courseId);
      await fetchCourses();
    } catch (err) {
      console.log(err);
    }
  };

  return (
    <div>
      <button
        id="btnThem"
        type="button"
        className="btn btn-warning mb-3 text-white"
        onClick={toggleFormVisibility}>
        Thêm
      </button>

      {isFormVisible && (
        <>
          <div className="overlay" onClick={toggleFormVisibility}></div>
          <div className="form-container">
            <form className="registration-form">
              <div>
                <label htmlFor="id">ID:</label>
                <input type="text" id="id" name="id" value={formData.id} />
              </div>
              <div>
                <label htmlFor="course_level_id">Course Level ID:</label>
                <input
                  type="text"
                  id="course_level_id"
                  name="course_level_id"
                />
              </div>
              <div>
                <label htmlFor="name">Name:</label>
                <input type="text" id="name" name="name" />
              </div>
              <div>
                <label htmlFor="name_vn">Name (VN):</label>
                <input type="text" id="name_vn" name="name_vn" />
              </div>
              <div>
                <label htmlFor="credit_theory">Credit Theory:</label>
                <input type="number" id="credit_theory" name="credit_theory" />
              </div>
              <div>
                <label htmlFor="credit_lab">Credit Lab:</label>
                <input type="number" id="credit_lab" name="credit_lab" />
              </div>
              <div>
                <label htmlFor="description">Description:</label>
                <textarea id="description" name="description"></textarea>
              </div>
              <button
                type="submit"
                onClick={() => {
                  let data = {
                    id: document.querySelector("#id").value,
                    course_level_id:
                      document.querySelector("#course_level_id").value,
                    name: document.querySelector("#name").value,
                    name_vn: document.querySelector("#name_vn").value,
                    credit_theory:
                      document.querySelector("#credit_theory").value,
                    credit_lab: document.querySelector("#credit_lab").value,
                    description: document.querySelector("#description").value,
                  };

                  createCourseAPI(data)
                    .then((result) => {
                      getCourseAPI()
                        .then((result) => {
                          setFormData(result);
                        })
                        .catch((err) => {
                          console.log(err);
                        });
                    })
                    .catch((err) => {});
                }}>
                Thêm
              </button>
            </form>
          </div>
        </>
      )}

      <table className="table" border={2}>
        <thead>
          <tr>
            <th>id</th>
            <th>Course Level Id</th>
            <th>Name</th>
            <th>Name Vn</th>
            <th>Credit Theory</th>
            <th>Credit Lab</th>
            <th>Description</th>
            <th>Update</th>
            <th>Xoá</th>
          </tr>
        </thead>
        <tbody>
          {courses &&
            courses.map((item, idx) => {
              return (
                <tr key={idx}>
                  <td>{item.id}</td>
                  <td>{item.course_level_id}</td>
                  <td>{item.name}</td>
                  <td>{item.name_vn}</td>
                  <td>{item.credit_theory}</td>
                  <td>{item.credit_lab}</td>
                  <td>{item.description}</td>
                  <td>
                    <button className="btn btn-warning text-white">
                      Update
                    </button>
                  </td>
                  <td>
                    <button
                      className="btn btn-warning text-white"
                      onClick={() => handleDelete(item.id)}>
                      Xoá
                    </button>
                  </td>
                </tr>
              );
            })}
        </tbody>
      </table>
    </div>
  );
};

export default FormCourse;
