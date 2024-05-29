import { responseData } from "../../config/response.js";
import initModels from "../../models/init-models.js";
import sequelize from "../../models/connect.js";

let model = initModels(sequelize);

export const getCourse = async (req, res) => {
  try {
    let data = await model.course.findAll();

    responseData(res, "Thành công", data, 200);
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};

export const createCourse = async (req, res) => {
  try {
    let newData = {
      course_id,
      course_level_id,
      name,
      name_vn,
      credit_theory,
      credit_lab,
      description,
    };

    let data = await model.course.create(newData);

    responseData(res, "Thành công", data, 200);
  } catch (error) {
    responseData(res, "Lỗi ...", "", 500);
  }
};

export const updataCourse = async (req, res) => {
  try {
    const { course_id } = req.params;
    let newData = {
      course_level_id,
      name,
      name_vn,
      credit_theory,
      credit_lab,
      description,
    };

    let data = await model.course.upload(newData.dataValues, {
      where: {
        course_id: course_id,
      },
    });
    responseData(res, "Thành công", data, 200);
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};

export const deleteCourse = async (req, res) => {
  try {
    const { course_id } = req.params;

    let data = await model.course.destroy({
      where: {
        course_id,
      },
    });
    responseData(res, "Thành công", data, 200);
  } catch {
    responseData(res, "Lỗi ...", "", 500);
  }
};
