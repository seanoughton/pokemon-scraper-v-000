class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id: nil, name: nil, type: nil, db: nil)

  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon ()") 
  end


end
