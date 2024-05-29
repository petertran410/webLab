import { responseData } from "../../config/response.js";
import initModels from "../../models/init-models.js";
import sequelize from "../../models/connect.js";

let model = initModels(sequelize);

export const getCourseProgram = async (req, res) => {
  try {
    let data = await model.course_program.findAll();

    responseData(res, "Thành công", data, 200);
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};

export const createCourseProgram = async (req, res) => {
  try {
    let newData = {
      course_id,
      program_id,
      course_code,
      course_type_id,
    };

    let data = await model.course_program.create(newData);
    responseData(res, "Thành công", data, 200);
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};

export const updataCourseProgram = async (req, res) => {
  try {
    let newData = {
      course_id,
      program_id,
      course_code,
      course_type_id,
    };

    let data = await model.course_program.upload(newData.dataValues, {
      where: {
        course_id: course_id,
      },
    });
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};
