class SalesController < ApplicationController
  protect_from_forgery with: :null_session

  def ingest
    model_mapping = {
      "Customer Name" => :customer_name,
      "Item Description" => :item_description,
      "Item Price" => :item_price,
      "Quantity" => :quantity,
      "Merchant Name" => :merchant_name,
      "Merchant Address\r" => :merchant_address
    }

    headings = params["data"]["headings"]
    sale_obj = {}
    sale_hash = ''
    params["data"].each { |item, val|
      if item != "headings"
        if (model_mapping[item] == :item_price) || (model_mapping[item] == :quantity)
          sale_obj[model_mapping[item]] = val.to_f
        else
          sale_obj[model_mapping[item]] = val.strip
        end
      end
    }
    Sale.create(sale_obj)
  end

  def total_revenue
    @totalRevenue = 0
    Sale.all.each {|sale|
      @totalRevenue += sale.item_price*sale.quantity
    }
    render "sales/total_revenue"
  end

private
  def sales_params
    params.require(:sale).permit(Sale.column_names)
  end
end
