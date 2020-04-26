int[] evens = new int[20]; 
int[] odds  = new int[20]; 
int oddNumber = 1; 
int evenNumber = 2; 

void setup() {
  for (int i = 0; i < odds.length; i++) { // filling in the odds array
    odds[i] = oddNumber; 
    oddNumber+=2;
  }

  for (int i = 0; i <evens.length; i++) { // filling in the odds array
    evens[i] = evenNumber; 
    evenNumber+=2;
  }

  printArray(odds);
  printArray(evens);
}
