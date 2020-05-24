const { stringArg, arg, mutationField } = require('@nexus/schema/dist/index');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });

const createRole = mutationField('createRole', {
    type: 'Role',
    args: {
        role_name: stringArg({ nullable: false }),
    },
    resolve: (_, args, ctx) => {
        return ctx.prisma.role.create({
            data: args,
        });
    },
});

module.exports = {
    createRole,
};
