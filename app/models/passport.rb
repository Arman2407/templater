class Passport < DocumentTemplate
    def virtual_fields
        {
            'seria': 'seria',
            'number': 'number',
            'placeofbirth': 'placeofbirth'
        }
    end
end
