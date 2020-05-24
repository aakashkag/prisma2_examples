const { stringArg, intArg, arg, mutationField } = require('@nexus/schema');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });

const updateUser = mutationField('updateUser', {
    type: 'User',
    args: {
        user_id: intArg({ required: true }),
        user_first_name: stringArg(),
        user_last_name: stringArg(),
        user_name: stringArg(),
        user_email: stringArg(),
        user_gender: stringArg(),
        user_biography: stringArg(),
        user_language: intArg(),
        user_mobile: intArg(),
        user_avatar: stringArg(),
        user_time_zone: dateTimeArg(),
        user_password: stringArg(),
        user_birthday: dateTimeArg(),
    },
    resolve: async (_, args, ctx) => {
        return ctx.prisma.user.update({
            where: { user_id: args.user_id },
            data: args,
        });
    },
});

module.exports = {
    updateUser,
};
