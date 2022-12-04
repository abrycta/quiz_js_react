const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('mlt_qstn', {
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
        mlt_qstn_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        choice_num: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        correct_choice: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    })
}
