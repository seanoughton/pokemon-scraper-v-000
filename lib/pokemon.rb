class Pokemon

  attr_accessor :id, :name, :type, :db

  @@database_connection = :db

  def initialize(id: nil, name: nil, type: nil, db: nil)

  end

  def self.save(id,name,type)
    @@database_connection.execute("INSERT INTO pokemon (name,type) VALUES (?,?,?)",id,name,type)
  end


end
