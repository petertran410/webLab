import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class program extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id: {
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
      allowNull: true,
      references: {
        model: 'major',
        key: 'id'
      }
    },
    program_type_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'program_type',
        key: 'id'
      }
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
          { name: "id" },
        ]
      },
      {
        name: "FK_program_major",
        using: "BTREE",
        fields: [
          { name: "major_id" },
        ]
      },
      {
        name: "fk_program_program_type",
        using: "BTREE",
        fields: [
          { name: "program_type_id" },
        ]
      },
    ]
  });
  }
}
