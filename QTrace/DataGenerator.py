import urllib.request, urllib.parse, urllib.error
import json
import ssl
import uuid
import re
import random
import pyrebase
import firebase_admin
from firebase_admin import firestore, credentials
import datetime

url = "https://api.namefake.com/english-philippines/"

credentialLink = "qtrace-e69ae-firebase-adminsdk-jyh5z-172b1a0f98.json"
cred = credentials.Certificate(credentialLink)
firebase_admin.initialize_app(cred)
db = firestore.client()

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

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE


UUID = ""
firstName = ""
lastName = ""
birthYear = ""
birthMonth = ""
birthDay = ""
addrCountry = ""
addrProvince = ""
addrCity = ""
addrBrgy = ""
addrBlock = ""
contactNumber = ""
Landline = ""
Email = ""

counter = 0

City = ["Cebu City", "Lapu-Lapu City", "Mandaue City", "Talisay City"]
CebuCity = ["Adlaon", "Agsungot", "Apas", "Babag", "Bacayan", "Banilad", "Basak Pardo", "Basak San Nicolas", "Binaliw", "Bonbon", "Budlaan", "Buhisan", "Bulacao", "Buot", "Busay", "Calamba", "Cambinocot", "Capitol Site", "Carreta", "Cogon Ramos", "Cogon Pardo", "Day‑as", "Duljo Fatima", "Ermita", "Guadalupe", "Guba", "Hipodromo", "Inayawan", "Kalubihan", "Kalunasan", "Kamagayan", "Kamputhaw (Camputhaw)", "Kasambagan", "Kinasang‑an Pardo", "Labangon", "Lahug", "Lorega‑San Miguel", "Lusaran", "Luz", "Mabini", "Mabolo", "Malubog", "Mambaling", "Pahina Central", "Pahina San Nicolas", "Pamutan", "Pari-an", "Paril", "Pasil", "Pit-os", "Poblacion Pardo", "Pulangbato", "Pung-ol Sibugay", "Punta Princesa", "Quiot", "Sambag I", "Sambag II", "San Antonio", "San Jose", "San Nicolas Proper", "San Roque", "Santa Cruz", "Santo Niño", "Sapangdaku", "Sawang Calero", "Sinsin", "Sirao", "Suba", "Sudlon I", "Sudlon II", "T. Padilla (Villa Gonzalo)", "Tabunan","Tagba-o", "Talamban", "Taptap", "Tejero","Tinago","Tisa", "To-ong","Zapatera"]
LapuLapuCity = ["Babag", "Bankal", "Baring", "Basak", "Buaya", "Calawisan", "Canjulao", "Caubian", "Caw‑oy", "Cawhagan", "Gun‑ob", "Ibo", "Looc", "Mactan", "Maribago", "Marigondon", "Pajac", "Pajo", "Pangan‑an", "Poblacion", "Punta Engaño", "Pusok", "Sabang", "San Vicente", "Santa Rosa", "Subabasbas", "Talima", "Tingo", "Tungasan"]
MandaueCity =["Bakilid", "Banilad", "Basak", "Cabancalan", "Cambaro", "Canduman", "Casili", "Casuntingan", "Centro (Poblacion)", "Cubacub", "Guizo", "Ibabao-Estancia", "Jagobiao", "Labogon", "Looc", "Maguikay", "Mantuyong", "Opao", "Paknaan", "Pagsabungan", "Subangdaku", "Tabok", "Tawason", "Tingub", "Tipolo", "Umapad"]
TalisayCity = ["Bulacao", "Cadulawan", "Camp IV", "Cansojong", "Dumlog", "Jaclupan", "Lagtang", "Lawaan I", "Lawaan II", "Lawaan III", "Linao", "Maghaway", "Manipis", "Mohon", "Poblacion", "Pooc", "San Isidro", "San Roque", "Tabunok", "Tangke", "Tapul"]
Establishments = ["Watsons", "Dimsum Break", "Chowking", "Visayan School Supplies", "7/11", "Shell", "La Nueva supermarket", "Mercury Drug", "Eastwest Unibank", "MLhuillier", "Cebuana Lhuillier"]
Alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

fakeType = input("[C]itizen or [E]stablishment or [e]vent? :")

if fakeType == "C":
    ID1 = int(input("Enter the last primary key in the database so I'll add 1 to it: ")) + 1
    dataCount = input("How many fake citizens do you want?")
    while counter < int(dataCount):
        #Get Personal Data
        uh = urllib.request.urlopen(url, context=ctx)
        data = uh.read().decode()
        try:
            js = json.loads(data)
        except:
            js = None
        if len(js["name"].split()) == 2:
            Landline = ""
            addrBlock = ""
            firstName = js["name"].split()[0]
            lastName = js["name"].split()[1]
            birthYear = js["birth_data"].split("-")[0]
            birthMonth = js["birth_data"].split("-")[1]
            birthDay = js["birth_data"].split("-")[2]
            addrCountry = "Philippines"
            addrProvince = "Cebu"
            #get City
            x = random.randint(0,3)
            addrCity = City[x]
            if x == 0:
                y = random.randint(0, len(CebuCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 1:
                y = random.randint(0, len(LapuLapuCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 2:
                y = random.randint(0, len(MandaueCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 3:
                y = random.randint(0, len(TalisayCity)-1)
                addrBrgy = CebuCity[y]
            #generate address block
            for i in range(3):
                x = random.randint(0,1)
                if (x == 0): #letter
                    y = random.randint(0, len(Alphabet)-1)
                    addrBlock += Alphabet[y]
                else:
                    addrBlock += str(random.randint(0,9))
            addrBlock += "-"
            x = random.randint(0, len(Alphabet)-1)
            addrBlock +=Alphabet[x]

            #generate phone number
            contactNumber = "09"
            for i in range(9):
                contactNumber += str(random.randint(0,9))
            #generate landline
            for i in range(3):
                Landline += str(random.randint(0,9))
            Landline += "-"
            for i in range(4):
                Landline += str(random.randint(0,9))
            Email = js["email_u"] + "@gmail.com"
            password = js["password"]
            user = auth.create_user_with_email_and_password(Email, password)
            doc = db.collection("User1").document(str(ID1))
            doc.set({
            "PRIMARYKEY": ID1,
            "USERID": user["localId"],
            "FirstName": firstName,
            "LastName": lastName,
            "BrthYear": birthYear,
            "BrthMonth": birthMonth,
            "BrthDay": birthDay,
            "addrCountry": addrCountry,
            "addrProvince": addrProvince,
            "addrCity": addrCity,
            "addrBrgy": addrBrgy,
            "addrBlock": addrBlock,
            "contactNumber": contactNumber,
            "Landline": Landline,
            "Email": Email,
            "Password": password
            })
            counter = counter + 1
            ID1 = ID1 + 1
elif fakeType == "E":
    dataCount = int(input("How many fake establishments do you want?"))
    ID2 = int(input("Enter the last primary key in the database so I'll add 1 to it: ")) + 1
    while counter < dataCount:
        uh = urllib.request.urlopen(url, context=ctx)
        data = uh.read().decode()
        try:
            js = json.loads(data)
        except:
            js = None
        if len(js["name"].split()) == 2 > 0:
            Landline = ""
            addrBlock = ""
            firstName = js["name"].split()[0]
            lastName = js["name"].split()[1]
            addrCountry = "Philippines"
            addrProvince = "Cebu"
            #get City
            x = random.randint(0,3)
            addrCity = City[x]
            if x == 0:
                y = random.randint(0, len(CebuCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 1:
                y = random.randint(0, len(LapuLapuCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 2:
                y = random.randint(0, len(MandaueCity)-1)
                addrBrgy = CebuCity[y]
            elif x == 3:
                y = random.randint(0, len(TalisayCity)-1)
                addrBrgy = CebuCity[y]
            #generate address block
            for i in range(3):
                x = random.randint(0,1)
                if (x == 0): #letter
                    y = random.randint(0, len(Alphabet)-1)
                    addrBlock += Alphabet[y]
                else:
                    addrBlock += str(random.randint(0,9))
            addrBlock += "-"
            x = random.randint(0, len(Alphabet)-1)
            addrBlock +=Alphabet[x]

            #generate phone number
            contactNumber = "09"
            for i in range(9):
                contactNumber += str(random.randint(0,9))
            #generate landline
            for i in range(3):
                Landline += str(random.randint(0,9))
            Landline += "-"
            for i in range(4):
                Landline += str(random.randint(0,9))
            Email = js["email_u"] + "@gmail.com"
            password = js["password"]
            #generate establishment name
            x = random.randint(0, len(Establishments)-1)
            establishmentName = Establishments[x]
            user = auth.create_user_with_email_and_password(Email, password)
            doc = db.collection("User2").document(str(ID2))
            doc.set({
            "PRIMARYKEY": ID2,
            "USER2ID": user["localId"],
            "establishmentName": establishmentName,
            "FirstName": firstName,
            "LastName": lastName,
            "addrCountry": addrCountry,
            "addrProvince": addrProvince,
            "addrCity": addrCity,
            "addrBrgy": addrBrgy,
            "addrBlock": addrBlock,
            "contactNumber": contactNumber,
            "Landline": Landline,
            "Email": Email,
            "Password": password
            })
            ID2 = ID2 + 1
            counter = counter + 1


elif fakeType == "e":
    dataCount = int(input("How many fake events do you want?"))
    ID3 = int(input("Enter the last primary key in the database so I'll add 1 to it: ")) + 1
    print(" I N   N U M B E R   F O R M A T")
    startYear = int(input("Start Year: "))
    startMonth = int(input("Start Month: "))
    startDay = int(input("Start Day: "))
    rangeDaysOfVisit = int(input("Enter the range of days of visit: "))
    maxTimeofVisit = int(input("Enter maximum time (minutes) of visit: "))
    startDateTime = datetime.datetime(startYear, startMonth, startDay)
    while counter < dataCount:
        personId = random.randint(1,100)
        establishmentID = random.randint(1,10)
        doc = db.collection("User1").document(str(personId))
        user1Info = doc.get().to_dict()
        user1ID = user1Info["USERID"]
        doc = db.collection("User2").document(str(establishmentID))
        user2Info = doc.get().to_dict()
        user2ID = user2Info["USER2ID"]
        endTime = random.randint((startYear*365+startMonth*30+startDay), (startYear*365+startMonth*30+startDay) + rangeDaysOfVisit)
        DateTime = datetime.datetime(int(endTime/365), int(endTime%365/30), (int(endTime%365%30)) if (int(endTime%365%30)) != 0 else 1 )
                                #8:00   22:00 - maximum time of visit (kay di pede malapas sa store hours)
        timeIn = random.randint(28800, 79200-maxTimeofVisit)
        timeOfVisit = random.randint(0, maxTimeofVisit*60)
        timeOut = random.randint(timeIn, timeIn+timeOfVisit)
        timeInTimeStamp = datetime.time(int(timeIn/3600),int(timeIn%3600/60),timeIn%60)
        timeOutTimeStamp = datetime.time(int(timeOut/3600),int(timeOut%3600/60),timeOut%60)
        print("Day of Visit:", DateTime.strftime("%x"))
        print("time in:", timeInTimeStamp, "\ntime out:", timeOutTimeStamp)

        # upload to firebase
        doc = db.collection("Events").document(str(ID3))
        doc.set({
        "PRIMARYKEY": ID3,
        "USER1ID": user1ID,
        "USER2ID": user2ID,
        "DATE": str(DateTime.strftime("%x")),
        "timeIn": str(timeInTimeStamp),
        "timeOut": str(timeOutTimeStamp),
        "UPLOADED": "T" 
        })
        ID3 = ID3 + 1
        counter = counter + 1

    