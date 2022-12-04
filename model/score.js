const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Score', {
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
        mlt_scr: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        id_scr: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        mtch_scr: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        }
    })
}
