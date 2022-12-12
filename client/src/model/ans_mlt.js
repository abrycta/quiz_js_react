const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Ans_mlt', {
        qst_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        choice_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    })
}
