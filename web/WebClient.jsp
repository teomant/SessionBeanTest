<%--
  Created by IntelliJ IDEA.
  User: Teomant
  Date: 27.04.2018
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="org.teomant.*,
 javax.naming.*"%>
<%!
    private CalculatorRemote calculator = null;
    float result=0;

    public void jspInit() {
        try {

            InitialContext ic = new InitialContext();

            calculator = (CalculatorRemote) ic
                    .lookup("org/teomant/CalculatorBean/remote");

            System.out.println("Loaded Calculator Bean");
//CalculatorBean

        } catch (Exception ex) {
            System.out.println("Error:"+
                    ex.getMessage());
        }
    }
    public void jspDestroy() {
        calculator = null;
    }
%>
<%
    try {
        String s1 = request.getParameter("num1");
        String s2 = request.getParameter("num2");
        String s3 = request.getParameter("group1");

        System.out.println(s3);

        if ( s1 != null && s2 != null ) {
            Float num1  = new Float(s1);
            Float num2  = new Float(s2);

            if(s3.equals("add"))
                result=calculator.add(num1.floatValue(),
                        num2.floatValue());
            else if(s3.equals("sub"))
                result=calculator.subtract(num1.floatValue(),
                        num2.floatValue());
            else if(s3.equals("multi"))
                result=calculator.multiply(num1.floatValue(),
                        num2.floatValue());
            else
                result=calculator.division(num1.floatValue(),
                        num2.floatValue());

%>
<p>
    <b>The result is:</b> <%= result %>
<p>

<%
        }
    }// end of try
    catch (Exception e) {
        e.printStackTrace ();
        //result = "Not valid";
    }
%>