class Pokemon

  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id: nil, name: nil, type: nil, db: nil)

  end

  def self.save(name,type,database_connection)
    #:db.execute#("INSERT INTO pokemon (name,type) VALUES (?,?,?)",id,name,type)

  end


end
