function sumLongestStreak(arr) {
        // Initializing the variables max streak and max sum
        let maxStreak = 0;
        let maxSum = 0;
        
        // Initializing current streak and sum
        let currentStreak = 1;
        let currentSum = arr[0];
      
        // Iterate through the array 
        for (let i = 1; i < arr.length; i++) {
          // statement to check  if the current element incerasing with a difference of 1
          if (arr[i] - arr[i - 1] === 1) {
            // If so, add the current element to the current sum and increment the current streak
            currentStreak++;
            currentSum += arr[i];
          } else {
            // If the incresing differenc is not equal to 1, it checks if the current streak is greater than the max streak
            if (currentStreak > maxStreak) {
              maxStreak = currentStreak;
              maxSum = currentSum;
            }
            // If the current streak is equal to the max streak, take the maximum of the current sum and the max sum and assign it to maxSum
            if (currentStreak === maxStreak) {
              maxSum = Math.max(maxSum, currentSum);
            }
            // Reset the current streak and sum
            currentStreak = 1;
            currentSum = arr[i];
          }
        }
      
        // Check if the last streak is greater than the max streak, if so, update the max streak and max sum
        if (currentStreak > maxStreak) {
          maxStreak = currentStreak;
          maxSum = currentSum;
        }
        // If the last streak is equal to the max streak, take the maximum of the current sum and the max sum and assign it to maxSum
        if (currentStreak === maxStreak) {
          maxSum = Math.max(maxSum, currentSum);
        }
        // Check if max streak is less than 2, if so return 0 else return maxSum
        if(maxStreak < 2) return 0
        else return maxSum;
      }
      
 console.log(sumLongestStreak([1, 2, 3, 6, 9, 34, 2, 6] ));
 console.log(sumLongestStreak([3, 2, 7, 5, 6, 7, 3, 8, 9, 10, 23, 2, 1, 2, 3]));
 console.log(sumLongestStreak([100, 101, 102,101, 3, 4, 5, 6, 9])); 
 console.log(sumLongestStreak([1,5,9,8]));
 