class Home < Appium::Driver

# ================================= SCREEN ======================================    
    def initialize
        @home_screen = find_element(:id, "target_value_placeholder")
        @menu_icon = find_element(:id, "Open navigation drawer")
        @menu_my_conversion = '(//android.widget.ImageView[@content-desc="Category icon"])[3]'
        @left_menu = "drawerItem"
    end
    
# ================================ METHODS ======================================
    
    def tela_principal_aberta?
        @home_screen
    end
    
    def tocar_icone_menu
        @menu_icon.click
    end

    def tocar_minhas_conversoes
        find_element(id: @left_menu)
        find_element(:xpath, @menu_my_conversion).click
    end

end