exports.config =
  modules:
    wrapper: false
    definition: false

  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\/js/,
        'js/vendor.js': /^vendor/
      order:
        before: [
          'vendor/js/handlebars.runtime-v1.1.2.js',
          'vendor/js/mootools-core-1.4.5-full-nocompat.js',
          'vendor/js/mootools-more-1.4.0.1.js'
        ]
      pluginHelpers: 'js/vendor.js'

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'css/app.css': /^app\/scss/

    templates:
      joinTo: 'js/templates.js'

  overrides:
    production:
      optimize: true
      sourceMaps: false
      plugins: autoReload: enabled: false
      paths:
        public: 'out'