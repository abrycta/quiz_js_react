const dbConfig = require('../config/db_config.js')
const Sequelize = require("sequelize")

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER,
    dbConfig.PASSWORD, {
        host: dbConfig.HOST,
        dialect: dbConfig.dialect,
        operatorsAliases: false,
    }
)

const db = {}

db.Sequelize = Sequelize
db.sequelize = sequelize

db.students = require('./student.js')(sequelize, Sequelize)
db.access = require('./access.js')(sequelize, Sequelize)
db.activity = require('./activity.js')(sequelize, Sequelize)
db.idnt_answer = require('./idnt_answer.js')(sequelize, Sequelize)
db.idnt_qstn = require('./idnt_qstn.js')(sequelize, Sequelize)
db.mlt_answr = require('./mlt_answr.js')(sequelize, Sequelize)
db.mlt_qstn = require('./mlt_qstn.js')(sequelize, Sequelize)

// Access
db.access.hasOne(db.students, {
    foreignKey: 'stud_id'
})
db.access.hasOne(db.activity,{
    foreignKey: 'act_id'
})

// Students
db.students.belongsTo(db.access)
db.students.belongsTo(db.idnt_answer)
db.students.belongsTo(db.mlt_answr)

// Activity
db.activity.belongsTo(db.access)
db.activity.belongsTo(db.idnt_answer)
db.activity.belongsTo(db.idnt_qstn)
db.activity.belongsTo(db.mlt_answr)

//

// Idnt_answer
db.idnt_answer.hasOne(db.activity,{
    foreignKey: 'act_id'
})
db.idnt_answer.hasOne(db.students,{
    foreignKey: 'stud_id'
})
db.idnt_answer.hasOne(db.idnt_qstn,{
    foreignKey: 'idnt_qstn_id'
})

// Idnt_qstn
db.idnt_qstn.hasOne(db.activity, {
    foreignKey: 'act_id'
})
db.activity.belongsTo(db.idnt_answer)

// Mlt_answer
db.mlt_answr.hasOne(db.activity, {
    foreignKey: 'act_id'
})
db.mlt_answr.hasOne(db.students, {
    foreignKey: 'stud_id'
})
db.mlt_answr.hasOne(db.mlt_qstn, {
    foreignKey: 'mlt_qstn_id'
})

// Mlt_qstn
db.mlt_qstn.hasOne(db.activity, {
    foreignKey: 'act_id'
})
db.mlt_qstn.belongsTo(db.mlt_answr)

module.exports = {
    db
}