const { nexusPrismaPlugin } = require('nexus-prisma');
const { makeSchema } = require('@nexus/schema');
const { join } = require('path');
const { Models } = require('./models');
const { Mutation, Query } = require('./resolvers');

const schema = makeSchema({
    types: [Query, Mutation, Models],
    plugins: [nexusPrismaPlugin()],
    outputs: {
        schema: join(__dirname, '/generated/schema.graphql'),
        typegen: join(__dirname, '/generated/nexus.ts'),
    },
    typegenAutoConfig: {
        contextType: 'Context.Context',
        sources: [
            {
                source: '.prisma/client',
                alias: 'prisma',
            },
            {
                source: require.resolve('./context'),
                alias: 'Context',
            },
        ],
    },
});

module.exports = {
    schema,
};
