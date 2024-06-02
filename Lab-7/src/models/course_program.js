import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class course_program extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id: {
      type: DataTypes.STRING(255),
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'course',
        key: 'id'
      }
    },
    program_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'program',
        key: 'id'
      }
    },
    course_code: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    course_type_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'course_type',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'course_program',
    timestamps: false,
    indexes: [
      {
        name: "Key",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
          { name: "program_id" },
        ]
      },
      {
        name: "FK_CourseProgram_CourseType",
        using: "BTREE",
        fields: [
          { name: "course_type_id" },
        ]
      },
      {
        name: "FK_CourseProgram_Program",
        using: "BTREE",
        fields: [
          { name: "program_id" },
        ]
      },
    ]
  });
  }
}
