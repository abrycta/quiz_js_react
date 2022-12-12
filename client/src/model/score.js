const { DataTypes, Sequelize} = require("sequelize")
const sequelize = require("./db_model.js")

module.exports = (sequelize, Sequelize) => {
    return sequelize.define('Score', {
        score_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        act_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        stud_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        idn_score: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        mlt_score: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        mtc_score: {
            type: DataTypes.INTEGER,
            allowNull: false,
        }
    })
}
