--Scenario: Should I keep drinking coffee today?

--If it's before 3 pm, I've had less than 3 cups of coffee already, and I have a busy day ahead, then I can keep drinking coffee today. Otherwise, I should stop drinking any more coffee today.

--Variable definition:
local currentTime, timeFormat, bdtxt, varlist, coffeeDranken, busyday

--Variables Initialization:
currentTime = os.time
timeFormat = (os.date("%H:%M:%S"))
bdtxt = "is"
--varlist = {"coffeeDranken", "busyday", "bdtxt"}

--User Inputs
print("How many coffee have you drank today? ")
io.flush()
coffeeDranken = io.read("*n")
print("Is Today is a busy day? Leave false for No: ")
io.flush()
busyday = io.read()
print("")
--print(varlist)

--Code:
function Code(coffeeDranken, busyday, bdtxt)
    if(busyday ~= true)
    then
        bdtxt = "isn't"
        
    elseif(currentTime.tm_hour < 15) and (coffeeDranken < 3) or (busyday == true)
    then
        print("Ive had", coffeeDranken, "cups of coffee already, its", timeFormat, "and there", bdtxt, "a busy day ahead, So I can keep drinking coffee.\n")    
    else
        print("Ive had", coffeeDranken, "cups of coffee already, its", timeFormat, "and there", bdtxt, "a busy day ahead, So I shouldn't keep drinking coffee today.\n")
    end
end

--Call Function
Code(coffeeDranken, busyday, bdtxt)

--End of Program