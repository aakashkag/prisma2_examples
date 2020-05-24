const { objectType } = require('@nexus/schema/');

const Organization = objectType({
    name: 'Organization',
    definition(t) {
        t.model.organization_id();
        t.model.organization_name();
        t.model.organization_description();
        t.model.organization_logo();
        t.model.organization_size();
        t.model.organization_created_at();
        t.model.organization_updated_at();
        t.model.organization_website();
        t.model.Sub_Organization({
            pagination: false,
        });
    },
});

module.exports = {
    Organization,
};
