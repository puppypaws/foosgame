# README

* Ruby version
2.5.1

* Database
PSQL

* Deployment instructions
bundle i , 
rails db:create , 
rails db:migrate , 
rails db:seed , 
rails s

* Database
Command line 'rails dbconsole' , 
Basic seed file included

* Version Updates
# 1.0
* PSQL tables for Players & Teams
* Player table contains team_id as association
* Routes for Players & Teams (eg. localhost:3000/players/new)
* Views: Index/Show/New

# To-do (Somewhat in order)
* Form for Teams
* PSQL tables for Games/Matches
* Association between Teams & Games/Matches
* Assocation between Games & Matches
* Play logic for Games via Math.random
* Win/loss tracking for Games/Matches
