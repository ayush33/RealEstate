<%@page import="jdk.internal.org.objectweb.asm.tree.analysis.Value"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/external.js"></script> 
</head>
<body>
<%
String type=request.getParameter("value");
if(type.equals("Apartment")||type.equals("House"))
{
%>
 <div class="row">
               <div class="col-lg-20">
                  <label for="price">Price</label>
             <input type="text" class="form-control" name="price">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
                  <label for="area">Area in Square Feet</label>
             <input type="text" class="form-control" name="area">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
               <label for="bhk">BHK</label>
              <select class="form-control" name="bhk">
               <option>BHK</option>
               <option>1</option>
               <option>2</option>
               <option>3</option>
               <option>4</option>
               <option>5 and more</option>
               
               </select>
               </div>
               </div>
                 <div class="row">
               <div class="col-lg-20">
               <label for="furnished">Furnished</label>
              <select class="form-control" name="furnished">
               <option>Select</option>
               <option>Yes</option>
               <option>N0</option>
                </select>
               </div>
               </div>
              <div class="row">
               <div class="col-lg-20">
                  <label for="description">Description</label>
              <textarea class="form-control" rows="5" name="description"></textarea>
                </div>
               </div>
               <br>
               <br>
                  <div class="row">
               <div class="col-lg-20">
               <input type="file" name="photo"/>
               
                 <input type="file" name="photo1"/>
                   <input type="file" name="photo2"/>
                     <input type="file" name="photo3"/>
               </div>
               </div>
                  <div class="row">
               <div class="col-lg-20">
               <label for="city">City</label>
               <%String[] cities={"Mumbai","Delhi","Bengaluru","Ahmedabad","Gandhinagar","Hyderabad","Chennai",  "Kolkata",  "Pune","Jaipur","Surat","Lucknow",  "Kanpur",  "Nagpur","Patna","Indore",  "Thane","Bhopal",  "Visakhapatnam",  "Vadodara","Firozabad",  "Ludhiana","Rajkot","Agra",  "Siliguri",  "Nashik","Faridabad","Patiala","Meerut",  "Kalyan-Dombivali","Vasai-Virar","Varanasi",  "Srinagar",  "Dhanbad","Jodhpur","Amritsar","Raipur","Allahabad",  "Coimbatore",  "Jabalpur",  "Gwalior",  "Vijayawada",  "Madurai",  "Guwahati","Chandigarh","Hubli-Dharwad","Amroha",  "Moradabad",  "Gurgaon","Aligarh",  "Solapur","Ranchi","Jalandhar","Tiruchirappalli",  "Bhubaneswar","Salem",  "Warangal","Mira-Bhayandar","Thiruvananthapuram","Bhiwandi","Saharanpur",  "Guntur",  "Amravati","Bikaner","Noida",  "Jamshedpur","Bhilai Nagar","Cuttack","Kochi","Udaipur","Bhavnagar","Dehradun","Asansol",  "Nanded-Waghala","Ajmer","Jamnagar","Ujjain",  "Sangli","Loni",  "Jhansi",  "Pondicherry","Nellore",  "Jammu",  "Belagavi","Raurkela","Mangaluru","Tirunelveli",  "Malegaon","Gaya","Tiruppur",  "Davanagere","Kozhikode","Akola","Kurnool",  "Bokaro Steel City","Rajahmundry",  "Ballari","Agartala","Bhagalpur","Latur","Dhule","Korba","Bhilwara","Brahmapur","Mysore","Muzaffarpur","Ahmednagar","Kollam","Raghunathganj",  "Bilaspur","Shahjahanpur",  "Thrissur","Alwar","Kakinada",  "Nizamabad","Sagar",  "Tumkur","Hisar","Rohtak","Panipat","Darbhanga","Kharagpur",  "Aizawl","Ichalkaranji","Tirupati",  "Karnal","Bathinda","Rampur",  "Shivamogga","Ratlam",  "Modinagar",  "Durg","Shillong","Imphal","Hapur",  "Ranipet",  "Anantapur",  "Arrah","Karimnagar","Parbhani","Etawah",  "Bharatpur","Begusarai","New Delhi","Chhapra","Kadapa",  "Ramagundam","Pali","Satna",  "Vizianagaram",  "Katihar","Hardwar","Sonipat","Nagercoil",  "Thanjavur",  "Murwara (Katni)",  "Naihati",  "Sambhal",  "Nadiad","Yamunanagar","English Bazar",  "Eluru",  "Munger","Panchkula","Raayachuru","Panvel","Deoghar","Ongole",  "Nandyal",  "Morena",  "Bhiwani","Porbandar","Palakkad","Anand","Purnia","Baharampur",  "Barmer","Morvi","Orai",  "Bahraich",  "Sikar","Vellore",  "Singrauli",  "Khammam","Mahesana","Silchar","Sambalpur","Rewa",  "Unnao",  "Hugli-Chinsurah",  "Raiganj",  "Phusro","Adityapur","Alappuzha","Bahadurgarh","Machilipatnam",  "Rae Bareli",  "Jalpaiguri",  "Bharuch","Pathankot","Hoshiarpur","Baramula",  "Adoni",  "Jind","Tonk","Tenali",  "Kancheepuram",  "Vapi","Sirsa","Navsari","Mahbubnagar","Puri","Robertson Pet","Erode",  "Batala","Haldwani-cum-Kathgodam","Vidisha",  "Saharsa","Thanesar","Chittoor",  "Veraval","Lakhimpur",  "Sitapur",  "Hindupur",  "Santipur",  "Balurghat",  "Ganjbasoda",  "Moga","Proddatur",  "Srinagar","Medinipur",  "Habra",  "Sasaram","Hajipur","Bhuj","Shivpuri",  "Ranaghat",  "Shimla",  "Tiruvannamalai",  "Kaithal","Rajnandgaon","Godhra","Hazaribag","Bhimavaram",  "Mandsaur",  "Dibrugarh","Kolar","Bankura",  "Mandya","Dehri-on-Sone","Madanapalle",  "Malerkotla","Lalitpur",  "Bettiah","Pollachi",  "Khanna","Neemuch",  "Palwal","Palanpur","Guntakal",  "Nabadwip",  "Udupi","Jagdalpur","Motihari","Pilibhit",  "Dimapur","Mohali","Sadulpur","Rajapalayam",  "Dharmavaram",  "Kashipur","Sivakasi",  "Darjiling",  "Chikkamagaluru","Gudivada",  "Baleshwar Town","Mancherial","Srikakulam",  "Adilabad","Yavatmal","Barnala","Nagaon","Narasaraopet",  "Raigarh","Roorkee","Valsad","Ambikapur","Giridih","Chandausi",  "Purulia",  "Patan","Bagaha","Hardoi ",  "Achalpur","Osmanabad","Deesa","Nandurbar","Azamgarh",  "Ramgarh","Firozpur","Baripada Town","Karwar","Siwan","Rajampet",  "Pudukkottai",  "Anantnag",  "Tadpatri",  "Satara","Bhadrak","Kishanganj","Suryapet","Wardha","Ranebennuru","Amreli","Neyveli (TS)",  "Jamalpur","Marmagao","Udgir","Tadepalligudem",  "Nagapattinam",  "Buxar","Aurangabad","Jehanabad","Phagwara","Khair",  "Sawai Madhopur","Kapurthala","Chilakaluripet",  "Aurangabad","Malappuram","Rewari","Nagaur","Sultanpur",  "Nagda",  "Port Blair",  "Lakhisarai","Panaji","Tinsukia","Itarsi",  "Kohima","Balangir","Nawada","Jharsuguda","Jagtial","Viluppuram",  "Amalner","Zirakpur","Tanda",  "Tiruchengode",  "Nagina",  "Yemmiganur",  "Vaniyambadi",  "Sarni",  "Theni Allinagaram",  "Margao","Akot","Sehore",  "Mhow Cantonment",  "Kot Kapura","Makrana","Pandharpur","Miryalaguda","Shamli",  "Seoni",  "Ranibennur","Kadiri",  "Shrirampur","Rudrapur","Parli","Najibabad",  "Nirmal","Udhagamandalam",  "Shikohabad",  "Jhumri Tilaiya","Aruppukkottai",  "Ponnani","Jamui","Sitamarhi","Chirala",  "Anjar","Karaikal","Hansi","Anakapalle",  "Mahasamund","Faridkot","Saunda","Dhoraji","Paramakudi",  "Balaghat",  "Sujangarh","Khambhat","Muktsar","Rajpura","Kavali",  "Dhamtari","Ashok Nagar",  "Sardarshahar","Mahuva","Bargarh","Kamareddy","Sahibganj","Kothagudem","Ramanagaram","Gokak","Tikamgarh",  "Araria","Rishikesh","Shahdol",  "Medininagar (Daltonganj)","Arakkonam",  "Washim","Sangrur","Bodhan","Fazilka","Palacole",  "Keshod","Sullurpeta",  "Wadhwan","Gurdaspur","Vatakara","Tura","Narnaul","Kharar","Yadgir","Ambejogai","Ankleshwar","Savarkundla","Paradip","Virudhachalam",  "Kanhangad","Kadi","Srivilliputhur",  "Gobindgarh","Tindivanam",  "Mansa","Taliparamba","Manmad","Tanuku",  "Rayachoti",  "Virudhunagar",  "Koyilandy","Jorhat","Karur",  "Valparai",  "Srikalahasti",  "Neyyattinkara","Bapatla",  "Fatehabad","Malout","Sankarankovil",  "Tenkasi",  "Ratnagiri","Rabkavi Banhatti","Sikandrabad",  "Chaibasa","Chirmiri","Palwancha","Bhawanipatna","Kayamkulam","Pithampur",  "Nabha","Shahabad, Hardoi",  "Dhenkanal","Uran Islampur","Gopalganj","Bongaigaon City","Palani",  "Pusad","Sopore",  "Pilkhuwa",  "Tarn Taran","Renukoot",  "Mandamarri","Shahabad","Barbil","Koratla","Madhubani","Arambagh",  "Gohana","Ladnu","Pattukkottai",  "Sirsi","Sircilla","Tamluk",  "Jagraon","AlipurdUrban Agglomerationr",  "Alirajpur",  "Tandur","Naidupet",  "Tirupathur",  "Tohana","Ratangarh","Dhubri","Masaurhi","Visnagar","Vrindavan",  "Nokha","Nagari",  "Narwana","Ramanathapuram",  "Ujhani",  "Samastipur","Laharpur",  "Sangamner","Nimbahera","Siddipet","Suri",  "Diphu","Jhargram",  "Shirpur-Warwade","Tilhar",  "Sindhnur","Udumalaipettai",  "Malkapur","Wanaparthy","Gudur",  "Kendujhar","Mandla",  "Mandi",  "Nedumangad","North Lakhimpur","Vinukonda",  "Tiptur","Gobichettipalayam",  "Sunabeda","Wani","Upleta","Narasapuram",  "Nuzvid",  "Tezpur","Una","Markapur",  "Sheopur",  "Thiruvarur",  "Sidhpur","Sahaswan",  "Suratgarh","Shajapur",  "Rayagada","Lonavla","Ponnur",  "Kagaznagar","Gadwal","Bhatapara","Kandukur",  "Sangareddy","Unjha","Lunglei","Karimganj","Kannur","Bobbili",  "Mokameh","Talegaon Dabhade","Anjangaon","Mangrol","Sunam","Gangarampur",  "Thiruvallur",  "Tirur","Rath",  "Jatani","Viramgam","Rajsamand","Yanam","Kottayam","Panruti",  "Dhuri","Namakkal",  "Kasaragod","Modasa","Rayadurg",  "Supaul","Kunnamkulam","Umred","Bellampalle","Sibsagar","Mandi Dabwali","Ottappalam","Dumraon","Samalkot",  "Jaggaiahpet",  "Goalpara","Tuni",  "Lachhmangarh","Bhongir","Amalapuram",  "Firozpur Cantt.","Vikarabad","Thiruvalla","Sherkot",  "Palghar","Shegaon","Jangaon","Bheemunipatnam",  "Panna",  "Thodupuzha","KathUrban Agglomeration",  "Palitana","Arwal","Venkatagiri",  "Kalpi",  "Rajgarh (Churu)","Sattenapalle",  "Arsikere","Ozar","Thirumangalam",  "Petlad","Nasirabad","Phaltan","Rampurhat",  "Nanjangud","Forbesganj","Tundla",  "BhabUrban Agglomeration","Sagara","Pithapuram",  "Sira","Bhadrachalam","Charkhi Dadri","Chatra","Palasa Kasibugga",  "Nohar","Yevla","Sirhind Fatehgarh Sahib","Bhainsa","Parvathipuram",  "Shahade","Chalakudy","Narkatiaganj","Kapadvanj","Macherla",  "Raghogarh-Vijaypur",  "Rupnagar","Naugachhia","Sendhwa",  "Byasanagar","Sandila",  "Gooty",  "Salur",  "Nanpara",  "Sardhana",  "Vita","Gumia","Puttur","Jalandhar Cantt.","Nehtaur",  "Changanassery","Mandapeta",  "Dumka","Seohara",  "Umarkhed","Madhupur","Vikramasingapuram",  "Punalur","Kendrapara","Sihor","Nellikuppam",  "Samana","Warora","Nilambur","Rasipuram",  "Ramnagar","Jammalamadugu",  "Nawanshahr","Thoubal","Athni","Cherthala","Sidhi",  "Farooqnagar","Peddapuram",  "Chirkunda","Pachora","Madhepura","Pithoragarh","Tumsar","Phalodi","Tiruttani",  "Rampura Phul","Perinthalmanna","Padrauna",  "Pipariya",  "Dalli-Rajhara","Punganur",  "Mattannur","Mathura",  "Thakurdwara",  "Nandivaram-Guduvancheri",  "Mulbagal","Manjlegaon","Wankaner","Sillod","Nidadavole",  "Surapura","Rajagangapur","Sheikhpura","Parlakhemundi","Kalimpong",  "Siruguppa","Arvi","Limbdi","Barpeta","Manglaur","Repalle",  "Mudhol","Shujalpur",  "Mandvi","Thangadh","Sironj",  "Nandura","Shoranur","Nathdwara","Periyakulam",  "Sultanganj","Medak","Narayanpet","Raxaul Bazar","Rajauri",  "Pernampattu",  "Nainital","Ramachandrapuram",  "Vaijapur","Nangal","Sidlaghatta","Punch",  "Pandhurna",  "Wadgaon Road","Talcher","Varkala","Pilani","Nowgong",  "Naila Janjgir","Mapusa","Vellakoil",  "Merta City","Sivaganga",  "Mandideep",  "Sailu","Vyara","Kovvur",  "Vadalur",  "Nawabganj",  "Padra","Sainthia",  "Siana",  "Shahpur","Sojat","Noorpur",  "Paravoor","Murtijapur","Ramnagar","Sundargarh","Taki",  "Saundatti-Yellamma","Pathanamthitta","Wadi","Rameshwaram",  "Tasgaon","Sikandra Rao",  "Sihora",  "Tiruvethipuram",  "Tiruvuru",  "Mehkar","Peringathur","Perambalur",  "Manvi","Zunheboto","Mahnar Bazar","Attingal","Shahbad","Puranpur",  "Nelamangala","Nakodar","Lunawada","Murshidabad",  "Mahe","Lanka","Rudauli",  "Tuensang","Lakshmeshwar","Zira","Yawal","Thana Bhawan",  "Ramdurg","Pulgaon","Sadasivpet","Nargund","Neem-Ka-Thana","Memari",  "Nilanga","Naharlagun",  "Pakaur","Wai","Tarikere","Malavalli","Raisen",  "Lahar",  "Uravakonda",  "Savanur","Sirohi","Udhampur",  "Umarga","Pratapgarh","Lingsugur","Usilampatti",  "Palia Kalan",  "Wokha","Rajpipla","Vijayapura","Rawatbhata","Sangaria","Paithan","Rahuri","Patti","Zaidpur",  "Lalsot","Maihar",  "Vedaranyam",  "Nawapur","Solan",  "Vapi","Sanawad",  "Warisaliganj","Revelganj","Sabalgarh",  "Tuljapur","Simdega","Musabani","Kodungallur","Phulabani","Umreth","Narsipatnam",  "Nautanwa",  "Rajgir","Yellandu","Sathyamangalam",  "Pilibanga","Morshi","Pehowa","Sonepur","Pappinisseri","Zamania",  "Mihijam","Purna","Puliyankudi",  "Shikarpur, Bulandshahr",  "Umaria",  "Porsa",  "Naugawan Sadat",  "Fatehpur Sikri",  "Manuguru","Udaipur","Pipar City","Pattamundai","Nanjikottai",  "Taranagar","Yerraguntla",  "Satana","Sherghati","Sankeshwara","Madikeri","Thuraiyur",  "Sanand","Rajula","Kyathampalle","Shahabad, Rampur",  "Tilda Newra","Narsinghgarh",  "Chittur-Thathamangalam","Malaj Khand",  "Sarangpur",  "Robertsganj",  "Sirkali",  "Radhanpur","Tiruchendur",  "Utraula",  "Patratu","Vijainagar, Ajmer","Periyasemur",  "Pathri","Sadabad",  "Talikota","Sinnar","Mungeli","Sedam","Shikaripur","Sumerpur","Sattur",  "Sugauli","Lumding","Vandavasi",  "Titlagarh","Uchgaon","Mokokchung","Paschim Punropara",  "Sagwara","Ramganj Mandi","Tarakeswar",  "Mahalingapura","Dharmanagar","Mahemdabad","Manendragarh","Uran","Tharamangalam",  "Tirukkoyilur",  "Pen","Makhdumpur","Maner","Oddanchatram",  "Palladam",  "Mundi",  "Nabarangapur","Mudalagi","Samalkha","Nepanagar",  "Karjat","Ranavav","Pedana",  "Pinjore","Lakheri","Pasan",  "Puttur",  "Vadakkuvalliyur",  "Tirukalukundram",  "Mahidpur",  "Mussoorie","Muvattupuzha","Rasra",  "Udaipurwati","Manwath","Adoor","Uthamapalayam",  "Partur","Nahan",  "Ladwa","Mankachar","Nongstoin","Losal","Sri Madhopur","Ramngarh","Mavelikkara","Rawatsar","Rajakhera","Lar",  "Lal Gopalganj Nindaura",  "Muddebihal","Sirsaganj",  "Shahpura","Surandai",  "Sangole","Pavagada","Tharad","Mansa","Umbergaon","Mavoor","Nalbari","Talaja","Malur","Mangrulpir","Soro","Shahpura","Vadnagar","Raisinghnagar","Sindhagi","Sanduru","Sohna","Manavadar","Pihani",  "Safidon","Risod","Rosera","Sankari",  "Malpura","Sonamukhi",  "Shamsabad, Agra",  "Nokha","PandUrban Agglomeration",  "Mainaguri",  "Afzalpur","Shirur","Salaya","Shenkottai",  "Pratapgarh","Vadipatti",  "Nagarkurnool","Savner","Sasvad","Rudrapur",  "Soron",  "Sholingur",  "Pandharkaoda","Perumbavoor","Maddur","Nadbai","Talode","Shrigonda","Madhugiri","Tekkalakote","Seoni-Malwa",  "Shirdi","SUrban Agglomerationr",  "Terdal","Raver","Tirupathur",  "Taraori","Mukhed","Manachanallur",  "Rehli",  "Sanchore","Rajura","Piro","Mudabidri","Vadgaon Kasba","Nagar","Vijapur","Viswanatham",  "Polur",  "Panagudi",  "Manawar",  "Tehri","Samdhan",  "Pardi","Rahatgarh",  "Panagar",  "Uthiramerur",  "Tirora","Rangia","Sahjanwa",  "Wara Seoni",  "Magadi","Rajgarh (Alwar)","Rafiganj","Tarana",  "Rampur Maniharan",  "Sheoganj","Raikot","Pauri","Sumerpur",  "Navalgund","Shahganj",  "Marhaura","Tulsipur",  "Sadri","Thiruthuraipoondi",  "Shiggaon","Pallapatti",  "Mahendragarh","Sausar",  "Ponneri",  "Mahad","Lohardaga","Tirwaganj",  "Margherita","Sundarnagar",  "Rajgarh",  "Mangaldoi","Renigunta",  "Longowal","Ratia","Lalgudi",  "Shrirangapattana","Niwari",  "Natham",  "Unnamalaikadai",  "PurqUrban Agglomerationzi",  "Shamsabad, Farrukhabad",  "Mirganj","Todaraisingh","Warhapur",  "Rajam",  "Urmar Tanda","Lonar","Powayan",  "P.N.Patti",  "Palampur",  "Srisailam Project (Right Flank Colony) Township",  "Sindagi","Sandi",  "Vaikom","Malda",  "Tharangambadi",  "Sakaleshapura","Lalganj","Malkangiri","Rapar","Mauganj",  "Todabhim","Srinivaspur","Murliganj","Reengus","Sawantwadi","Tittakudi",  "Lilong","Rajaldesar","Pathardi","Achhnera",  "Pacode",  "Naraura",  "Nakur",  "Palai","Morinda, India","Manasa",  "Nainpur",  "Sahaspur",  "Pauni","Prithvipur",  "Ramtek","Silapathar","Songadh","Safipur",  "Sohagpur",  "Mul","Sadulshahar","Phillaur","Sambhar","Prantij","Nagla","Pattran","Mount Abu","Reoti",  "Tenu dam-cum-Kathhara","Panchla",  "Sitarganj","Pasighat",  "Motipur","O' Valley",  "Raghunathpur",  "Suriyampalayam",  "Qadian","Rairangpur","Silvassa",  "Nowrozabad (Khodargama)",  "Mangrol","Soyagaon","Sujanpur","Manihari","Sikanderpur",  "Mangalvedhe","Phulera","Ron","Sholavandan",  "Saidpur",  "Shamgarh",  "Thammampatti",  "Maharajpur",  "Multai",  "Mukerian","Sirsi",  "Purwa",  "Sheohar","Namagiripettai",  "Parasi",  "Lathi","Lalganj",  "Narkhed","Mathabhanga",  "Shendurjana","Peravurani",  "Mariani","Phulpur",  "Rania","Pali",  "Pachore",  "Parangipettai",  "Pudupattinam",  "Panniyannur","Maharajganj","Rau",  "Monoharpur",  "Mandawa","Marigaon","Pallikonda",  "Pindwara","Shishgarh",  "Patur","Mayang Imphal","Mhowgaon",  "Guruvayoor","Mhaswad","Sahawar",  "Sivagiri",  "Mundargi","Punjaipugalur",  "Kailasahar","Samthar",  "Sakti","Sadalagi","Silao","Mandalgarh","Loha","Pukhrayan",  "Padmanabhapuram",  "Belonia","Saiha","Srirampore",  "Talwara","Puthuppally","Khowai","Vijaypur",  "Takhatgarh","Thirupuvanam",  "Adra",  "Piriyapatna","Obra",  "Adalaj","Nandgaon","Barh","Chhapra","Panamattom","Niwai",  "Bageshwar","Tarbha","Adyar","Narsinghgarh",  "Warud","Asarganj","Sarsod"}; %>
              <select class="form-control" name="city">
               <option>Select</option>
               <%for(String city : cities){ %>
               <option><%=city %></option>
               <%} %>
               </select>
               </div>
               </div>
               
               <button class="btn btn-primary" name="add">Post Add</button>
<%
}
%>
<%
if(type.equals("Land and Plots")||type.equals("Shop/Office"))
{
%>
 <div class="row">
               <div class="col-lg-20">
                  <label for="price">Price</label>
             <input type="text" class="form-control" name="price">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
                  <label for="area">Area in Square Feet</label>
             <input type="text" class="form-control" name="area">
                </div>
               </div>
                
              <div class="row">
               <div class="col-lg-20">
                  <label for="description">Description</label>
              <textarea class="form-control" rows="5" name="description"></textarea>
                </div>
               </div>
               <br>
               <br>
                  <div class="row">
               <div class="col-lg-20">
               <input type="file" name="photo"/>
               <input type="file" name="photo1"/>
               <input type="file" name="photo2"/>
               <input type="file" name="photo3"/>
               </div>
               </div>
                  <div class="row">
               <div class="col-lg-20">
               <label for="city">City</label>
              <select class="form-control" name="city">
               <option>City</option>
               <option>Jaipur</option>
               <option>Kota</option>
               </select>
               </div>
               </div>
               
               <button class="btn btn-primary" name="add">Post Add</button>
<%
}
%>
<%

%>

</body>
</html>