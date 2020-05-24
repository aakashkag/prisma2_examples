const { objectType } = require('@nexus/schema/dist/index');

const Role = objectType({
    name: 'Role',
    definition(t) {
        t.model.role_id();
        t.model.role_name();
    },
});

module.exports = {
    Role,
};
