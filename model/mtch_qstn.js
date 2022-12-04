const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Mtch_qstn', {
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        mtch_qstn_str: {
            type: DataTypes.STRING,
            allowNull: false,
            primaryKey: true
        },
        mtch_correct_answer: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    })
}
