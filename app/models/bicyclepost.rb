class Bicyclepost < ApplicationRecord
	belongs_to :bicyclecategory

	belongs_to :order
end
