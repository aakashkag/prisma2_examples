const { queryField } = require('@nexus/schema');

const getAllUser = queryField('getAllUser', {
    type: 'User',
    list: true,
    resolve: async (parent, args, ctx) => {
        try {
            const users = await ctx.prisma.user.findMany({});
            return users;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getAllUser,
};
