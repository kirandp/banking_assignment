// const { environment } = require('@rails/webpacker')

// module.exports = environment
const {environment} = require('@rails/webpacker')
// const customConfig = require('bootstrap-datetimepicker.npm');
const webpack = require('webpack')

environment.plugins.append('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        moment: 'moment/moment',
        Popper: ['popper.js', 'default'],
        // bd: 'bootstrap-datetimepicker.npm'
        datetimepicker: 'bootstrap-datetimepicker-npm/js/bootstrap-datetimepicker.js'
    })
)
// environment.config.merge(customConfig);
module.exports = environment

