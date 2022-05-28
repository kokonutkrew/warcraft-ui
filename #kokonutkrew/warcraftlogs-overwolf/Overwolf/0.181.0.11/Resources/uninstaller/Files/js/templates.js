let Templates = {
  app:
  "    <input hidden type='checkbox' name='app-list' id='app-{{appId}}'>" +
  "      <label for='app-{{appId}}'>" +
  "        <div class='featured-app'>" +
  "          <div class='app-icon-wrapper'>" +
  "            <div class='app-icon app-icon-with-background'>" +
  "              <img src='{{icon}}' class='app-icon-image' alt=''>" +
  "            </div>" +
  "            <img src='images/subscription-bubblicon.svg' class='subscription-bubblicon {{active}}' alt=''>" +
  "          </div>" +
  "          <div class='app-description' id='app-description-{{appId}}'>" +
  "            <h2>{{appName}}</h2>" +
  "            <p>{{subtitle}}</p>" +
  "          </div>" +
  "        </div>" +
  "        <b></b>" +
  "      </label>"
};