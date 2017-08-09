# DOTA2HELPER

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

$ STEAM_API_KEY=C8AFB19A9F741B4400663C664B2023DB
$ export STEAM_API_KEY

heros < index.html.erb
<% @api.heroes.each do |h| %>
  <a href="heros/<%= h.id %>">
    <div class="hero">
      <img src="<%= h.image_url %>">
      <%= h.name %>
    </div>
  </a>
<% end %>
