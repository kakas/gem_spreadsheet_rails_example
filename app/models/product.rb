class Product < ActiveRecord::Base


  def self.make_xls(products)
    book = Spreadsheet::Workbook.new
    sheet1 = book.create_worksheet
    sheet1.row(0).concat ["產品名稱", "價格"]

    products.each do |product|
      new_row =  ["#{product.title}", "#{product.price}"]
      sheet1.insert_row(sheet1.last_row_index + 1, new_row)
    end

    spreadsheet = StringIO.new
    book.write spreadsheet
    spreadsheet.string
  end

end
