# Paraffin
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop) [![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)
[![Maintainability](https://api.codeclimate.com/v1/badges/a8924cfe1a51fd8463d7/maintainability)](https://codeclimate.com/github/rtichauerv/paraffin/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/a8924cfe1a51fd8463d7/test_coverage)](https://codeclimate.com/github/rtichauerv/paraffin/test_coverage)


## The Team

Created by the Iron Team (Ronny, Ale, Cris & Cecy) at the FIN bootcamp by Fintual.
All (most) of this code was writen in Puerto Natales, under the benevolent protection of [Donmilo](http://donmilo.cl/).


## The Stack

### Main players

- Ruby
- Rails
- Postgres
- Rspec

## Getting Started

0. Before everything, you should have Docker and Docker Compose in your computer (Docker desktop includes both).

1. Clone this repo and cd into your directory.
    
    git clone git@github.com:rtichauerv/paraffin.git && cd paraffin

2. In another terminal window, build and run your app with Compose.

    docker compose build
    docker compose up

3. Enter http://localhost:3000/ in a browser to see the application running.

4. Finally, you need to create the database and seed it. In another terminal, run:

    docker compose run web rake db:create db:seed


