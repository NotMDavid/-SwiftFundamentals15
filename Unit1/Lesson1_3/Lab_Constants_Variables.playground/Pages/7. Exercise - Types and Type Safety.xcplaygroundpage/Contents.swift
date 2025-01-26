/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 9.25
var secondDecimal = 11.25

//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true
// firstDecimal = trueOrFalse
print("It does not compile because they're both seperate values, firstDecimal as a Double and trueOrFalse as a boolean.")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var StrVal = "Pizza"
// firstDecimal = StrVal
print("It doesn't compile because they are again seperate values, with StrVal being a String value and firstDecimal as a Double")


//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var num = 9
// firstDecimal = num
print("It doesn't work because they are seperate values, num is a integer, while firstDecimal is a double")

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
