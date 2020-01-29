class CustomValidtion < ActiveModel::EachValidator
    
    def validte(record)
        if record.companyname.present?
            record.
    end
    
end