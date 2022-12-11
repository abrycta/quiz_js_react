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

db.access = require('./access.js')(sequelize, Sequelize)
db.activity = require('./activity.js')(sequelize, Sequelize)
db.ans_idn = require('./ans_idn.js')(sequelize, Sequelize)
db.ans_mlt = require('./ans_mlt.js')(sequelize, Sequelize)
db.ans_mtc = require('./ans_mtc.js')(sequelize, Sequelize)
db.qst_idn = require('./qst_idn.js')(sequelize, Sequelize)
db.qst_mlt = require('./qst_mlt.js')(sequelize, Sequelize)
db.qst_mlt_choice = require('./qst_mlt_choice.js')(sequelize, Sequelize)
db.qst_mtc = require('./qst_mtc.js')(sequelize, Sequelize)
db.qst_mtc_left_col = require('./qst_mtc_left_col.js')(sequelize, Sequelize)
db.qst_mtc_right_col = require('./qst_mtc_right_col.js')(sequelize, Sequelize)
db.score = require('./score.js')(sequelize, Sequelize)
db.students = require('./student.js')(sequelize, Sequelize)

module.exports = {
    db
}