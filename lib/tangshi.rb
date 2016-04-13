require "tangshi/version"
require "active_record"
require "pry"

module Tangshi
  class Poet < ActiveRecord::Base
    establish_connection :adapter => "sqlite3", :database => File.expand_path('../db/tangshi.sqlite', __FILE__)

    has_many :poetries
  end
  class Poetry < ActiveRecord::Base
    establish_connection :adapter => "sqlite3", :database =>File.expand_path('../db/tangshi.sqlite', __FILE__)

    belongs_to :poet

    def self.search_sentence(string)
      where("content like '%#{string}%'")
    end
  end
end