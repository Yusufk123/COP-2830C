import time
from xmlrpc.client import boolean

#Scenario: Should I keep drinking coffee today?

#If it's before 3 pm, I've had less than 3 cups of coffee already, and I have a busy day ahead, then I can keep drinking coffee today. Otherwise, I should stop drinking any more coffee today.

#Variables:
currentTime = time.localtime()
timeFormat = time.strftime("%I:%M %p", currentTime)
bdtxt = "is"

#User Inputs
coffeeDranken = int(input("How many coffee have you drank today? "))
busyday = bool(input("Is Today is a busy day? Leave Blank for No: "))

#print("It is currently", timeFormat, "\n")

#Code:
if  busyday != True:
        bdtxt = "isn't"
        
if (currentTime.tm_hour < 15 and coffeeDranken < 3) or busyday == True:
    print("Ive had", coffeeDranken, "cups of coffee already, its", timeFormat, "and there", bdtxt, "a busy day ahead, So I can keep drinking coffee.\n")    
else:
    print("Ive had", coffeeDranken, "cups of coffee already, its", timeFormat, "and there", bdtxt, "a busy day ahead, So I shouldn't keep drinking coffee today.\n")