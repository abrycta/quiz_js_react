const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Qst_mtc_left_col', {
        mtc_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        left_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        qst_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        ans: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        points: {
            type: DataTypes.INTEGER,
            allowNull: false,
        }
    })
}
