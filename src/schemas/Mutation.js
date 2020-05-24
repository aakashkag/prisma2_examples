const { objectType, stringArg, intArg } = require('@nexus/schema');

const Mutation = objectType({
    name: 'Mutation',
    /* Organization */

    definition(t) {
        //t.crud.createOneOrganization({ alias: 'createOrganization' })
        t.field('createOneOrganization', {
            type: 'Organization',
            args: {
                organization_name: stringArg({ nullable: false }),
                organization_description: stringArg(),
                organization_logo: stringArg(),
                organization_website: stringArg(),
                organization_type: stringArg(),
                organization_size: intArg(),
            },
            resolve: (
                _,
                {
                    organization_name,
                    organization_description,
                    organization_logo,
                    organization_website,
                    organization_type,
                    organization_size,
                },
                ctx,
            ) => {
                return ctx.prisma.organization.create({
                    data: {
                        organization_name,
                        organization_description,
                        organization_logo,
                        organization_website,
                        organization_type,
                        organization_size,
                    },
                });
            },
        });
    },

    // definition(t) {
    //     //t.crud.createOneProfile({ alias: 'createProfileDemo' })
    //     t.field('createOneProfile', {
    //         type: 'Profile',
    //         args: {
    //             bio: stringArg({ nullable: false }),
    //             userId: intArg()
    //         },
    //         resolve: (_, { bio, userId }, ctx) => {
    //             return ctx.prisma.profile.create({
    //                 data: {
    //                     bio,
    //                     userId
    //                 },
    //             })
    //         },
    //     })
    // }
});

module.exports = {
    Mutation,
};
