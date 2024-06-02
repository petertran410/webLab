import React, { useState } from "react";

const updateCourse = () => {
  const [isFormVisible, setIsFormVisible] = useState(false);
  return (
    <div>
      {isFormVisible && (
        <>
          <div className="overlay" onClick={toggleFormVisibility}></div>
          <div className="form-container">
            <form className="registration-form" onSubmit={handleFormSubmit}>
              <div>
                <label htmlFor="id">ID:</label>
                <input type="text" id="id" name="id" />
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
                    .catch((err) => {
                      console.log(err);
                    });
                }}>
                Update
              </button>
            </form>
          </div>
        </>
      )}
    </div>
  );
};

export { updateCourse };
