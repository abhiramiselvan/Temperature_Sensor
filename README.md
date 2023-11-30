# *Temperature Sensor*

### About temperature sensor:
Used to measure the temperature value.
Different type of temperature sensor is available.
Woking principle: Providing reading via electrical signal.

Now we are going to build a temperature display using temperature and humidity sensor module. This is measuring the surrounding temperature.

#### Components:
 - Arduino
 - Connecting cable
 - LCD module
 - Temperature sensor
 - Jumber wire
 - Software
 - Arduino


#### Interfacing with Arduino:
Interfacing a temperature sensor with Arduino is a common project, and it involves connecting the temperature sensor to the Arduino and then using Arduino code to read and interpret the temperature data. 

#### Connection Steps:
Connect LM35 to Arduino:
Connect the VCC pin of LM35 to the 5V pin on Arduino.
Connect the GND pin of LM35 to the GND pin on Arduino.
Connect the OUT pin of LM35 to any Analog Input pin on Arduino (e.g., A0).









## Arduino Code:

```bash
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
```


