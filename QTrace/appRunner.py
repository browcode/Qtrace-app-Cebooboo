from flask import Flask, render_template, redirect, url_for, request
import pyrebase
import firebase_admin
from firebase_admin import firestore, credentials
import pyqrcode
from datetime import date
import requests
import json

current = date.today().strftime("%Y")
app = Flask(__name__)

credentialLink = "qtrace-e69ae-firebase-adminsdk-jyh5z-172b1a0f98.json"
cred = credentials.Certificate(credentialLink)
firebase_admin.initialize_app(cred)
db = firestore.client()

mapquestKey ="qJKZZGpVI48SsaCyCdlM6RwVruCDdvJK"

GlobalQR = ""

firebaseConfig = {
  "apiKey": "AIzaSyCZG-tSRUuZf0dyZsSnn4tIn1dzpO7630Q",
  "authDomain": "qtrace-e69ae.firebaseapp.com",
  "databaseURL": "https://qtrace-e69ae.firebaseio.com",
  "projectId": "qtrace-e69ae",
  "storageBucket": "qtrace-e69ae.appspot.com",
  "messagingSenderId": "512293433393",
  "appId": "1:512293433393:web:8ce80ade26e95d42462510",
  "measurementId": "G-3LW0NJ3RZ9"
}

firebase = pyrebase.initialize_app(firebaseConfig)
auth = firebase.auth()
storage = firebase.storage()

@app.route("/")
def home():
    return render_template("landing.html")
@app.route("/login")
def login():
    return render_template("login.html")

@app.route("/loggingIn", methods =["POST", "GET"])
def loggingIn():
    if request.method == "POST":
        userName = request.form["username"]
        password = request.form["password"]
    else:
        userName = request.args.get("username")
        password = request.args.get("password")
    return redirect("/dashboard")

@app.route("/signUp")
def toSignUp():
    return render_template("signup.html")

@app.route("/citizenSignUp")
def citizenSignUp():
    return render_template("citizenSignUp.html", current=current)

@app.route("/establishmentSignUp")
def establishmentSignUp():
    return render_template("establishmentSignUp.html")

@app.route("/citizenCreate", methods = ["POST", "GET"])
def citizenCreate():
    if request.method == "POST":
        firstName = request.form["firstName"]
        lastName = request.form["lastName"]
        phoneNumber = request.form["phoneNumber"]
        landLineNumber = request.form["landLineNumber"]
        email = request.form["email"]
        province = request.form["province"]
        city = request.form["city"]
        brgy = request.form["brgy"]
        block = request.form["block"]
        day = request.form["day"]
        month = request.form["month"]
        year = request.form["year"]
        username = request.form["username"]
        password = request.form["password"]
        try:
            user = auth.create_user_with_email_and_password(email, password)
        except:
            return render_template("citizenSignUp.html", error="Email already exists.", province=province, city=city, brgy=brgy, block=block, firstName=firstName, lastName=lastName, phoneNumber=phoneNumber, landLineNumber=landLineNumber, username=username, day=day, month=month, year=year)
        #GlobalQR = user["localId"][:1] + "C" + user["localId"][1:]
        #user["localId"] = GlobalQR 
        doc = db.collection("User1").document(user["localId"])
        doc.set({
            "UID": user["localId"],
            "FirstName": firstName,
            "LastName": lastName,
            "BrthYear": year,
            "BrthMonth": month,
            "BrthDay": day,
            "addrCountry": "Philippines",
            "addrProvince": province,
            "addrCity": city,
            "addrBrgy": brgy,
            "addrBlock": block,
            "contactNumber": phoneNumber,
            "Landline": landLineNumber,
            "Email": email,
            "Password": password
        })
        qr = pyqrcode.create(user["localId"])
        qr.png("static/Medias/QRCodes/" + user["localId"] + ".png", scale=8)
        storage.child("QRCodes/" + user["localId"] + ".png").put("static/Medias/QRCodes/" + user["localId"] + ".png")
        return render_template("setup.html", code=user["localId"])

@app.route("/establishmentCreate", methods = ["POST", "GET"])
def establishmentCreate():  
    if request.method == "POST":
        establishmentName = request.form["establishmentName"]
        firstName = request.form["firstName"]
        lastName = request.form["lastName"]
        phoneNumber = request.form["phoneNumber"]
        landLineNumber = request.form["landLineNumber"]
        email = request.form["email"]
        province = request.form["province"]
        city = request.form["city"]
        brgy = request.form["brgy"]
        block = request.form["block"]
        username = request.form["username"]
        password = request.form["password"]
        try:
            user = auth.create_user_with_email_and_password(email, password)
        except:
            return render_template("establishmentSignUp.html", error="Email already exists.", establishmentName=establishmentName, province=province, city=city, brgy=brgy, block=block, firstName=firstName, lastName=lastName, phoneNumber=phoneNumber, landLineNumber=landLineNumber, username=username)
        doc = db.collection("User2").document(user["localId"])
        doc.set({
            "UID": user["localId"],
            "establishmentName": establishmentName,
            "FirstName": firstName,
            "LastName": lastName,
            "addrCountry": "Philippines",
            "addrProvince": province,
            "addrCity": city,
            "addrBrgy": brgy,
            "addrBlock": block,
            "contactNumber": phoneNumber,
            "Landline": landLineNumber,
            "Email": email,
            "Password": password
        })
        qr = pyqrcode.create(user["localId"])
        qr.png("static/Medias/QRCodes/" + user["localId"] + ".png", scale=8)
        storage.child("QRCodes/" + user["localId"] + ".png").put("static/Medias/QRCodes/" + user["localId"] + ".png")
        return render_template("setup.html", code=user["localId"])

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")

@app.route("/downloadImage", methods = ["POST", "GET"])
def downloadImage():
    if request.method == "POST":
        QRCode = request.form["QRCode"]
        storage.child("QRCodes/" + QRCode + ".png").download("static/Medias/QRCodes/Downloaded/" + QRCode + ".png")
    return redirect("/dashboard")

if __name__ == "__main__":
    app.run()       
