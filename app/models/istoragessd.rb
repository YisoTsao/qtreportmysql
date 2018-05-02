class Istoragessd < ApplicationRecord
belongs_to :user , optional: true

has_attached_file  :image1,
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"}, 
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image2,
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image3, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

has_attached_file :image4, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image5, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image6, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image7, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image8, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image9, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image10, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

has_attached_file :image11, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image12, 
  styles: 
  {   thumb: "180x180", 
      medium: "420x420",
      large: "500x500",
      hdtune: "200x200", 
      iometer: "200x200", 
      atto: "200x200", 
      pcmark: "200x200"},  
      default_url: ""# "/images/:style/missing.png"

  #This validates the type of file uploaded. According to this, only images are allowed.
  # validates_attachment_content_type :image, :image1, :image2, :image3,   content_type: /\Aimage\/.*\z/

  #Use this if you do not want to validate the uploaded file type.
     do_not_validate_attachment_file_type :image1

 #Validates file, file type and file size
   validates_attachment  :image1, :image2, :image3, :image4, :image5, :image6,
   :image7, :image8, :image9,:image10, :image11, :image12,

   content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
   size: { in: 0..10000.kilobytes }

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
