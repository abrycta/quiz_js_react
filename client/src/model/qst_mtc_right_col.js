const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Access', {
        mtc_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        right_index: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        ans_str: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    })
}
