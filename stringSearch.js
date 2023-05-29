//this script to search for a letters and peroform the opeations on string
function stringModification(str){
   // Statement to  Check if the first and last letter of the string are equal, ignoring case sensitivity
    if (str[0].toLowerCase() === str[str.length - 1].toLowerCase()) {
        let newStr = str.split("").reverse().join("");
        return newStr;
    }
else{
//If the letters are not equal, remove the first and last letter from the string
    return str.slice(1,-1)
}
}
console.log(stringModification("Triscuit"));
console.log(stringModification("Cracker"));

