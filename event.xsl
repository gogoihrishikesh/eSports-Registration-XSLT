<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>WMR eSports</title>
                <script>
                    function validateForm() {
                      let x = document.forms["myForm"]["tname"].value;
                      let y = document.forms["myForm"]["lname"].value;
                      let z = document.forms["myForm"]["lemail"].value;
                      let a = document.forms["myForm"]["p1ign"].value;
                      if (x == "") {
                        alert("Team Name must be filled out");
                        return false;
                      }if (y == "") {
                        alert("Leader Name must be filled out");
                        return false;
                      }if (z == "") {
                        alert("E-mail must be filled out");
                        return false;
                      }if (a == "") {
                        alert("player 1 IGN must be filled out");
                        return false;
                      }else{
                        myFunction();
                      }
                    }
                    function myFunction() {
                        alert("The form is submitted and a confirmation mail will be sent with the event details. Thank You :)");
                      }
                        
                        
                     
                </script>
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
                <link rel="stylesheet" href="tablecss.css" />
                <!-- <link rel="stylesheet" href="../css/style.css" /> -->
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia" />

            </head>
            <body>
                <center>
                    <div class="new">
                        <h1 style="color:white; ">
                            <b> MEGA e<i>S</i>ports Event</b>
                        </h1>
                        <p style="color:white;">
                            <i> Organised By - Warmongers AXOM </i>
                        </p>

                    </div>
                    <div class="scrolling" style="background-image: url(4.jpg);">
                        <p style="color: ; font-size:15px; background-color:white; border-radius:30px;padding:20px;width:50%">Hello gamers!<br/>
                            Welcome to our grand battle areana for BGMI, Valorant, FIFA and CS-GO<br/>
                                We are organizing a grand eSports event for 4 popular games of 2022. Join us and be a part of The exciting journey also win grand prizes upto 50,000INR
                    </p>
                    <p class="q" >
                            Number of Events -
                        <xsl:value-of select="count(root/event/event_id)" />
                        <br />
                    </p>
                    <div>
                        <table class="table-props" id="table-title" style="width=100%; margin-right:30px">
                            <tr id="table-heading">
                                <th style="width:5%;">Event_ID</th>
                                <th style="width:20%">Event Name</th>
                                <th style="width:30%">Event Description</th>
                                <th style="width:5%">Participation type</th>
                                <th style="width:10%">Start date and time</th>
                                <th style="width:10%">End date and time</th>
                                <th style="width:10%">Organizer email</th>
                                <th style="width:10%">Organizer phone</th>
                            </tr>
                            <xsl:for-each select="root/event">
                                <xsl:sort select="number(event_id)" data-type="number" />
                                <tr>
                                    <td>
                                        <xsl:value-of select="event_id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="event_name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="event_desc" />
                                    </td>
                                    <xsl:choose>
                                        <xsl:when test="event_type_participation = 'Team'" >
                                            <td bgcolor="#FE5B5B" color= "#ffffff" style="border-radius:100px;">
                                                <xsl:value-of select="event_type_participation" />
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="#6EFF3B" style="border-radius:100px;">
                                                <xsl:value-of select="event_type_participation" />
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <td>
                                        <xsl:value-of select="event_timing/event_start_datetime" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="event_timing/event_end_datetime" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="event_organizer_email" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="event_organizer_phone" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>
            </center>
            <div style="padding:40px; background-color: #21D4FD;
                background-image: linear-gradient(90deg, #21D4FD 0%, #B721FF 100%);
                ">
                <center>
                    <h3 style="color: white;">Please Fill up your team details for registration</h3>
                </center>
                <br/>
                <center>
                    <form name="myForm" onsubmit="return validateForm()" style="border-radius:20px; background-color:white; padding:40px; ">
                        <label for="tname">Team name*:</label>

                        <input class="inp" type="text" id="tname" name="tname" placeholder="team name" />
                        <br/>
                        <br/>
                        <label for="lname">Leader name*:</label>

                        <input class="inp" type="text" id="lname" name="lname" placeholder="Leader name"/>
                        <br/>
                        <br/>
                        <label for="event">Choose an event*: </label>
                        <select class="inp" id="event" name="event">
                            <option value="1">BGMI</option>
                            <option value="2">BGMI TDM</option>
                            <option value="3">VALORANT</option>
                            <option value="4">FIFA</option>
                            <option value="5">CS-GO</option>
                        </select>
                        <br/>
                        <br/>
                        <label for="tname">Leader Email Address*:</label>


                        <input class="inp" type="email" id="lemail" name="lemail" placeholder="E-mail e.g: abc@gmail.com"/>
                        <br/>
                        <br/>
                        <label for="p1ign">Player1 IGN*:</label>

                        <input class="inp" type="text" id="p1ign" name="p1ign" placeholder="Player 1 IGN"/>
                        <br/>
                        <br/>
                        <label for="p2ign">Player 2 IGN:</label>

                        <input class="inp" type="text" id="p2name" name="p2name" placeholder="Player 2 IGN"/>
                        <br/>
                        <br/>
                        <label for="p3ign">Player 3 IGN:</label>

                        <input class="inp" type="text" id="p3ign" name="p3ign" placeholder="Player 3 IGN"/>
                        <br/>
                        <br/>
                        <label for="p4ign">Player 4 IGN:</label>

                        <input class="inp" type="text" id="p4name" name="p4name" placeholder="Player 4 IGN"/>
                        <br/>
                        <br/>
                        <label for="p5ign">Player 5 IGN:</label>

                        <input class="inp" type="text" id="p5name" name="p5name" placeholder="Player 5 IGN"/>
                        <br/>
                        <br/>
                        <input class="btn" type="submit" value="Submit"  />
                    </form>
                    <p style="color = #ffffff;"><i>After Submitting please check your registered email for the confirmation details and slot numbers<br/>See you the the battlefield :)</i></p>
                </center>
            </div>

        </body>
    </html>
</xsl:template>
</xsl:stylesheet>