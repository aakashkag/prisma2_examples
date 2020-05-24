const { queryField, stringArg } = require('@nexus/schema');

const getAllOrganization = queryField('getAllOrganization', {
    type: 'Organization',
    nullable: true,
    list: true,
    args: {
        searchString: stringArg({ nullable: true }),
    },
    resolve: async (parent, args, ctx) => {
        try {
            const organizations = await ctx.prisma.organization.findMany({});
            return organizations;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getAllOrganization,
};
