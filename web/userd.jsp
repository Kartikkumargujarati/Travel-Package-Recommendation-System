<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cocktail_Approach_for_Travel</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description" content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="adminpage.jsp" class="current">Home</a></li>
            <li><a href="admintour.jsp">Tour Details</a></li>
            <li><a href="userd.jsp">User Details</a></li>
            <li><a href="index.html">Logout</a></li>
           
           
        </ul>
    </div>

	<div id="templatemo_banner">
    	
        <div id="site_title">
            <h1>
            	<!--  Travel Site  <span>free css template</span>  -->
               A Cocktail Approach for Travel Package Recommendation
                <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
          </h1>
        </div>
        
        
    
    </div> <!-- templatemo_banner -->
    
    <div class="fw_section blue_section">
    	
        <div class="fw_section_content">
    
            <h2>Summer Packages</h2>
            <p>Summers can be the best time to discover beautiful India. Every year, a large number of tourists, visit India to explore its lush paddy fields, snow-covered valleys with clear water streams and its picturesque hill stations. </p>
           
            
	  </div>
            
    </div> <!-- end of blue section -->
    
    <div class="fw_section green_section">
    
    	<div class="fw_section_content">
    
            <h2>Family Suites</h2>
            <p>During your summer vacation in India, you can indulge in a large number of activities. You can relax by the beaches of western coast, can plan a trip to Kashmir- paradise on earth or can embark on a trekking safari in the mountains of Leh or enjoy whitewater rafting in Rishikesh.</p>
            <div class="button_01"><a href="http://www.templatemo.com" target="_parent">Details</a></div>
            
	  </div>
    
    </div> <!-- end of green section -->
    
    <div id="templatemo_content">
    	
        <div id="side_column">
        	
            <div class="section_w280">
            
            	<h3>Promotions</h3>
                
              <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_02.jpg" alt="image" />
                          </div>
                    
                    <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_03.jpg" alt="image" />
                       </div>
                    
                <div class="button_01"><a href="index.html">Read All</a></div> 

            </div>
        
        </div>
        
        <div id="main_column">
        
          
                    <h3>USER DETAILS..!</h3><BR>
				          <table border="2" style="width: 550px; alignment-adjust: central; ">
                <!--name, userid, pass, mail, age, loc, sex, time_-->
                <tr style="color: red; background-color: #ccffff; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">NAME</font></td>
                   <td align="center"><font size="3">USER ID</font></td>
                   <!--<td align="center"><font size="3">PASSWORD</font></td>-->
                   <td align="center"><font size="3">MAIL ID</font></td>
                   <td align="center"><font size="3">D.O.B</font></td>
                   <td align="center"><font size="3">LOCATION</font></td>
                   <td align="center"><font size="3">GENDER</font></td>
                   <td align="center"><font size="3">REGISTERED TIME</font></td>
                  
                    
                   
               </tr>
<%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        String  u=null,st=null,en=null,intr=null,dot=null,dy=null,nop=null,sta=null,toc=null,key=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  regpage ");
while(rs1.next()){
u=rs1.getString("name");
st=rs1.getString("userid");
en=rs1.getString("pass");
intr=rs1.getString("mail");
dot=rs1.getString("age");
dy=rs1.getString("loc");
nop=rs1.getString("sex");
sta=rs1.getString("time_");


       %>   
       <tr style="color: #0000cc; background-color: #a1a1a1">
           <form action="update.jsp" method="get" >
              <!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
             
              <td align="center"><%=u%></td>
              <td align="center"><%=st%></td>  
       <td align="center"> <%=intr%></td>
       <td align="center"> <%=dot%></td>
       <td align="center"> <%=dy%></td>
       <td align="center"> <%=nop%></td>
       <td align="center"> <%=sta%></td>
       
           </form>
     <%

}                                     
%>
</tr>
                                          </table><BR></BR>

                <div class="cleaner"></div>
        	</div>
            
       
            
            <div class="cleaner"></div>
        </div>
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_footer">

        
    
        Copyright ? 2014 <a href="index.html">KartikSalman .Inc</a> | 
        
        
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>