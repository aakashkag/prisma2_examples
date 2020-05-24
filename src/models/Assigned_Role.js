const { objectType } = require('@nexus/schema/dist/index');

const Assigned_Role = objectType({
    name: 'Assigned_Role',
    definition(t) {
        t.model.assigned_role_id();
        t.model.user_id();
        t.model.role_id();
        t.model.sub_organization_id();
        t.model.organization_id();
        t.model.User({
            pagination: false,
        });
        t.model.Role({
            pagination: false,
        });
        t.model.Organization({
            pagination: false,
        });
        t.model.Sub_Organization({
            pagination: false,
        });
    },
});

module.exports = {
    Assigned_Role,
};
