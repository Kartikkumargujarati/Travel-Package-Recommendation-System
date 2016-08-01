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
             <li><a href="userpage.html" class="current">Home</a></li>
            <li><a href="mytour.jsp">My Tour</a></li>
            <li><a href="userlog.html">Logout</a></li>
           
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
                    
                <div class="button_01"><a href="index.jsp">Read All</a></div> 

            </div>
        
        </div>
        
        <div id="main_column">
        
        	<div class="section_w560">
                    <h3>MY TOUR PACKAGE DETAILS..!</h3><BR>
				          <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: red; background-color: #ccffff; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">NAME</font></td>
                   <td align="center"><font size="3">STARTING FROM</font></td>
                   <td align="center"><font size="3">ENDING TO</font></td>
                   <td align="center"><font size="3">INTR TO VIST</font></td>
                   <td align="center"><font size="3">D.O.T</font></td>
                   <td align="center"><font size="3">TOTAL DAYS</font></td>
                   <td align="center"><font size="3">N.O.P</font></td>
                   <td align="center"><font size="3">STATUS</font></td>
                   <td align="center"><font size="3">TOTAL COST</font></td>
                    
                   
               </tr>
<%               
    
    //userid, str, end, intr, dot, dy, nop, status_, tcost, key_
        String  u=null,st=null,en=null,intr=null,dot=null,dy=null,nop=null,sta=null,toc=null;
       String me = session.getAttribute("me").toString();  
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  plan where userid = '"+me+"'");
while(rs1.next()){
u=rs1.getString("userid");
st=rs1.getString("str");
en=rs1.getString("end");
intr=rs1.getString("intr");
dot=rs1.getString("dot");
dy=rs1.getString("dy");
nop=rs1.getString("nop");
sta=rs1.getString("status_");
toc=rs1.getString("tcost");

       %>   
       <tr style="color: #0000cc; background-color: #ffccff">
<!--          <form action="download" method="get" >-->
              <!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
             
              <td align="center"><%=u%></td>
              <td align="center"><%=st%></td>
       <td align="center"> <%=en%></td>
       <td align="center"> <%=intr%></td>
       <td align="center"> <%=dot%></td>
       <td align="center"> <%=dy%></td>
       <td align="center"> <%=nop%></td>
       <td align="center"> <%=sta%></td>
       <td align="center"> <%=toc%></td>
 
     <%

}                                     
%>
</tr>
                                          </table><BR></BR>
<h4><a href="userpage.html">TAKE NEW TOUR PACKAGE..!</a></h4>
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