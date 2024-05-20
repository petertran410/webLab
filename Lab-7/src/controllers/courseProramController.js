import { responseData } from "../config/response.js";
import initModels from "../models/init-models.js";
import sequelize from "../models/connect.js";

let model = initModels(sequelize);

export const getCourseProgram = async (req, res) => {
  // try {
    let data = await model.course_program.findAll();

    responseData(res, "Thành công", data, 200);
  // } catch {
  //   responseData(res, "Lỗi ...", "", 500);
  // }
};
