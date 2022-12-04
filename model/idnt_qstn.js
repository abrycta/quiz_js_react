const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Idnt_qstn', {
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        idnt_question_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        qstn_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        correct_answer: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        points: {
            type: DataTypes.INTEGER,
            allowNull: false,
        }
    })
}
