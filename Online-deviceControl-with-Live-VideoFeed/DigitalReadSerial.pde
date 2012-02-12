
 int flag =0 ;

void setup() {
  Serial.begin(9600);
  pinMode(12,OUTPUT);
}

void loop()
{ 

  int sensorValue=Serial.read();
  digitalWrite(12,flag);
 
  if(sensorValue== '1')
  flag=1;
  else if(sensorValue== '0') 
  flag=0; 
}




