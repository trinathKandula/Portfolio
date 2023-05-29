// Assigning a birth day date to the variable
const birthday = '01-31-2023';

// Get the current date and parse the  string into object
const currentDate = new Date();

const birthdayDate = new Date(birthday);
birthdayDate.setHours(23,59,59);

// Check if the birthday has already passed this year
if (currentDate > birthdayDate) {
    // If so, set the birthdayDate to next year
    birthdayDate.setFullYear(currentDate.getFullYear() + 1);
}

// Calculate the difference between the current date and the birthday
const difference = birthdayDate - currentDate;

//Calculate the number of seconds, minutes, hours, days
const seconds = difference / 1000;

// Calculate the number of minutes
const minutes = seconds / 60;

const hours = minutes / 60;

const days = hours / 24;

const weeks = days / 7;

// Round down the number of weeks
const weeksInt = Math.floor(weeks);

// Calculate the remainder days after the weeks, days, minutes, seconds
const daysInt = Math.floor(days - (weeksInt * 7));

const hoursInt = Math.floor(hours - (daysInt * 24) - (weeksInt * 7 * 24));

const minutesInt = Math.floor(minutes - (hoursInt * 60) - (daysInt * 24 * 60) - (weeksInt * 7 * 24 * 60));

const secondsInt = Math.floor(seconds - (minutesInt * 60) - (hoursInt * 60 * 60) - (daysInt * 24 * 60 * 60) - (weeksInt * 7 * 24 * 60 * 60));

console.log(`there are ${weeksInt} weeks, ${daysInt} days, ${hoursInt} hours, ${minutesInt} minutes, and ${secondsInt} seconds left until my next birthday.`);
 	 