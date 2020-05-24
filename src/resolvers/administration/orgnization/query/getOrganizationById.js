const { queryField, intArg } = require('@nexus/schema');

const getOrganizationById = queryField('getOrganizationById', {
    type: 'Organization',
    nullable: true,
    args: {
        organization_id: intArg({ required: true }),
    },
    resolve: async (parent, args, ctx) => {
        try {
            const organization = await ctx.prisma.organization.findOne({
                where: { organization_id: args.organization_id },
            });
            organization.test = 'Hi';
            return organization;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getOrganizationById,
};
