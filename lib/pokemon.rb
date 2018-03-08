class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id: nil, name: nil, type: nil, db: nil)

  end

  def self.save(db,name,type)
    db.execute("INSERT INTO pokemon (id,name,type) VALUES (?,?,?)",id,name,type)
  end


end
