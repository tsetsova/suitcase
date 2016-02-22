class Suitcase

  attr_reader  :contents

  def initialize 
    @contents = {}
    message = %q( Hi, I'm friendly suitcase! How can I help you today?
    I only know a few commands. Would you like to add or remove an item? Or maybe display all current items?
    If you're unsure how to use me, just write suitcase.commands 
    )
  end

  def commands 
    return "The commands I respond to are: add, remove, and display_items."
  end

  def display_items
    return "Your suitase is empty :(" if @contents.empty?
    @contents.map{|key,value| "#{value} x #{key}"}.join(", ")
  end

  def add(item, count = 1)
    item = to_capital_sym(item)
    @contents.has_key?(item) ? @contents[item] += count : @contents[item] = count
    display_items
  end

  def remove(item, count = 1)
    item = to_capital_sym(item)
    raise "You must be confused... This item isn't currently in your suitcase." if !@contents.include?(item)
    raise "You only have #{@contents[item]} x #{item}" if @contents[item] < count
    @contents[item] > count ? @contents[item] -= count : @contents.delete(item)
    display_items
  end

  private

  def to_capital_sym(item)
    item.capitalize.to_sym
  end
end



