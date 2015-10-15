require 'rubygems'
#require 'prawn'
#require 'zip'
require 'combine_pdf'
#require 'rubyzip'

=begin
file = Prawn::Document.generate("hello.pdf") do
  text "Hello World! Get the apllication working!"
end

puts "#{file.class}"


file_path = "./Documents/learning_code"
file_list = ['hello.rb', 'llop.rb', 'hello.pdf']
 
zipfile_name = "./Desktop/someFile.zip"
 
Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
  file_list.each do |filename|
    # Two arguments:
    # - The name of the file as it will appear in the archive
    # - The original file, including the path to find it
    zipfile.add(filename, file_path + '/' + filename)
  end
end
=end
pdf = CombinePDF::CombinePDF.new
pdf << CombinePDF::CombinePDF.load("form1.pdf") # one way to combine, very fast.
pdf << CombinePDF::CombinePDF.load("form2.pdf")
pdf.save "combined.pdf"