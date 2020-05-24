const { stringArg, intArg, arg, mutationField } = require('@nexus/schema');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });

const createOrganization = mutationField('createOrganization', {
    type: 'Organization',
    args: {
        organization_name: stringArg({ nullable: false }),
        organization_description: stringArg(),
        organization_logo: stringArg(),
        organization_website: stringArg(),
        organization_type: stringArg(),
        organization_size: intArg(),
        organization_created_at: dateTimeArg(),
        organization_updated_at: dateTimeArg(),
    },
    resolve: (_, args, ctx) => {
        return ctx.prisma.organization.create({
            data: args,
        });
    },
});

module.exports = {
    createOrganization,
};
