var config = require('./ghost/current/core/server/config'),
    ghostVersion = require('./ghost/current/core/server/utils/ghost-version');

/**
 * knex-migrator can be used via CLI or within the application
 * when using the CLI, we need to ensure that our global overrides are triggered
 */
require('./ghost/current/core/server/overrides');

module.exports = {
    currentVersion: ghostVersion.safe,
    database: config.get('database'),
    migrationPath: config.get('paths:migrationPath')
};
