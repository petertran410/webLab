import axios from "axios";

export const BASE_URL = "http://localhost:8080";

export const getCourseAPI = async () => {
  const { data } = await axios.get(`${BASE_URL}/course/get-course`);

  return data.content;
};

export const createCourseAPI = async (formData) => {
  const { data } = await axios.post(
    `${BASE_URL}/course/create-course`,
    formData
  );

  return data.content;
};

export const updateCourseAPI = async (courseId) => {
  const { data } = await axios.put(
    `${BASE_URL}/course/update-course/${courseId}`
  );

  return data.content;
};

export const deleteCourseAPI = async (courseId) => {
  const { data } = await axios.delete(
    `${BASE_URL}/course/delete-course/${courseId}`
  );

  return data.content;
};
