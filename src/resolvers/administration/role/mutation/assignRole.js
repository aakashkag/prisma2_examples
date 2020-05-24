const { intArg, mutationField } = require('@nexus/schema');

const assignRole = mutationField('assignRole', {
    type: 'Assigned_Role',
    args: {
        user_id: intArg(),
        role_id: intArg(),
        organization_id: intArg(),
        sub_organization_id: intArg(),
    },
    resolve: (_, args, ctx) => {
        return ctx.prisma.assigned_Role.create({
            data: {
                Organization: {
                    connect: {
                        organization_id: args.organization_id,
                    },
                },
                Sub_Organization: {
                    connect: {
                        sub_organization_id: args.sub_organization_id,
                    },
                },
                User: {
                    connect: {
                        user_id: args.user_id,
                    },
                },
                Role: {
                    connect: {
                        role_id: args.role_id,
                    },
                },
            },
        });
    },
});

module.exports = {
    assignRole,
};
