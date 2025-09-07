int value= 0;
void setup() {
Serial.begin(9600);
pinMode(3, OUTPUT);
pinMode(4, OUTPUT);
pinMode(5, OUTPUT);
pinMode(6, OUTPUT);
pinMode(7, OUTPUT);
pinMode(8, OUTPUT);
pinMode(9, OUTPUT);
pinMode(10, OUTPUT);
pinMode(11, OUTPUT);
pinMode(12, OUTPUT);

Serial.println("SOIL MOISTURE SENSOR");
Serial.println("-----------------------------");
}
void loop() 
{
value = analogRead(A0);
value = 675 - value;
Serial.println(value);

if (value > 511) 
{
  value = value - 512;
  digitalWrite(12, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(12, LOW);
  //Serial.print('0');
}

if (value > 255) 
{
  value = value - 256;
  digitalWrite(11, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(11, LOW);
  //Serial.print('0');
}
if (value > 127) 
{
  value = value - 128;
  digitalWrite(10, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(10, LOW);
  //Serial.print('0');
}

if (value > 63) 
{
  value = value - 64;
  digitalWrite(9, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(9, LOW);
  //Serial.print('0');
}

if (value > 31) 
{
  value = value - 32;
  digitalWrite(8, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(8, LOW);
  //Serial.print('0');
}

if (value > 15) 
{
  value = value - 16;
  digitalWrite(7, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(7, LOW);
  //Serial.print('0');
}

if (value > 7) 
{
  value = value - 8;
  digitalWrite(6, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(6, LOW);
  //Serial.print('0');
}

if (value > 3) 
{
  value = value - 4;
  digitalWrite(5, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(5, LOW);
  //Serial.print('0');
}

if (value > 1) 
{
  value = value - 2;
  digitalWrite(4, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(4, LOW);
  //Serial.print('0');
}

if (value > 0) 
{
  value = value - 1;
  digitalWrite(3, HIGH);
  //Serial.print('1');
}
else
{
  digitalWrite(3, LOW);
  //Serial.println('0');
}
delay(1000);
}




/* int value= 0;
void setup() {
Serial.begin(9600);
pinMode(3, OUTPUT);
pinMode(4, OUTPUT);
pinMode(5, OUTPUT);
pinMode(6, OUTPUT);
pinMode(7, OUTPUT);
pinMode(8, OUTPUT);
pinMode(9, OUTPUT);
pinMode(10, OUTPUT);
pinMode(11, OUTPUT);
pinMode(12, OUTPUT);

Serial.println("SOIL MOISTURE SENSOR");
Serial.println("-----------------------------");
}
void loop() 
{
value = analogRead(A0);
Serial.println(value);

if (value > 511) 
{
  value = value - 512;
  digitalWrite(3, HIGH);
}
else
{
  digitalWrite(3, LOW);
}

if (value > 255) 
{
  value = value - 256;
  digitalWrite(4, HIGH);
}
else
{
  digitalWrite(4, LOW);
}
if (value > 127) 
{
  value = value - 128;
  digitalWrite(5, HIGH);
}
else
{
  digitalWrite(5, LOW);
}

if (value > 63) 
{
  value = value - 64;
  digitalWrite(6, HIGH);
}
else
{
  digitalWrite(6, LOW);
}

if (value > 31) 
{
  value = value - 32;
  digitalWrite(7, HIGH);
}
else
{
  digitalWrite(7, LOW);
}

if (value > 15) 
{
  value = value - 16;
  digitalWrite(8, HIGH);
}
else
{
  digitalWrite(8, LOW);
}

if (value > 7) 
{
  value = value - 8;
  digitalWrite(9, HIGH);
}
else
{
  digitalWrite(9, LOW);
}

if (value > 3) 
{
  value = value - 4;
  digitalWrite(10, HIGH);
}
else
{
  digitalWrite(10, LOW);
}

if (value > 1) 
{
  value = value - 2;
  digitalWrite(11, HIGH);
}
else
{
  digitalWrite(11, LOW);
}

if (value > 0) 
{
  value = value - 1;
  digitalWrite(12, HIGH);
}
else
{
  digitalWrite(12, LOW);
}
delay(10);
}
*/
