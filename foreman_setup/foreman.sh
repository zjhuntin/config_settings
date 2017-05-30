#!/bin/bash

cp ~/config_settings/foreman_setup/pry_gems ~/foreman/bundler.d/katello.local.rb

cd ~/foreman

bundle install
