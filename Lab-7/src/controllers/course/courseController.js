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
  const {
    id,
    course_level_id,
    name,
    name_vn,
    credit_theory,
    credit_lab,
    description,
  } = req.body;

  if (
    !id ||
    !course_level_id ||
    !name ||
    !name_vn ||
    !credit_theory ||
    !credit_lab ||
    !description
  ) {
    return responseData(res, "Missing fields", null, 501);
  }

  let checkId;
  try {
    checkId = await model.course.findOne({
      where: {
        id,
      },
    });
  } catch (error) {
    return responseData(res, "Database error during ID check", "", 500);
  }

  if (checkId) {
    return responseData(res, "Id đã tồn tại", "", 400);
  }

  try {
    const newData = {
      id,
      course_level_id,
      name,
      name_vn,
      credit_theory,
      credit_lab,
      description,
    };
    const data = await model.course.create(newData);
    return responseData(res, "Thành công", data, 200);
  } catch (error) {
    return responseData(res, "Lỗi ...", error.message, 500);
  }
};

// export const updataCourse = async (req, res) => {
//   try {
//     const { id } = req.params;
//     let newData = {
//       course_level_id,
//       name,
//       name_vn,
//       credit_theory,
//       credit_lab,
//       description,
//     };

//     let data = await model.course.upload(newData.dataValues, {
//       where: {
//         id: id,
//       },
//     });
//     responseData(res, "Thành công", data, 200);
//   } catch {
//     responseData(res, "Lỗi ...", "", 500);
//   }
// };

export const updateCourse = async (req, res) => {
  try {
    const { course_id } = req.params;
    const {
      course_level_id,
      name,
      name_vn,
      credit_theory,
      credit_lab,
      description,
    } = req.body;

    if (
      !course_level_id ||
      !name ||
      !name_vn ||
      !credit_theory ||
      !credit_lab ||
      !description
    ) {
      return responseData(res, "Missing required fields", null, 400);
    }

    const newData = {
      course_level_id,
      name,
      name_vn,
      credit_theory,
      credit_lab,
      description,
    };

    let data = await model.course.update(newData, {
      where: {
        id: course_id,
      },
    });

    responseData(res, "Thành công", data, 200);
  } catch (error) {
    responseData(res, "Lỗi ...", error.message, 500);
  }
};

export const deleteCourse = async (req, res) => {
  try {
    const { course_id } = req.params;

    let data = await model.course.destroy({
      where: {
        id: course_id,
      },
    });

    if (data === 0) {
      return responseData(res, "Course not found", null, 404);
    }

    responseData(res, "Thành công", data, 200);
  } catch (error) {
    responseData(res, "Lỗi ...", error.message, 500);
  }
};
