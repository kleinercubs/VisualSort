int n=20;
int[] a= new int[n+2];
int temp,i=0,j=0;

void setup()
{
  size(1000, 400);
  for (int p=0; p<n; p++) 
    a[p]=int(random(1, 200));
  background(0);
  fill(255,255,255);
  for (int q=2; q<n; q++) 
    rect(10+50*q,300-a[q], 20, a[q]);
  fill(255,255,0);
  rect(10,300-a[0],20,a[0]);
}

void draw()
{
  if(j!=0)
  {fill(255,255,255);
  rect(10+50*j,300-a[j],20,a[j]);}
  if (i<n && j<n)
    if (a[i]>a[j])
    {
      fill(0,0,0);
      rect(10+50*i,300-a[i],20,a[i]);
      rect(10+50*j,300-a[j],20,a[j]);
      temp=a[i];a[i]=a[j];a[j]=temp;
      fill(255,255,0);
      rect(10+50*i,300-a[i],20,a[i]);
      fill(255,255,255);
      rect(10+50*j,300-a[j],20,a[j]);
    }
  if (j==n)
    {
      fill(0,255,255);
      rect(10+50*i,300-a[i],20,a[i]);
      i++;j=i;
      fill(255,255,0);
      rect(10+50*i,300-a[i],20,a[i]);
    }
  j++;
  fill(255,255,0);
  rect(10+50*j,300-a[j],20,a[j]);
  printArray(a);
  if (i == n) {initialize();}
  int time = millis();
  while(millis() - time <=800){fill(255,255,255);}
}

void initialize(){
int time = millis();
while(millis() - time <=1500){fill(255,255,255);}
a= new int[n+2];
i=0;
j=0;
setup();
}

