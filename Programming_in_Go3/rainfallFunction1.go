/*
TITLE:          Assignment 7 rainfall program      

		first function program utter failure******                                                                                                                                                                                            AUTHOR:         JUDSON zach THOMPSON

DESCRIPTION:    Uses 'dataFileFloat' package to load into array and return
                the list
*/

package main

import (
        "fmt"
        "dataFloatFile"
        "log"
)

func main() {
        lines, err := dataFloatFile.GetFloats("rainfall.txt")
        if err != nil {
                log.Fatal(err)
        }





}