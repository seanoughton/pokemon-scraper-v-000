class Pokemon

  attr_accessor :id, :name, :type, :db



  def initialize(id: nil, name: nil, type: nil, db: nil)
      @id = :id
      @name
      @type
      @db
  end

  def self.save(name,type,database_connection)
    database_connection.execute("INSERT INTO pokemon (name,type) VALUES (?,?)",name,type)
  end


  def self.find(number,database_connection)
    #database_connection.execute("SELECT * FROM pokemon WHERE id=?", number)
    pokemon_array = database_connection.execute("SELECT * FROM pokemon WHERE id=?", number).flatten
    Pokemon.new(id: nil,name: nil,type: nil ,db:database_connection)
  end


end
