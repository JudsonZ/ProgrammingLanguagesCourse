#!/usr/bin/perl
#Assignment 8
#INSTRUCTOR:   Dr.Terwilliger
#AUTHOR:        Zac Thompson
#
#PROGRAM DESCRIPTION:
#This program takes input from the user to determine the currency
#exchange rate from USD to other foreign currencies
#
#



use Scalar::Util qw(looks_like_number);
#use Switch;
#couldnt install switch.pm Therefore used if & elsif statements instead




#Begin Program
print "**********CURRENCY EXCHANGE RATE CALCULATOR**********\n";
print "Convert your U S Dollars to foreign currency\n";
#loop for whole program while exitButton ne to "N"
do{
print "Input number of US Dollars to exchange:\n";

$dollarAmount = <STDIN>;
chomp($dollarAmount);



#insures input is a number value
if (looks_like_number($dollarAmount) ne 1){
        print "ERROR: incorrect input, please input a numerical value\n";
        $dollarAmount = <STDIN>;
        chomp($dollarAmount);

}

# Creating foreign currency option menu
print "Select currency to be converted to\n";
print "enter (P) for british pounds, (M) for Mexican Pesos, (E) for Euros, and (C) Canadian leaf bux\n";
$currencySelect = <STDIN>;
chomp($currencySelect);


#switch statement
#with appropriate conversion amounts
        if ($currencySelect eq "P"){
                         $pounds = ($dollarAmount) * .73;
                         printf("Your converted amount is %.2f",$pounds);
                         print " pounds\n ";
                        }

                        elsif ($currencySelect eq "M"){
                         $pesos = ($dollarAmount) * 20.12;
                         printf("Your converted amount is %.2f",$pesos);
                         print " pesos\n ";
                        }
 elsif ($currencySelect eq "E"){
                         $euros = ($dollarAmount) * .83;
                         printf("Your converted amount is %.2f",$euros);
                         print " euros\n ";
                        }

                        elsif ($currencySelect eq "C"){
                         $leafBux = $dollarAmount * 1.27;
                         printf("Your converted amount is %.2f",$leafBux);
                         print " Leaf bux\n ";
                        } else{
                                #super hacky but if the switch.pm was on this server it wouldnt be neccessary for error handling
                                do{
                                print "Invalid Selection \n";
                                print "enter (P) for british pounds, (M) for Mexican Pesos, (E) for Euros, and (C) Canadian leaf bux\n";
                                $currencySelect = <STDIN>;
                                } while ($currencySelect ne M or P or E or C);
                                        if ($currencySelect eq "P"){
                                         $pounds = ($dollarAmount) * .73;
                                         printf("Your converted amount is %.2f",$pounds);
                                         print " pounds\n ";
                                        }
                                        elsif ($currencySelect eq "M"){
                                         $pesos = ($dollarAmount) * 20.12;
                                         printf("Your converted amount is %.2f",$pesos);
                                         print " pesos\n ";
                                        }
 elsif ($currencySelect eq "E"){
                                         $euros = ($dollarAmount) * .83;
                                         printf("Your converted amount is %.2f",$euros);
                                         print " euros\n ";
                                        }
                                        elsif ($currencySelect eq "C"){
                                         $leafBux = $dollarAmount * 1.27;
                                         printf("Your converted amount is %.2f",$leafBux);
                                         print " Leaf bux\n ";
                                        }
                                }
print "\n";
print "Do you want to exchange again? (Y/N)?";
$exitButton = "Y";
$exitButton = <STDIN>;
chomp($exitButton);                                                                                                               
}while($exitButton ne "N");
print "THANK YOU FOR YOUR BUSINESS :D\n";