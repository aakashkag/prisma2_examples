const {
    stringArg,
    intArg,
    booleanArg,
    arg,
    mutationField,
} = require('@nexus/schema');
const dateTimeArg = (opts) => arg({ ...opts, type: 'DateTime' });
const { userPassword } = require('../../../utils');

const createUser = mutationField('createUser', {
    type: 'User',
    args: {
        user_first_name: stringArg({ nullable: false }),
        user_last_name: stringArg({ nullable: false }),
        user_name: stringArg({ nullable: false }),
        user_email: stringArg(),
        user_email_verified: booleanArg(),
        user_gender: stringArg(),
        user_biography: stringArg(),
        user_mobile: intArg(),
        user_mobile_verified: booleanArg(),
        user_active_status: booleanArg(),
        user_avatar: stringArg(),
        user_time_zone: dateTimeArg(),
        user_password: stringArg(),
        user_birthday: dateTimeArg(),
    },
    resolve: async (_, args, ctx) => {
        return await ctx.prisma.user.create({
            data: args,
        });
    },
});

module.exports = {
    createUser,
};
