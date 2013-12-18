# Vmaps

This is a pair of tools for exploring your vim mappings:
`vmaps_dump` and `vmaps_json`.


## Installation

    $ gem install vmaps


## Usage

`vmaps_dump` sends the result of the vim command `:verbose map` to STDOUT.
`vmaps_json` converts this result into json. Isn't that all cute and Unix-y?

You probably just want to do this:

    $ vmaps_dump | vmaps_json > mappings.json

You'll end with a bunch of json data, which you can use however you'd like.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
