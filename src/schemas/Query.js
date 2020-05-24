const { objectType } = require('@nexus/schema');
console.log('++++++++++++');
const Query = objectType({
    name: 'Query',
    definition(t) {
        // t.list.field('getallProfile', {
        //     type: 'Profile',
        //     resolve: (_, args, ctx) => {
        //         return ctx.prisma.profile.findMany({})
        //     },
        // }),

        t.list.field('getallOrganization', {
            type: 'Organization',
            resolve: (_, args, ctx) => {
                return ctx.prisma.organization.findMany({});
            },
        });
    },
});

module.exports = {
    Query,
};
