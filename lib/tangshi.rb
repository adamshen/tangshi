require "tangshi/version"
require "active_record"
require "pry"

module Tangshi
  class Poet < ActiveRecord::Base
    establish_connection :adapter => "sqlite3", :database => "db/tangshi.sqlite"

    has_many :poetries
  end
  class Poetry < ActiveRecord::Base
    establish_connection :adapter => "sqlite3", :database => "db/tangshi.sqlite"

    belongs_to :poet

    def self.search_sentence(string)
      where("content like '%#{string}%'")
    end
  end
end