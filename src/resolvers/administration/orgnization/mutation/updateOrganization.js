const { stringArg, intArg, mutationField } = require('@nexus/schema');

const updateOrganization = mutationField('updateOrganization', {
    type: 'Organization',
    args: {
        organization_id: intArg({ required: true }),
        organization_name: stringArg(),
        organization_description: stringArg(),
        organization_logo: stringArg(),
        organization_website: stringArg(),
        organization_type: stringArg(),
        organization_size: intArg(),
    },
    resolve: (_, args, ctx) => {
        args.organization_updated_at = new Date();
        return ctx.prisma.organization.update({
            where: { organization_id: args.organization_id },
            data: args,
        });
    },
});

module.exports = {
    updateOrganization,
};
