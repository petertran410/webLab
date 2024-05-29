import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class program extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    course_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    duration: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    version: {
      type: DataTypes.STRING(4),
      allowNull: true
    },
    major_id: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    program_type_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    valid_from: {
      type: DataTypes.STRING(255),
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'program',
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
    ]
  });
  }
}
