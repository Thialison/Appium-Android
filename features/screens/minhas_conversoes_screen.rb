class Conversoes < Appium::Driver
    include RSpec::Matchers

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
        id('btn_new_custom_conversion').click
        find_element(id: 'edit_custom_conversion_category_name').send_keys 'TestUnit'
        find_element(id: 'btn_new_custom_unit').click
        find_element(id: 'edit_custom_conversion_unit_dtls_name').send_keys 'Katsu'
        find_element(id: 'edit_custom_conversion_unit_dtls_value').send_keys '490'
        find_element(id: 'btn_unit_dtls_ok').click
        find_element(id: 'action_confirm_custom_category').click
    end

    def valida_nova_conversao
        result = find_element(id: 'custom_category_item_name').text
        expect(result).to eq('TestUnit')
    end

    def visualiza_minhas_conversoes?
        text_exact("My conversions")
        id("text_info_no_custom_conversions")
    end

end