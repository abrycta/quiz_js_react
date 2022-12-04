const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Access', {
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        date_taken: {
            type: DataTypes.DATE,
            allowNull: false,
        },
        date_open: {
            type: DataTypes.DATE,
            allowNull: false,
        },
    })
}
