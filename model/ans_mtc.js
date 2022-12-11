const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Ans_mtc', {
        ans_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        mtc_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        left_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        right_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    })
}
