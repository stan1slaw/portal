module DateHelper

    def dateminus(date)
       (DateTime.now.to_date - date).to_i
    end
    

end
