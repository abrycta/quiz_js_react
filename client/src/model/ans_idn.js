const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Ans_idn', {
        ans_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        qst_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        ans_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    })
}
