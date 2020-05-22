import "../stylesheets/application.scss";

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("bootstrap")

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
