const { objectType } = require('@nexus/schema/dist/index');

const User = objectType({
    name: 'User',
    definition(t) {
        t.model.user_id();
        t.model.user_first_name();
        t.model.user_last_name();
        t.model.user_name();
        t.model.user_email();
        t.model.user_email_verified();
        t.model.user_password();
        t.model.user_gender();
        t.model.user_avatar();
        t.model.user_biography();
        t.model.user_birthday();
        t.model.user_mobile();
        t.model.user_mobile_verified();
        t.model.user_time_zone();
        t.model.user_active_status();
    },
});

module.exports = {
    User,
};
