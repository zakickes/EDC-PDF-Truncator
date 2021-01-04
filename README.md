# EDC-PDF-Truncator
Internal Mac app using AppleScript and the 'Skim' app to process downloaded PDFs and move them to a server path.

Droplet type app, can be called by Firefox or user can manually 'drop' multiple files onto the app icon

This app handles two things:

    1. It renames generated PDFs to be shorter. CHECKOUT-CK-78299-cameron_beattie-202101041604.pdf becomes PM 5.40 CK-78299-cameron_beattie. Note that the original timestamp is time of download.

    2. It moves the renamed PDF to the server path.

I use a free app 'Skim' to convert the PDF into text and find the listed pickup time. No usee input is needed, everything is done below.

Script is below:

on open theDroppedItems
	repeat with aFile in theDroppedItems
		set aFile to contents of aFile
		-- Use Skim app to open PDF as a text file, find the Reservation Start Time, and save it as a var
		tell application "Skim" -- Start Skim
			open aFile -- Open PDF
			tell document 1
				set textSelection to {a reference to characters 1 thru 1000 of page 1} as string
				set fDash to offset of "Pickup Time" in textSelection -- keep time
				set lDash to offset of "M," in textSelection
				set AmPm to text (lDash - 1) through (lDash) of textSelection
				set timeHours to text (fDash + 12) through (lDash - 6) of textSelection
				set timeMinutes to text (lDash - 4) through (lDash - 3) of textSelection
				set pickupTime to AmPm & " " & timeHours & "." & timeMinutes
			end tell
			close document 1 saving no -- Close and do not save Skim document
		end tell
		-- Rename the PDF using the var generated with Skim
		tell application "Finder"
			set fileName to aFile's name
			set firstDash to offset of "-" in fileName -- Remove RESERVATION or CHECKOUT should replace with CK
			set lastDash to offset of "-20" in fileName -- Remove download timestamp
			set aFile's name to pickupTime & " " & text (firstDash + 1) through (lastDash - 1) of fileName & "." & "pdf" -- Compile filename
			set label index of aFile to 2 -- Set label to red on Mac
			-- Use server folder as destination if available, otherwise prompt for choice
			set sourceFolder to container of aFile
			try
				move aFile to alias "Volumes:RESERVATIONS:Not Pulled" -- The filepath of the server
			on error
				set theOutputFolder to choose folder with prompt "Not connected to server, please choose where to save PDF:"
				-- set theOutputFolder to "Macintosh HD:Users:  'user' :Downloads" 
				move aFile to alias theOutputFolder
			end try
		end tell
	end repeat
end open
