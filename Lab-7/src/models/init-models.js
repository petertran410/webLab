import _sequelize from "sequelize";
const DataTypes = _sequelize.DataTypes;
import _course from  "./course.js";
import _course_program from  "./course_program.js";
import _program from  "./program.js";

export default function initModels(sequelize) {
  const course = _course.init(sequelize, DataTypes);
  const course_program = _course_program.init(sequelize, DataTypes);
  const program = _program.init(sequelize, DataTypes);

  course_program.belongsTo(course, { as: "id_course", foreignKey: "id"});
  course.hasMany(course_program, { as: "course_programs", foreignKey: "id"});
  // course_program.belongsTo(course_type, { as: "course_type", foreignKey: "course_type_id"});
  // course_type.hasMany(course_program, { as: "course_programs", foreignKey: "course_type_id"});
  // program.belongsTo(major, { as: "major", foreignKey: "major_id"});
  // major.hasMany(program, { as: "programs", foreignKey: "major_id"});
  course_program.belongsTo(program, { as: "program", foreignKey: "program_id"});
  program.hasMany(course_program, { as: "course_programs", foreignKey: "program_id"});
  // program.belongsTo(program_type, { as: "program_type", foreignKey: "program_type_id"});
  // program_type.hasMany(program, { as: "programs", foreignKey: "program_type_id"});

  return {
    course,
    course_program,
    program,
  };
}
