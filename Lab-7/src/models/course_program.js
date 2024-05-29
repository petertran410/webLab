import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class course_program extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    course_id: {
      type: DataTypes.STRING(255),
      allowNull: false,
      primaryKey: true
    },
    program_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    course_code: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    course_type_id: {
      type: DataTypes.INTEGER,
      allowNull: false
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
          { name: "course_id" },
          { name: "program_id" },
        ]
      },
    ]
  });
  }
}
