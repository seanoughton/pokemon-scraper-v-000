class Pokemon

  attr_accessor :id, :name, :type, :db



  def initialize(id: nil, name: nil, type: nil, db: nil)

  end

  def self.save(id,name,type)
    #:db.execute#("INSERT INTO pokemon (name,type) VALUES (?,?,?)",id,name,type)
  end


end
