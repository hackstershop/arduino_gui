char data;
boolean led13 = false;
boolean led12 = false;

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(2, INPUT_PULLUP);
}

void loop() {
  
  if (digitalRead(2) == HIGH){
      Serial.write(0);
    }
    else{
        Serial.write(1);
   
      }
  if(Serial.available()> 0){
      data = Serial.read();
      if(data == 1){
          led13 = !led13;
        }
        else if (data == 2){
            led12 = !led12;
          }
          
          
    }  
if (led13){
    digitalWrite(13, HIGH);
  }else{
      digitalWrite(13, LOW);
  }

  if (led12){
    digitalWrite(12, HIGH);
  }else{
      digitalWrite(12, LOW);
  }
  
}


