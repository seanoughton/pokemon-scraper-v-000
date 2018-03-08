class Pokemon

  attr_accessor :name, :type, :db



  def initialize(name: nil, type: nil, db: nil)

  end

  def self.save(name,type,database_connection)
    database_connection.execute("INSERT INTO pokemon (name,type) VALUES (?,?)",name,type)
  end



  def self.find(something,database_connection)
    #database_connection.execute("SELECT * FROM pokemon WHERE id = ?",id)
  end


end
