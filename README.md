# Qtrace-app-Cebooboo
 
-------------------QTrace - Web----------------------------------------------------------
* * * * * * * * * * G E N E R A L   W O R K F L OW* * * * * * * * * * 


1. This responsive website application runs under Flask Microframework inside "Apprunner.py"
 	Apprunner.py serves as the routing agent and as well as the backend architechture of the website. Apprunner.py is basically manages all the incoming requests from different webpages and do a process on it to implement and integrate the seprate functionalities

HOW THE WEBSITE WORKS/ROUTES

1. The website is served on a local server of port 5000. It renders the html file based on the decorated route.

	@app.route("/")
	def home():
		return render_template("index.html)

the python code snippet above shows that index.html will be displayed to the browser when the user access the "/" director - which is basically the root directory.

	@app.route("/anotherPage")

this is another way to allow the user to browse from one page to another by providing them a directory in which they will be rendered on when such directory is accessed.

NOTE: The downside of this framework (Flask) however is that the javascript and css are not automatically updated when changes are made. What will happen upon trying to attempt designing the webpage with flask is that it will not display the changes. To solve this, inspect the elements and browse throught the href values for CSS and Javscript file then refresh the browser on that page ( where the CSS and Javscript Code are displayed in the website) then stop the Apprunner.py and run it again.

The above mentioned note may happen in this website as well, so if the elements seem too disoriented, consider doing the aforementioned fix above.


WALKING THROUGH THE WEB PAGES

2. All the html files are placed insed the templates folder and all CSS and JS files are inside the static folder.

@app.route("/")

As soon as the server starts and the local host is accessed, the webpage will show the "landing.html". This webpage allows the user to proceed with sign up or sign in.

When the user chooses to sign in, then the login.html will be rendered into the web browser. This is where the authentication happens using firebase authentication. This accepts email and passwords that were already registered before logging in.

@app.route("/login") - render the login.html

@app.route("/loggingIn") - receives the email and password information coming from the "/login" directory via POST request and then pass the value as a paremeter for authentication. After successful authentication, the user will then have access to the dashboard by redirecting it from "/loggingIn" directory.

@app.route("/dashboard") - where the information about COVID and can be useful for other possible infectious diseases that may come. The dashboard shows the user the following:
	*Alert Inbox - where the user can read personal messages that he/she might be involved of.
	*Heat Map - shows the frequency of visitors per establishment and spotted COVID patients
	*Report Case - Shows related articles, especially COVID.

NOTED: Heat map is supposed to be a star feature of the app were we can provide graphical information to users about the frequency of peole going out to establishments. 
	This feature is about 75% done since the following necessary procedures were already accomplished:
		1. Fetch each document in Events Collection from firebase firestore and extract the USER1ID (UID of a person) and USER2ID (UID of an establishment)
 		2. Knowng the parties involve, the establishment location is then extracted. This happens repeatedly for each document of Events.
		3. Alongside with extracting the address information involved in the Events documents, this address is also geocoded using Google Map APIs. For each longitude and latitude
 		recording the frequency of visitors in that establishment was also noted. This is done by simple, but clever, use of .get method of python dictionaries.
		4. These data will then be rendered to the Google Map API to visualize the intensity of visitors and potential risks of getting infected in that area.

	Text messaging feature is also one of the web application's star feature where it prompts everyone who have encountered a newly diagnosed COVID Positive Patient in order to make to 		more observe proper health protocols

This web version of app, however, is best used for streaming through the information that this application provides. However, the QR Scanning feature is at the mobile version.


********************************************************************SIGNIFICANT FILES THAT PLAYED IMPORTANT ROLE IN THE DEVELOPMENT********************************************************

1. Apprunner.py - Manages all routings and backend architechture of the website
2. Generator.py - Used to generate dummy data to the firebase to simulate application usage. This program generates dummy citizens, establishments, and visit events.
3. The JSON File - This is the credential key inorder to have access to google Firestore
4. data.js - a python generated file containing all longitude, latitude, address, and date of a certain event.
5. counter.py - counts the data frequency of visit in an establishment based from the "where.js" file inorder to convert to easily make projections to the heat map
6. Static and Templates Folder - Contains all the neccessary fies to display the webpage.
7. This READme.txt file.   
----------------------------------------------------------QTrace Web ----------------------------------------------------------
