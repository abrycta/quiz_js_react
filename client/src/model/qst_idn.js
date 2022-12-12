const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Qst_idn', {
        qst_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        qst_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        qst_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        ans_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        points: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    })
}
