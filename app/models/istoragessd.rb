class Istoragessd < ApplicationRecord
belongs_to :user , optional: true

	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Istoragessd.create! row.to_hash
    end
  end

def self.to_csv(options = {})
  # if export specify columns
  #def self.to_csv(column_names, handies,options = {})
  # column_names =[ "item"  , "pccitem", "receivedate" ,"startdate" ,"finishdate" , "solution"]
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |istoragessd|
        csv << istoragessd.attributes.values_at(*column_names)
      end
    end
  end


end
