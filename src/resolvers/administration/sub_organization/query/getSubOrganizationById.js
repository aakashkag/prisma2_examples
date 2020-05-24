const { queryField, intArg } = require('@nexus/schema');

const getSubOrganizationById = queryField('getSubOrganizationById', {
    type: 'Sub_Organization',
    args: {
        sub_organization_id: intArg({ required: true }),
    },
    resolve: async (parent, args, ctx) => {
        try {
            const sub_organization = await ctx.prisma.sub_Organization.findOne({
                where: { sub_organization_id: args.sub_organization_id },
            });
            return sub_organization;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getSubOrganizationById,
};
