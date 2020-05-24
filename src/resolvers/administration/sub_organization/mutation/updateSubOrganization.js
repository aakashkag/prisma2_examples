const { stringArg, intArg, mutationField } = require('@nexus/schema');

const updateSubOrganization = mutationField('updateSubOrganization', {
    type: 'Sub_Organization',
    args: {
        sub_organization_id: intArg({ required: true }),
        sub_organization_name: stringArg(),
        sub_organization_logo: stringArg(),
        sub_organization_size: intArg(),
        sub_organization_type: stringArg(),
        sub_organization_website: stringArg(),
        sub_organization_description: stringArg(),
    },
    resolve: (_, args, ctx) => {
        args.sub_organization_updated_at = new Date();
        return ctx.prisma.sub_Organization.update({
            where: { sub_organization_id: args.sub_organization_id },
            data: args,
        });
    },
});

module.exports = {
    updateSubOrganization,
};
