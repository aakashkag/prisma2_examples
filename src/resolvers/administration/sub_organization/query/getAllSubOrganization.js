const { queryField } = require('@nexus/schema');

const getAllSubOrganization = queryField('getAllSubOrganization', {
    type: 'Sub_Organization',
    list: true,

    resolve: async (parent, args, ctx) => {
        try {
            const sub_organization_data = await ctx.prisma.sub_Organization.findMany(
                {},
            );
            console.log('sub_organization_data==>', sub_organization_data);
            return sub_organization_data;
        } catch (err) {
            console.error('ERROR posts query: ', err);
            throw err;
        }
    },
});

module.exports = {
    getAllSubOrganization,
};
