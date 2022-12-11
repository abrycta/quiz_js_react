const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Qst_mtc', {
        mtc_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    })
}
