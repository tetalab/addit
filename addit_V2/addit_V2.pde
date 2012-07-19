#define ledtx 0
#define led 1
#define in 3



void setup() {                
  pinMode(ledtx, OUTPUT);     
  pinMode(led, OUTPUT);     
  digitalWrite(ledtx,HIGH);
  digitalWrite(led, HIGH);
}

void loop() {
  int sensorValue = 0;
  sensorValue = analogRead(in);    

  if (sensorValue > 100 )
  {
    digitalWrite(led, LOW);   
    delay(500);
    digitalWrite(led, HIGH);   
    digitalWrite(ledtx, LOW);   
    delay(500);
    digitalWrite(ledtx, HIGH);   
  }
}
