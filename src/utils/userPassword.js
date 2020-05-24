const bcrypt = require('bcryptjs');

const encryptPassword = async (myPlaintextPassword) => {
    const saltRounds = 10;
    return await bcrypt.hash(myPlaintextPassword, saltRounds);
};

const comparePassword = async (myPlaintextPassword, hash) => {
    const comparePassword = await bcrypt.compare(myPlaintextPassword, hash);
    return comparePassword;
};

exports.encryptPassword = encryptPassword;
exports.comaprePassword = comparePassword;
