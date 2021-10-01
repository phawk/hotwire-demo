// Entry point for the build script in your package.json
import Rails from "@rails/ujs";
import "@hotwired/turbo-rails";
import * as ActiveStorage from "@rails/activestorage";
import "./channels";
import "./controllers";

Rails.start();
ActiveStorage.start();
