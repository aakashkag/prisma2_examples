const {
    stringArg,
    intArg,
    arg,
    core,
    mutationField,
} = require('@nexus/schema');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });

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

        console.log('after===>', args);
        // return ctx.prisma.assigned_Role.create({
        //     data: args,
        // });
        const data = ctx.prisma.user.create({
            data: {
                Assigned_Role: {
                    create: {
                        user_id: {
                            create: {
                                user_id: 1,
                            },
                        },
                        role: {
                            create: {
                                role_id: 1,
                            },
                        },
                    },
                },
            },
        });
        console.log(data);
        return data;
    },
});

module.exports = {
    assignRole,
};
