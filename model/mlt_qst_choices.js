const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Mlt_qstn_choices', {
        mlt_qstn_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        choice_num: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        choice_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        choice_correct: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    })
}
