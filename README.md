[![Build
Status](https://travis-ci.org/phereford/d3api.png)](https://travis-ci.org/phereford/d3api)
[![Code
Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/phereford/d3api)

# D3api

This gem is a ruby wrapper to Blizzard's [Diablo 3
api](https://github.com/Blizzard/d3-api-docs).

## Installation

Add this line to your application's Gemfile:

    gem 'd3api'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install d3api

## Usage

All objects are tied to regions. Every api call will require a region to
be set. The available list of regions are:
1. :us
2. :eu
3. :kr
4. :tw
5. :ch

### Career

To get a user's Diablo 3 career, you need to know 3 things:
1. BattleTag Name
2. BattleTag Code
3. Region

Then it's ruby time. 
```
@career = D3api::Career.new(:us, 'yojymbu', '1249')
```

This will return a Career object with json values. I tried my best to
implement nice methods to get through the values such as:
```    
@career.heroes #=> returns an array of heroes 
@career.lastHeroPlayed #=> returns the id of last hero played
@career.lastUpdated 
@career.artisans #=> returns a hash of your arisan information
@career.kills['monsters'] #=> returns an integer
```

There is a ton of data gleaned from the career object. Just look at
[Blizzard's Diablo 3 api docs](https://github.com/Blizzard/d3-api-docs)
for more information.

### Hero

To get a user's Diablo 3 hero, you need to know 4 things:
1. BattleTag Name
2. BattleTag Code
3. Region
4. Hero ID

```
@hero = D3api::Hero.new :us, 'yojymbu', '1249', '30255685' #=>
returns hero object
@hero.name #=> Returns name of character
@hero.heroClass #=> Returns class of character
@hero.skills #=> returns an array of hashes for active and passive
skills
@hero.items #=> returns an array of hashes
```

### Item

To get an item from Diablo 3, you need 2 things:
1. Region
2. Item String
```
@item = D3api::Item.new :us,
'COGHsoAIEgcIBBXIGEoRHYQRdRUdnWyzFB2qXu51MA04kwNAAFAKYJMD' #=> returns
an item object
@item.name #=> Exsanguinating Chopsword of Assault
@item.icon #=> mightyweapon1h_202
```

And many more. Please refer to [Blizzard's Diablo 3
documentation](https://github.com/Blizzard/d3-api-docs) for
more information.

### Follower / Artisan Information
You need 2 things:
1. Region
2. Follower or Artisan type

```
@follower = D3pi::Follower.new :us, 'scoundrel'
@artisan = D3api::Artisan.new :us, 'blacksmith'
```


## That's It!

If you have any comments questions or concerns, please let me know.

## ToDos
1. Implement Authentication per Blizzards protocol (allow 10,000
   unsigned requests or 50,000 signed requests).
2. Rspec tests for api calls.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
