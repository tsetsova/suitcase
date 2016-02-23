# Suitcase

A small practice program in Ruby, simulating a suitcase.

## Technologies

* Ruby
* RSpec

## How to use

Clone the repository to your local machine, fire up your terminal, type irb, and use the following commands to store your cherished items into your new suitcase! :thumbsup:

```
re2.2.3 :001 > require './lib/suitcase.rb'
 => true 
2.2.3 :002 > suitcase = Suitcase.new
 => #<Suitcase:0x007fa84a20d1c8 @contents={}> 
2.2.3 :003 > suitcase.commands
 => "The commands I respond to are: add, remove, and display_items." 
2.2.3 :004 > stuicase.display_items
NameError: undefined local variable or method `stuicase' for main:Object
	from (irb):4
	from /Users/makerslaptop65/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :005 > suitcase.display_items
 => "Your suitase is empty :(" 
2.2.3 :006 > stuicase.add("Tedy Bear")
NameError: undefined local variable or method `stuicase' for main:Object
	from (irb):6
	from /Users/makerslaptop65/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :007 > suitcase.add("Tedy Bear")
 => "1 x Tedy bear"
2.2.3 :008 > suitcase.add("Toothbrush", 3)
 => "1 x Tedy bear, 3 x Toothbrush" 
2.2.3 :009 > suitcase.display_items
 => "1 x Tedy bear, 3 x Toothbrush" 
2.2.3 :010 > suitcase.remove("Toothbrush", 2)
 => "1 x Tedy bear, 1 x Toothbrush" 
```

## Have fun :blush:
