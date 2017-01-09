
Speed and usability
===============================

Här kommer 4 webbplatser analyseras. Följande kommer artikeln titta på,

<li>Google Pagespeed</li>
<li>Laddningstid</li>
<li>Hur hemsidan kan förbättras</li>

Sedan en liten sammanfattning av det vanligaste förbättringsåtgärderna verkar vara
för hemsidorna. Även vad jag uppfattar som en snabb eller långsam webbplats, som är baserad på min personliga åsikt.


<h1>1. KHK</h1>

Den första webbplatsen som vi ska ta en närmare titt på — isig som den är — är
Khk.se. Det är en hemsida för Karlskrona Hockeyklubb.


[FIGURE src="image/khk.png"]

En bild på hemsidan, tryck på bilden för att se hela bilden.


<h3>Google Pagespeed</h3>

Ett riktigt bra sätt att optimera sin sida är att göra ett test med  [Google Pagespeed](https://developers.google.com/speed/pagespeed/insights/). Den rankar från 1 till 100.
När vi använde detta verktyg i hangouten så kom vi fram att det var <u style="color:orange;">62</u> för mobilen medan det endast var <u style="color:orange;">47</u> för desktop.

<h3>Laddningstid</h3>

När man mäter den generella laddningstiden på en hemsida så kollar man på resurser som laddas på webbsidan och
en absoluta laddningstiden samt storleken på dem.

Efter vi rensade vår cache genom att göra en "ctrl-shift-r" så kom vi fram till att laddningstiden var 15s.

När jag i efterhand gjorde ett test så fick jag att laddningstiden var 9s, så det kan variera. Det blev 227 requests, som motsvarade en storlek på 5,8 MB.


<h3>Hur hemsidan kan förbättras</h3>

Det vi tittade mest på blev bilderna som hemsidan hämtar. Hemsidan hämtar den i full storlek som skapar onödigt med data, istället skulle man kunna använda
CImage som skulle kunna ge hemsidan en bättre "image processing".


<h1>2. Volvocars</h1>

Den andra webbplatsen som vi ska titta på är volvocars.se, Volvo är ett mest känt som ett bilmärke.
Men företaget tillverkar lastbilar, bussar, anläggningsmaskiner, marina och industriella drivsystem.


[FIGURE src="image/Volvo.png"]

En bild på hemsidan, tryck på bilden för att se hela bilden.

<h3>Google Pagespeed</h3>

Googles Pagespeed test visade att det var  <u style="color:orange;">44</u> för mobilen och 	<u style="color:orange;">64</u> för desktop.
Ungefär som khk.se fast tvärtom angående mobil och desktop.

<h3>Laddningstid</h3>

Gruppen kom fram till att laddningstiden på volvocars.se var 9s. På egenhand så blev resultatet däremot 7s. Det blev 124 requests, som blev en storlek på 7,3 MB.

<h3>Hur hemsidan kan förbättras</h3>

Det som Google klagade mest på att JavaScript- och CSS-kod blockerar renderingen från innehåll och omdirigeringar från målsidan. Det man kan göra
är att undvika omdirigeringar och istället ha en "fast" adress till den svenska.


<h1>3. Vapiano</h1>

Nu ska vi titta på en hemsida som vi tidigare analyserat på vår färganalys. Vapiano.se, som är en restaurangen i verkliga livet.
Vapianorestauranger finns utspritt runt om i världen, men vi ska fokusera på den svenska sidan.


[FIGURE src="image/vapiano.png"]

En bild på hemsidan, tryck på bilden för att se hela bilden.


<h3>Google Pagespeed</h3>

Googles Pagespeed test visade att det var  <u style="color:orange;">42</u> för mobilen och 	<u style="color:orange;">53</u> för desktop.
Så denna har fått sämst hittills i vår analys, av de två tidigare hemsidorna vi tittat på.

<h3>Laddningstid</h3>

Gruppen kom fram till att laddningstiden på denna hemsida var 4s, så definitivt bättre laddningstid än, khk.se och volvocars.se.

På egenhand så blev resultatet däremot 7s. Det blev 41 requests, som blev en storlek på 5,7 MB.

<h3>Hur hemsidan kan förbättras</h3>

Precis som Volvo så är Vapiano ett stort företag, så de omdirigeringar från målsidan, som de bör undvika. Vapiano bör även aktivera komprimering
som kan minska antalet byte som skickas via nätverket.


<h1>4. McDonalds</h1>

McDonald's Corporation är ett amerikanskt multinationellt företag som säljer snabbmat, främst hamburgare.


[FIGURE src="image/mcdonalds.png"]

En bild på hemsidan, tryck på bilden för att se hela bilden.


<h3>Google Pagespeed</h3>

Googles Pagespeed test visade att det var <u style="color:orange;">46</u> för mobilen och 	<u style="color:orange;">60</u> för desktop.
Så McDonalds sida ligger helt okej till om man jämför med de andra.

<h3>Laddningstid</h3>

McDonalds hemsida hade den snabbaste laddningstiden av alla hemsidor, gruppen fick 3s. Vi hade snackat illa om McDonalds färgval förra
gången, men prestandan har de koll på i alla fall.

När jag tittade på hemsidan på egenhand så blev resultatet 1,31s och en storlek på 1 MB efter 77 requests

<h3>Hur hemsidan kan förbättras</h3>

McDonalds bör titta närmare på optimering av bilder, förminska JavaScript, HTML och CSS. Enligt Google så var optimering av bilder det
viktigaste.

<h1>Sammanfattning</h1>

Sammanfattningsvis så kan man säga att alla de fyra hemsidorna kan förbättras och ligger inte så bra till när det kommer till mobil.

Det verkar som att stora företag oftast omdirigeringar från målsidan, som de bör ordna för att se till så att Pagespeeden blir så bra som möjligt.
Att sina blir frustrerade är verkligen ingenting man vill. Även optimering av bilder, för att se till så hemsidan endast laddar det som sidan behöver.

En tabell på alla resultaten från analyserna.
<table>
  <tr>
    <th>Sida</th>
    <th>GPS mobil</th>
    <th>GPS desktop</th>
    <th>Laddningstid</th>

  </tr>
  <tr>
    <td>khk.se</td>
    <td>62</td>
    <td>47</td>
    <td>15s</td>
  </tr>
  <tr>
    <td>volvocars.se</td>
    <td>44</td>
    <td>64</td>
    <td>9s</td>
  </tr>
  <tr>
    <td>vapiano.se</td>
    <td>42</td>
    <td>53</td>
    <td>4s</td>
  </tr>
  <tr>
    <td>mcdonalds.se</td>
    <td>46</td>
    <td>60</td>
    <td>3s</td>
  </tr>

  </tr>
</table>

När det kommer till vad jag som uppfattar som långsamt och snabbt, så beror det givetvis på vad hemsidan handlar om. Men rent generellt så tycker jag att
man bör ha en GPS på minst 70 och en laddningstid på 3-5s.

"The Javascript Guy", Crockford pratade om detta i en föreläsning. Efter 5 sekunder så blir användaren frustrerad och det vill man naturligtvis inte.
Efter 10 sekunder så refreshar användaren hemsidan, som är dåligt då den måste laddas igen då, som gör användaren ännu mer frustrerad.

Jag känner att Vapiano och McDonalds lyckas med att göra sina användare nöjda med laddningstiden, medan Volvo misslyckas med det men KHK misslyckas totalt.
KHK.se är definitivt en hemsida man inte orkar vara inne på länge. Hursomhelst när det kommer till GPS så tycker jag alla ligger lite under "okej" och ingenting
imponerande.


<br>
<br>
<br>

<small> Artikeln av skriven av Nicklas Envall. Alla hemsidor har han studerat och tittat på med en grupp, men gått
tillbaka senare på egenhand för att titta ännu närmare. Folk som var med i hangouten var delaktiga i en diskussion om alla hemsidor.
I hangouten så var vi, Emil, Ann, Jakob, Magnus, Jimmy och Christoffer. </small>
