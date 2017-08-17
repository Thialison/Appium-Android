class Conversoes < Appium::Driver


# ================================= SCREEN ======================================    
    def initialize
        @conversion_name = "TestUnit"
        @new_conversion = find_element :id, "btn_new_custom_conversion"
        @name_conversion = "edit_custom_conversion_category_name"
        @btn_new_unit = "btn_new_custom_unit"
        @name_unit = "edit_custom_conversion_unit_dtls_name"
        @name_value_unit = "edit_custom_conversion_unit_dtls_value"
        @btn_confirm_unit = "action_confirm_custom_unit"
        @btn_confirm_category = "action_confirm_custom_category"
    end

# ================================ METHODS ======================================

    def criar_nova_conversao
        @new_conversion.click
        find_element(:id, @name_conversion).send_keys @conversion_name
        find_element(:id, @btn_new_unit).click
        find_element(:id, @name_unit).send_keys "Katsu"
        find_element(:id, @name_value_unit).send_keys "999"
        find_element(:id, @btn_confirm_unit).click
        find_element(:id, @btn_confirm_category).click
    end

    def valida_nova_conversao
        result = find_element(id: "custom_category_item_name").text
        #puts result
        fail 'Conversão não foi criada' unless result == @conversion_name
    end

    def visualiza_minhas_conversoes?
        find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.TextView')
    end

end