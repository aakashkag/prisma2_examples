// ----------------------------------> Mutation (Organization) <--------------------------------------------------------
const {
    createOrganization,
} = require('./administration/orgnization/mutation/createOrganization');
const {
    deleteOrganization,
} = require('./administration/orgnization/mutation/deleteOrganization');
const {
    updateOrganization,
} = require('./administration/orgnization/mutation/updateOrganization');
// ----------------------------------> Query (Organization) <-----------------------------------------------------------
const {
    getAllOrganization,
} = require('./administration/orgnization/query/getAllOrganization');
const {
    getOrganizationById,
} = require('./administration/orgnization/query/getOrganizationById');

// ----------------------------------> Mutation (SubOrganization) <-----------------------------------------------------
const {
    createSubOrganization,
} = require('./administration/sub_organization/mutation/createSubOrganization');
const {
    updateSubOrganization,
} = require('./administration/sub_organization/mutation/updateSubOrganization');
// ----------------------------------> Query (SubOrganization) <--------------------------------------------------------
const {
    getAllSubOrganization,
} = require('./administration/sub_organization/query/getAllSubOrganization');
const {
    getSubOrganizationById,
} = require('./administration/sub_organization/query/getSubOrganizationById');

// ----------------------------------> Mutation (Role) <------------------------------------------------------------
const { createRole } = require('./administration/role/mutation/createRole');
const { assignRole } = require('./administration/role/mutation/assignRole');
// ----------------------------------> Query (Role) <---------------------------------------------------------------

// ----------------------------------> Mutation (User) <------------------------------------------------------------
const { createUser } = require('./user/mutation/createUser');
const { updateUser } = require('./user/mutation/updateUser');

// ----------------------------------> Query (createUser) <---------------------------------------------------------------
const { getAllUser } = require('./user/query/getAllUser');
const { getUserById } = require('./user/query/getUserById');

Mutation = {
    createOrganization,
    deleteOrganization,
    updateOrganization,

    createSubOrganization,
    updateSubOrganization,

    createRole,
    assignRole,

    createUser,
    updateUser,
};

Query = {
    getAllOrganization,
    getOrganizationById,

    getAllSubOrganization,
    getSubOrganizationById,

    getAllUser,
    getUserById,
};

module.exports = {
    Mutation: Mutation,
    Query: Query,
};
