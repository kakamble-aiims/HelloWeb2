<%-- 
    Document   : search_reco_name
    Created on : 9 Jun, 2020, 11:04:41 AM
    Author     : root
--%>

<%@ page import="java.sql.*"%>  
      
    <%  
    String s=request.getParameter("val");  
    if(s==null || s.trim().equals("")){  
    out.print("Please enter.....");  
    }else{  
    String name= s;  
    //out.print(name);  
    try{  
    Class.forName("org.postgresql.Driver");  
    Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test1","postgres","genius@123AIIMS");  
    PreparedStatement ps=con.prepareStatement("select * from fine_details where name ilike ?");  
    ps.setString(1,name+"%");
    ResultSet rs=ps.executeQuery();  
    while(rs.next()){  
    out.print(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getInt(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6));  
    }  
    con.close();
    }catch(Exception e){e.printStackTrace();}  
    }  
    %>  

