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
        args['user'] = {
            connect: {
                user_id: args.user_id,
            },
        };
        args['role'] = {
            connect: {
                role_id: args.role_id,
            },
        };

        delete args['user_id'];
        delete args['role_id'];

        return ctx.prisma.assigned_Role.create({
            data: args,
        });
    },
});

module.exports = {
    assignRole,
};
