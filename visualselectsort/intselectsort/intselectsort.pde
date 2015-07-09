int[] a= new int[10];
int n=10, temp;

void setup()
{
  size(500, 400);
  for (int i=0; i<n; i++) 
    a[i]=int(random(0, 200));
}

void draw()
{
  for (int i=0; i<n; i++)
    {
      for (int j=i+1; j<n; j++)
        if (a[i]>a[j]) 
        {
          temp=a[i]; a[i]=a[j]; a[j]=temp;
        }
    }
  printArray(a);
}

