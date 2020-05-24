const { ApolloServer } = require('apollo-server');
const { schema } = require('./schema');
const { createContext } = require('./context');
//const config = require('../config');
//console.log('conf==.', config);
console.log('process.env.==>', process.env.web);
new ApolloServer({ schema, context: createContext }).listen(
    { port: 4000 },
    () => console.log('Server ready at: http://localhost:4000\n'),
);
