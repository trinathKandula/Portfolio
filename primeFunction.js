//  generates 10 random numbers and checks if they are prime or not

// for loop that will iterate 10 times
for (let i = 0; i < 10; i++) {
    // Generate a random number between 1 and 100 (inclusive)
    // Math.random() generates a random decimal between 0 and 1
    const num = Math.floor(Math.random() * 100) + 1;
    
    

    let isPrime = true;
  
    // Check if the number is 1, which is not considered prime
    if (num === 1) {
      console.log(num + " -No");
     continue;
    } 
    // Check if the number is prime or not
    else {
      
      for (let j = 2; j < num; j++) {
        if (num % j === 0) {
          isPrime = false;
          break;
        }
      }
      // Print "yes"if number is prime or else no
      if (isPrime) {
        console.log(num + " -yes.");
      } else {
        console.log(num + "-No");
      }
    }
  
}