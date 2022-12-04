const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Mlt_answr', {
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
        mlt_qstn_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        stud_choice: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    })
}
