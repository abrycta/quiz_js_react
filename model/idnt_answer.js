const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Idnt_answer', {
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        idnt_question_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        answer: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    })
}
