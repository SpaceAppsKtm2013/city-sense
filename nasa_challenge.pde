int temperature_reading1,temperature_reading2,temperature,sound_reading1,sound_reading2,sound;

void setup()
{
  Serial.begin(9600);
  
}

void loop()
{
  temperature_reading1=analogRead(A0);
  temperature_reading2=analogRead(A1);
  
  temperature=(temperature_reading1+temperature_reading2)/2;
  
  sound_reading1=analogRead(A2);
  sound_reading2=analogRead(A3);
  
  sound=(sound_reading1+sound_reading2)/2;
  
  if(temperature>=135&&sound>=135)
   {
       Serial.print('A');
   }
   
   if(temperature>=135)
   {
     Serial.print('B');
   }
   if(sound>= 135)
   {
     Serial.print('C');
   }
   else
     Serial.print('D');
}
