require 'appium_lib'
require 'pry'
require 'rspec'

def caps
    {
        caps: {
            deviceName: "MeuDevice",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")), #Função que pega o arquivo que está na mesma pasta que o (env)
            appPackage: "com.ba.universalconverter", #uiautomatorviewer& || Appium logs
            appActivity: "MainConverterActivity", #Appium logs
            newCommandTimeout: "3600",
            automationName: "UiAutomator2"
            #noReset: true
            #fullReset: true
        }, appium_lib: {
            wait: 5
        } 
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object