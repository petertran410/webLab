import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class course extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    course_id: {
      type: DataTypes.STRING(255),
      allowNull: false,
      primaryKey: true
    },
    course_level_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    name: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    name_vn: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    credit_theory: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    credit_lab: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'course',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "course_id" },
        ]
      },
      {
        name: "FK_Course_CourseLevel",
        using: "BTREE",
        fields: [
          { name: "course_level_id" },
        ]
      },
    ]
  });
  }
}
