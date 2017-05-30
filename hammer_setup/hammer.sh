#!/bin/bash

git clone https://github.com/Katello/hammer-cli-katello.git
git clone https://github.com/theforeman/hammer-cli.git
git clone https://github.com/theforeman/hammer-cli-foreman.git
git clone https://github.com/theforeman/hammer-cli-foreman-tasks.git

rvm install 1.9.3
gem install bundler

cd ~/hammer-cli-katello
echo "1.9.3" > .ruby-version
echo "hammer" > .ruby-gemset

cp ~/config_settings/hammer_setup/hammer_gemfile ~/hammer-katello-cli/Gemfile.local
bundle install

mkdir -p ~/.hammer/cli.modules.d

cp ~/config_settings/hammer_setup/foreman_module ~/.hammer/cli.modules.d/foreman.yml

cp ~/config_settings/hammer_setup/katello_module ~/.hammer/cli.modules.d/katello.yml

echo "Remeber to bundle exec hammer -vh when the rails console is on!"
