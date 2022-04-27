/*
AUTHOR: JUDSON "Zach" THOMPSON                                                                                                                                                                                                                                                                                            DESCRIPTION:
        This program intakes name and number of desired print copies
        from customer and prints their name along with the total cost associated
        with desired number of copies.

CURRENT SETTING:
        10 cents per copy for first 200 copies and 5 cents for every copy thereafter
*/
package main
import ( "fmt")

func main(){

        //variable declaration
        var customer string = "z"
        var printCost, discountPrint, numOfCopies int = 10, 5, 0
        var totalCost float32

        //user input

        fmt.Println("Enter Customer name:   ")
        fmt.Scanln(&customer)

        fmt.Println("Enter number of copies:   ")
        fmt.Scanln(&numOfCopies)

        //calculation of total bill

        if numOfCopies <= 200{
                printCost = numOfCopies * 10
        } else {
                printCost = printCost + (2000)
                printCost = printCost + ((numOfCopies-200)*discountPrint)
        }

        //conversion from cents to dollars
        totalCost = float32(printCost) / 100

        fmt.Println("Customer Name:", customer)
        fmt.Println("Total Print Cost: ", totalCost)

}
~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            ~                                                                                                                                                            "copyCost.go" 45L, 1002B