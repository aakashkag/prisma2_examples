const { stringArg, queryField } = require('@nexus/schema/dist/index');
const { userPassword, tokens } = require('../../../utils');

const loginUser = queryField('loginUser', {
    type: 'User',
    args: {
        user_email: stringArg(),
        user_password: stringArg(),
    },
    resolve: async (parent, args, ctx) => {
        try {
            const user = await ctx.prisma.user.findOne({
                where: { user_email: args.user_email },
            });
            const isPasswordMatch = userPassword.comaprePassword(
                args.user_password,
                user.user_password,
            );
            const loginToken = await tokens.generateLoginToken(args);
            console.log('loginToken==>', loginToken);
            user['loginToken'] = loginToken;
            console.log('user==>', user);
            return user;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    loginUser,
};
