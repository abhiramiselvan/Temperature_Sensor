
#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,16,2); 
const int sensorPin = A1;
float temperature;

void setup()
{
  
  lcd.init();                     
  
  lcd.backlight();
  lcd.setCursor(1,0);
  lcd.print("Hello, Welcome");
  delay(1000);
  lcd.clear();
  Serial.begin(9600);
}


void loop()
{
  int sensorValue = analogRead(sensorPin);
  temperature =(sensorValue*0.48876)-50;

  lcd.setCursor(1,0);
  lcd.print("Temperatue");
  delay(1000);
  lcd.setCursor(1,1);
  lcd.print(temperature);

  Serial.print ("Temperature");
  Serial.print(temperature);
  Serial.print("°C");

  delay(1000);
}


