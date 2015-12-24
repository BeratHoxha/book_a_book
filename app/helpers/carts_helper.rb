module CartsHelper
	def format_qty_value(number)
		number = number.to_i
		pluralize(number, 'item')
	end
end
