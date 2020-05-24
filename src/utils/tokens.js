const jwt = require('jsonwebtoken');
const JWT_SECRET = 'xzdksdmmlk';

const generateLoginToken = async (userDetails) => {
    return await jwt.sign(userDetails, JWT_SECRET);
};

exports.generateLoginToken = generateLoginToken;
