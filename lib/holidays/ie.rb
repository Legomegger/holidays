# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/ie.yaml
  #
  # To use the definitions in this file, load it right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/ie'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module IE # :nodoc:
    def self.defined_regions
      [:ie]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Easter Monday", :regions => [:ie]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:ie]}],
      3 => [{:mday => 17, :name => "St. Patrick's Day", :regions => [:ie]}],
      5 => [{:wday => 1, :week => 1, :name => "May Day", :regions => [:ie]}],
      6 => [{:wday => 1, :week => 1, :name => "Bank Holiday", :regions => [:ie]}],
      8 => [{:wday => 1, :week => 1, :name => "Bank Holiday", :regions => [:ie]}],
      10 => [{:wday => 1, :week => -1, :name => "Bank Holiday", :regions => [:ie]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:ie]},
            {:mday => 26, :name => "St. Stephen's Day", :regions => [:ie]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::IE.defined_regions, Holidays::IE.holidays_by_month)
