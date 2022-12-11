const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Qst_mlt_choice', {
        qst_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        choice_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        choice_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    })
}
