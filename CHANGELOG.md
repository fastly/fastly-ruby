# Change Log

## [Unreleased](https://github.com/fastly/fastly-ruby/tree/HEAD)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.6.0...HEAD)

**Merged pull requests:**

- fix: use Appraisal to fix dependency conflicts [\#97](https://github.com/fastly/fastly-ruby/pull/97) ([lanej](https://github.com/lanej))
- Add `format\_version` to S3Logging and Syslog resources [\#96](https://github.com/fastly/fastly-ruby/pull/96) ([schisamo](https://github.com/schisamo))

## [v1.6.0](https://github.com/fastly/fastly-ruby/tree/v1.6.0) (2016-07-14)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.5.0...v1.6.0)

**Merged pull requests:**

- Always add api key to requests if provided [\#93](https://github.com/fastly/fastly-ruby/pull/93) ([blithe](https://github.com/blithe))
- Fix header regex test [\#92](https://github.com/fastly/fastly-ruby/pull/92) ([blithe](https://github.com/blithe))
- Remove Origin model [\#91](https://github.com/fastly/fastly-ruby/pull/91) ([blithe](https://github.com/blithe))

## [v1.5.0](https://github.com/fastly/fastly-ruby/tree/v1.5.0) (2016-07-08)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.4.2...v1.5.0)

**Closed issues:**

- Support Edge Dictionaries [\#66](https://github.com/fastly/fastly-ruby/issues/66)
- version.locked? method returns incorrect value of true for unlocked version [\#47](https://github.com/fastly/fastly-ruby/issues/47)

**Merged pull requests:**

- build for all recent ruby patch-levels [\#90](https://github.com/fastly/fastly-ruby/pull/90) ([thommahoney](https://github.com/thommahoney))
- add Fastly::Dictionary\#item [\#89](https://github.com/fastly/fastly-ruby/pull/89) ([lanej](https://github.com/lanej))
- fix initialize [\#88](https://github.com/fastly/fastly-ruby/pull/88) ([lanej](https://github.com/lanej))
- Raised ArgumentError if api\_key or user/pass are not passed in.  [\#87](https://github.com/fastly/fastly-ruby/pull/87) ([andriantoniades](https://github.com/andriantoniades))
- Add support for dictionary items [\#86](https://github.com/fastly/fastly-ruby/pull/86) ([icco](https://github.com/icco))
- Reintroduced :locked so the version.locked? check works [\#83](https://github.com/fastly/fastly-ruby/pull/83) ([eddieroger](https://github.com/eddieroger))

## [v1.4.2](https://github.com/fastly/fastly-ruby/tree/v1.4.2) (2016-05-23)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.4.1...v1.4.2)

**Merged pull requests:**

- Version\#locked and \#active are boolean values [\#81](https://github.com/fastly/fastly-ruby/pull/81) ([lanej](https://github.com/lanej))
- Update README [\#80](https://github.com/fastly/fastly-ruby/pull/80) ([tijmenb](https://github.com/tijmenb))
- Add Edge Dictionaries [\#69](https://github.com/fastly/fastly-ruby/pull/69) ([alexmuller](https://github.com/alexmuller))
- Validate was always returning true [\#55](https://github.com/fastly/fastly-ruby/pull/55) ([ljagiello](https://github.com/ljagiello))

## [v1.4.1](https://github.com/fastly/fastly-ruby/tree/v1.4.1) (2016-05-19)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.3.0...v1.4.1)

**Merged pull requests:**

- Fixes string interpolation [\#79](https://github.com/fastly/fastly-ruby/pull/79) ([gschorkopf](https://github.com/gschorkopf))
- Add a user agent key/value pair to client headers [\#78](https://github.com/fastly/fastly-ruby/pull/78) ([gschorkopf](https://github.com/gschorkopf))
- Soft purge [\#62](https://github.com/fastly/fastly-ruby/pull/62) ([simonwistow](https://github.com/simonwistow))

## [v1.3.0](https://github.com/fastly/fastly-ruby/tree/v1.3.0) (2016-04-04)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.3...v1.3.0)

**Closed issues:**

- Initializing Fastly.new with api\_key option fails  on version 1.2.2 [\#73](https://github.com/fastly/fastly-ruby/issues/73)
- Release 1.2.1 Is a breaking change [\#65](https://github.com/fastly/fastly-ruby/issues/65)

**Merged pull requests:**

- Added missing fields to S3Logging and syslog [\#76](https://github.com/fastly/fastly-ruby/pull/76) ([raybejjani](https://github.com/raybejjani))
- Update gem with missing fields [\#75](https://github.com/fastly/fastly-ruby/pull/75) ([raybejjani](https://github.com/raybejjani))
- URL escape names when used in URLs [\#74](https://github.com/fastly/fastly-ruby/pull/74) ([raybejjani](https://github.com/raybejjani))

## [v1.2.3](https://github.com/fastly/fastly-ruby/tree/v1.2.3) (2016-03-15)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.2...v1.2.3)

**Merged pull requests:**

- require 'openssl' [\#72](https://github.com/fastly/fastly-ruby/pull/72) ([cthomaspdx](https://github.com/cthomaspdx))

## [v1.2.2](https://github.com/fastly/fastly-ruby/tree/v1.2.2) (2016-03-09)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.1...v1.2.2)

**Closed issues:**

- regexp should be regex [\#64](https://github.com/fastly/fastly-ruby/issues/64)

**Merged pull requests:**

- rely on Net::HTTP default ca\_path [\#71](https://github.com/fastly/fastly-ruby/pull/71) ([thommahoney](https://github.com/thommahoney))
- fix field name for regex [\#68](https://github.com/fastly/fastly-ruby/pull/68) ([thommahoney](https://github.com/thommahoney))
- Remove `Fastly.commands` [\#67](https://github.com/fastly/fastly-ruby/pull/67) ([alexmuller](https://github.com/alexmuller))

## [v1.2.1](https://github.com/fastly/fastly-ruby/tree/v1.2.1) (2016-01-08)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.0...v1.2.1)

**Closed issues:**

- TLS certificates not validated [\#59](https://github.com/fastly/fastly-ruby/issues/59)
- Purge by key returns status 200 but purge does not seem to fire [\#54](https://github.com/fastly/fastly-ruby/issues/54)
- Does purge\_by\_key require more then API\_KEY to work? [\#52](https://github.com/fastly/fastly-ruby/issues/52)
- When chaining methods to purge by surrogate key, get\_service API call is executed every time [\#50](https://github.com/fastly/fastly-ruby/issues/50)

**Merged pull requests:**

- validate TLS certificates [\#61](https://github.com/fastly/fastly-ruby/pull/61) ([lanej](https://github.com/lanej))
- Detect if client base\_uri is HTTPS [\#53](https://github.com/fastly/fastly-ruby/pull/53) ([mmay](https://github.com/mmay))
- Improve examples of purging [\#51](https://github.com/fastly/fastly-ruby/pull/51) ([drbrain](https://github.com/drbrain))
- having login\_opts examples in the readme [\#49](https://github.com/fastly/fastly-ruby/pull/49) ([phoet](https://github.com/phoet))

## [v1.2.0](https://github.com/fastly/fastly-ruby/tree/v1.2.0) (2015-02-06)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.5...v1.2.0)

**Closed issues:**

- Can you bump the gem version? [\#43](https://github.com/fastly/fastly-ruby/issues/43)
- service name change fails on save! [\#20](https://github.com/fastly/fastly-ruby/issues/20)
- purge method doesn't take options hash [\#7](https://github.com/fastly/fastly-ruby/issues/7)
- Make sure types are correct [\#2](https://github.com/fastly/fastly-ruby/issues/2)

**Merged pull requests:**

- Better error reporting [\#48](https://github.com/fastly/fastly-ruby/pull/48) ([mastfish](https://github.com/mastfish))
- Remove curb-fu once and for all [\#44](https://github.com/fastly/fastly-ruby/pull/44) ([mmay](https://github.com/mmay))

## [v1.1.5](https://github.com/fastly/fastly-ruby/tree/v1.1.5) (2014-12-16)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.4...v1.1.5)

**Merged pull requests:**

- bump curb to 0.8.6 [\#45](https://github.com/fastly/fastly-ruby/pull/45) ([mmay](https://github.com/mmay))
- Cleanup Style Issues [\#31](https://github.com/fastly/fastly-ruby/pull/31) ([ezkl](https://github.com/ezkl))

## [v1.1.4](https://github.com/fastly/fastly-ruby/tree/v1.1.4) (2014-09-29)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.3...v1.1.4)

**Merged pull requests:**

- Require key [\#38](https://github.com/fastly/fastly-ruby/pull/38) ([thommahoney](https://github.com/thommahoney))

## [v1.1.3](https://github.com/fastly/fastly-ruby/tree/v1.1.3) (2014-07-25)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.2...v1.1.3)

**Merged pull requests:**

- Add create domain script [\#33](https://github.com/fastly/fastly-ruby/pull/33) ([mmay](https://github.com/mmay))
- Clarify the gem name in the README [\#32](https://github.com/fastly/fastly-ruby/pull/32) ([adarsh](https://github.com/adarsh))

## [v1.1.2](https://github.com/fastly/fastly-ruby/tree/v1.1.2) (2014-06-12)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.1...v1.1.2)

**Merged pull requests:**

- Checks for existence of String\#underscore prior to overriding [\#30](https://github.com/fastly/fastly-ruby/pull/30) ([spra85](https://github.com/spra85))

## [v1.1.1](https://github.com/fastly/fastly-ruby/tree/v1.1.1) (2014-06-05)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.0...v1.1.1)

**Merged pull requests:**

- Add VCL\#set\_main! [\#29](https://github.com/fastly/fastly-ruby/pull/29) ([ezkl](https://github.com/ezkl))
- Minor project gardening [\#28](https://github.com/fastly/fastly-ruby/pull/28) ([ezkl](https://github.com/ezkl))

## [v1.1.0](https://github.com/fastly/fastly-ruby/tree/v1.1.0) (2014-06-04)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.02...v1.1.0)

**Closed issues:**

- Using the API key instead of username + password [\#22](https://github.com/fastly/fastly-ruby/issues/22)
- Where to use full auth vs. token auth? [\#17](https://github.com/fastly/fastly-ruby/issues/17)
- License missing from gemspec [\#10](https://github.com/fastly/fastly-ruby/issues/10)

**Merged pull requests:**

- Allow creating an entirely new version of a service, inheriting nothing ... [\#27](https://github.com/fastly/fastly-ruby/pull/27) ([ctdk](https://github.com/ctdk))
- Fix s3 [\#26](https://github.com/fastly/fastly-ruby/pull/26) ([ctdk](https://github.com/ctdk))
- Fix listing objects, add some API features [\#24](https://github.com/fastly/fastly-ruby/pull/24) ([ctdk](https://github.com/ctdk))
- Wrap test framework dependencies [\#23](https://github.com/fastly/fastly-ruby/pull/23) ([sgerrand](https://github.com/sgerrand))
- Readme updates for Testing [\#19](https://github.com/fastly/fastly-ruby/pull/19) ([phlipper](https://github.com/phlipper))
- Streamline test suite [\#16](https://github.com/fastly/fastly-ruby/pull/16) ([aspires](https://github.com/aspires))

## [v1.02](https://github.com/fastly/fastly-ruby/tree/v1.02) (2013-11-26)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.01...v1.02)

**Merged pull requests:**

- Fixing misspelled field \(quorom to quorum\) [\#15](https://github.com/fastly/fastly-ruby/pull/15) ([renholm](https://github.com/renholm))

## [v1.01](https://github.com/fastly/fastly-ruby/tree/v1.01) (2013-10-03)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.0...v1.01)

**Closed issues:**

- No method for deleting vlc's [\#8](https://github.com/fastly/fastly-ruby/issues/8)

**Merged pull requests:**

- README should use 'new\_version.activate!', not 'new\_version.activate' [\#13](https://github.com/fastly/fastly-ruby/pull/13) ([samjsharpe](https://github.com/samjsharpe))
- Move Fastly::VERSION to dedicated file [\#12](https://github.com/fastly/fastly-ruby/pull/12) ([f3nry](https://github.com/f3nry))
- fix purge\_all, purge\_by\_key and details at Fastly::Service [\#11](https://github.com/fastly/fastly-ruby/pull/11) ([kzk](https://github.com/kzk))

## [v1.0](https://github.com/fastly/fastly-ruby/tree/v1.0) (2013-07-16)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.99...v1.0)

**Merged pull requests:**

- Fix for issue \#8 [\#9](https://github.com/fastly/fastly-ruby/pull/9) ([ajardan](https://github.com/ajardan))

## [v0.99](https://github.com/fastly/fastly-ruby/tree/v0.99) (2012-05-01)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.98...v0.99)

**Merged pull requests:**

- Minor bug fix and README update [\#5](https://github.com/fastly/fastly-ruby/pull/5) ([ramezjm](https://github.com/ramezjm))

## [v0.98](https://github.com/fastly/fastly-ruby/tree/v0.98) (2012-02-16)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.97...v0.98)

## [v0.97](https://github.com/fastly/fastly-ruby/tree/v0.97) (2012-01-27)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.96...v0.97)

**Closed issues:**

- Every invocation of fastly\_upload\_vcl from v0.95 dies with an error [\#4](https://github.com/fastly/fastly-ruby/issues/4)

## [v0.96](https://github.com/fastly/fastly-ruby/tree/v0.96) (2012-01-17)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.95...v0.96)

## [v0.95](https://github.com/fastly/fastly-ruby/tree/v0.95) (2011-12-19)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.9...v0.95)

**Closed issues:**

- Gem does not default site or port [\#3](https://github.com/fastly/fastly-ruby/issues/3)
- Update to new form of versions [\#1](https://github.com/fastly/fastly-ruby/issues/1)

## [v0.9](https://github.com/fastly/fastly-ruby/tree/v0.9) (2011-12-15)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.8...v0.9)

## [v0.8](https://github.com/fastly/fastly-ruby/tree/v0.8) (2011-11-03)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.6...v0.8)

## [v0.6](https://github.com/fastly/fastly-ruby/tree/v0.6) (2011-11-03)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.5...v0.6)

## [v0.5](https://github.com/fastly/fastly-ruby/tree/v0.5) (2011-11-01)
[Full Changelog](https://github.com/fastly/fastly-ruby/compare/2015-02-05 v1.2.0...v0.5)

# HEAD

## 2015-02-05 v1.2.0
* remove curb-fu. Net::HTTP is used instead - https://github.com/fastly/fastly-ruby/pull/44
* better client error handling - https://github.com/fastly/fastly-ruby/pull/48

## 2014-12-15 v1.1.5
* major refactor and reorganization of code (merged branch https://github.com/fastly/fastly-ruby/pull/31)
* bump curb dep to 0.8.6 for ruby 2.1 support (see https://github.com/fastly/fastly-ruby/issues/43)

2014-09-29 v1.1.4
* Require API Key for purge by key requests

2014-07-25 v1.1.3
* Add test:unit rake task
* Add Rubocop and some rubocop cleanup
* Clarify gem name in documentation
* Fix a bug in the `Fastly.get_options` method
* Add `bin/fastly_create_domain` script to easily create domain

2014-06-12 v1.1.2
* Replace `String#underscore` with `Fastly::Util.class_to_path` method.
* Add first true unit test
* Add `test_helper.rb`
* Add `pry` as dependency
* Add console Rake task

2013-11-26 v1.02

Fix rdoc dependency and quorum spelling (Kristoffer Renholm)

2013-10-03 v1.01

Add historical stats functionality
Fix settings
Add conditions
Add in auto_loadbalancing for backends
Fix some doc stuff (Sam Sharpe)
Reorganize library (Eric Saxby & Paul Henry)
Fix purge_all, purge_by_key and details (Kazuki Ohta)

2013-07-16 v1.00

Fix delete VCL (thanks Andrian Jardan)

2012-05-01 v0.99

Fix some SSL issues
Allow some admin functionality

2012-02-02 v0.98

Make deactivate! work
Add active?
Add Service.purge_by_key

2012-01-27 v0.97

Fix invoice tests with new billing API

2012-01-16 v0.96

Fix version.locked?
Make fastly_upload_vcl work

2011-12-19 v0.95

Fix the way invoices and stats are fetched

2011-12-15 v0.9

Add mapping from backends to directors and directors to origins

2011-11-03 v0.8

Add list_* to all objects

Add Healthchecks and Syslog endpoint streaming

2011-11-02 v0.5

Initial releasee


\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*