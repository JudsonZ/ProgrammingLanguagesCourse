

/*Filename: triathlon.go
                                                                                                                        AUTHOR: Judson "Zach" Thompson                                                                                          
DESCRIPTION:
        Takes user input as for how long they have excercised on each given activity
        Calculates calories burned and weight lost in pounds based on user input.

NOTES:
        Was going to include function for cleaniness purposes, will implement in later programs.




*/


package main
                                                                                                                        import                                                                                                                  (
        "fmt"
)

func main(){
        //variable declarations
        var cyclingCals, runningCals, swimmingCals int = 225, 450, 275

        var caloriesBurned, cyclingHours, runningHours, swimmingHours, poundsLost int

        //User input
        fmt.Println("Enter number of hours spent cycling: ")
        fmt.Scanln(&cyclingHours)

        fmt.Println("Enter number of hours spent running: ")
        fmt.Scanln(&runningHours)

        fmt.Println("Enter number of hours spent swimming ")
        fmt.Scanln(&swimmingHours)

                caloriesBurned = ((cyclingCals*cyclingHours)+(runningCals*runningHours)+(swimmingCals*swimmingHours))

                poundsLost = caloriesBurned/3800

 		fmt.Println("You have burned", caloriesBurned)
                fmt.Println("Weight lost in lbs. :", poundsLost)




"triathlon.go" 32L, 724B