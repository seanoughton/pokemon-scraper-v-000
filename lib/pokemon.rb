class Pokemon

  attr_accessor :id, :name, :type, :db , :hp



  def initialize(id: nil, name: nil, type: nil, db: nil, hp: nil)
      @id = id
      @name = name
      @type = type
      @db = db
  end

  def self.save(name,type,database_connection)
    database_connection.execute("INSERT INTO pokemon (name,type) VALUES (?,?)",name,type)
  end


  def self.find(number,database_connection)
    pokemon_array = database_connection.execute("SELECT * FROM pokemon WHERE id=?", number).flatten
    Pokemon.new(id:pokemon_array[0],name:pokemon_array[1],type:pokemon_array[2],db:database_connection)
  end

  #ALTER TABLE cats ADD COLUMN breed TEXT SET DEFAULT 'Sandnes';


end
