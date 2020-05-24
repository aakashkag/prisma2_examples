const { intArg, mutationField } = require('@nexus/schema');

const deleteOrganization = mutationField('deleteOrganization', {
    type: 'Organization',
    args: {
        organization_id: intArg(),
    },
    resolve: (_, { organization_id }, ctx) => {
        return ctx.prisma.organization.delete({
            where: { organization_id: organization_id },
        });
    },
});

module.exports = {
    deleteOrganization,
};
