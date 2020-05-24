const { queryField, intArg } = require('@nexus/schema');

const getUserById = queryField('getUserById', {
    type: 'User',
    args: {
        user_id: intArg({ required: true }),
    },
    resolve: async (parent, args, ctx) => {
        try {
            const user = await ctx.prisma.user.findOne({
                where: { user_id: args.user_id },
            });
            return user;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getUserById,
};
