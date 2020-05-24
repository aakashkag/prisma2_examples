const Organization = require('./Organization');
const Sub_Organization = require('./Sub_Organization');
const User = require('./User');
const Role = require('./Role');
const Assigned_Role = require('./Assigned_Role');

const Models = [Sub_Organization, Organization, User, Role, Assigned_Role];

module.exports = {
    Models,
};
