# *Temperature Sensor*

### About temperature sensor:
Used to measure the temperature value.
Different type of temperature sensor is available.
Woking principle: Providing reading via electrical signal.

Now we are going to build a temperature display using a temperature and humidity sensor module. This is measuring the surrounding temperature.

#### Components:
 - Arduino
 - Connecting cable
 - LCD module
 - Temperature sensor
 - Jumper wire
 - Arduino Software
 


#### Interfacing with Arduino:
Interfacing a temperature sensor with Arduino is a common project, and it involves connecting the temperature sensor to the Arduino and then using Arduino code to read and interpret the temperature data. 

#### Connection Steps:
Connect LM35 to Arduino:
Connect the VCC pin of LM35 to the 5V pin on Arduino.
Connect the GND pin of LM35 to the GND pin on Arduino.
Connect the OUT pin of LM35 to any Analog Input pin on Arduino (e.g., A0).









## Arduino Code:

```bash
#include <DFRobot_DHT11.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27, 16, 2);
const int sensorPin = A1;
DFRobot_DHT11 DHT;
#define DHT11_PIN 10

void setup() {
  lcd.init();
  lcd.backlight();
  lcd.setCursor(1, 0);
  lcd.print("Hello, Welcome");
  delay(1000);
  lcd.clear();
  Serial.begin(9600);
}

void loop() {
  DHT.read(DHT11_PIN);

  float temperature = DHT.temperature;
  float humidity = DHT.humidity;

  lcd.setCursor(0, 0);
  lcd.print("Temp:");
  lcd.setCursor(5,0);
  lcd.print(temperature);
  lcd.print("°C");
  delay(1000);

  lcd.setCursor(0, 1);
  lcd.print("Hum:");
  lcd.setCursor(4,1);
  lcd.print(humidity);
  lcd.print("%");
  delay(1000);

  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.print("°C, Humidity: ");
  Serial.print(humidity);
  Serial.println("%");
  


  delay(1000);
}
```
https://github.com/abhiramiselvan/Temperature_Sensor/assets/144225835/b8fe7ca2-dc5b-4756-bcfa-c022f8f43839

