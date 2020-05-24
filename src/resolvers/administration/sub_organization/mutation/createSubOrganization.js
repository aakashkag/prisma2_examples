const { stringArg, intArg, arg, mutationField } = require('@nexus/schema');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });

const createSubOrganization = mutationField('createSubOrganization', {
    type: 'Sub_Organization',
    args: {
        sub_organization_name: stringArg({ nullable: false }),
        sub_organization_logo: stringArg({ nullable: false }),
        sub_organization_size: intArg(),
        sub_organization_type: stringArg(),
        sub_organization_website: stringArg(),
        sub_organization_description: stringArg(),
        sub_organization_created_at: dateTimeArg(),
        sub_organization_updated_at: dateTimeArg(),
        organization_id: intArg(),
    },
    resolve: (_, args, ctx) => {
        args['Organization'] = {
            connect: {
                organization_id: args.organization_id,
            },
        };
        delete args['organization_id'];
        return ctx.prisma.sub_Organization.create({ data: args });
    },
});

module.exports = {
    createSubOrganization,
};
