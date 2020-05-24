const { objectType } = require('@nexus/schema/dist/index');

const Sub_Organization = objectType({
    name: 'Sub_Organization',
    definition(t) {
        t.model.sub_organization_id();
        t.model.sub_organization_name();
        t.model.sub_organization_description();
        t.model.sub_organization_logo();
        t.model.sub_organization_size();
        t.model.sub_organization_website();
        t.model.sub_organization_created_at();
        t.model.sub_organization_updated_at();
    },
});

module.exports = {
    Sub_Organization,
};
