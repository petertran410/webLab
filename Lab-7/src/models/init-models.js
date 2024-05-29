import _sequelize from "sequelize";
const DataTypes = _sequelize.DataTypes;
import _course from  "./course.js";
import _course_program from  "./course_program.js";
import _program from  "./program.js";

export default function initModels(sequelize) {
  const course = _course.init(sequelize, DataTypes);
  const course_program = _course_program.init(sequelize, DataTypes);
  const program = _program.init(sequelize, DataTypes);

  course.hasMany(course_program, { as: "course_programs", foreignKey: "course_id" });

  course_program.belongsTo(course, { as: "course", foreignKey: "course_id" });

  program.belongsTo(course, { as: "course", foreignKey: "course_id" });

  return {
    course,
    course_program,
    program,
  };
}
