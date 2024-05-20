import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class program extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    program_id: {
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
          { name: "program_id" },
        ]
      },
    ]
  });
  }
}
