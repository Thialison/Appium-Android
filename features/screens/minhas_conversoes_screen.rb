class Conversoes < Appium::Driver


# ================================= SCREEN ======================================    
    def initialize
        @conversion_name = "TestUnit"
        @new_conversion = "btn_new_custom_conversion"
        @name_conversion = "edit_custom_conversion_category_name"
        @btn_new_unit = "btn_new_custom_unit"
        @name_unit = "edit_custom_conversion_unit_dtls_name"
        @name_value_unit = "edit_custom_conversion_unit_dtls_value"
        @btn_confirm_unit = "action_confirm_custom_unit"
        @btn_confirm_category = "action_confirm_custom_category"
    end

# ================================ METHODS ======================================

    def criar_nova_conversao
        id(@new_conversion).click
        id(@name_conversion).send_keys @conversion_name
        id(@btn_new_unit).click
        id(@name_unit).send_keys "Katsu"
        id(@name_value_unit).send_keys "999"
        id(@btn_confirm_unit).click
        id(@btn_confirm_category).click
    end

    def valida_nova_conversao
        result = id("custom_category_item_name").text
        fail 'Conversão não foi criada' unless result == @conversion_name
    end

    def visualiza_minhas_conversoes?
        text_exact("My conversions")
        id("text_info_no_custom_conversions")
    end

end