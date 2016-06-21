class ProductsController < ApplicationController

  def index

  end

  def excel_export
    @products = Product.all
    respond_to do |format|
      format.xls { send_data Product.make_xls(@products), xls_export_params }
    end
  end

  private

  def xls_export_params
    { type: "application/vnd.ms-excel", disposition: 'attachment', filename: "my_first_excel_file.xls" }
  end


end
