/*
  DigitalReadSerial
 Reads a digital input on pin 2, prints the result to the serial monitor 
 
 This example code is in the public domain.
 */
 int flag =0
 ;

void setup() {
  Serial.begin(9600);
  pinMode(13,OUTPUT);
}

void loop()
{ 

  int sensorValue=Serial.read();
  digitalWrite(13,flag);
 
  if(sensorValue== '1')
  flag=1;
  else if(sensorValue== '0') 
  flag=0; 
}




