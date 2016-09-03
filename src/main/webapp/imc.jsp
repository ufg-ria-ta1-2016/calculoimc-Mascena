<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculo IMC</title>
</head>
<body>
	<h1>Calculo IMC</h1>
	<form>
	<br>	Peso: <input type="text" name="peso"></br>
	<br>	Altura: <input type="text" name="altura"> </br>
	<br>	<button>Calcular</button> </br>
	</form>
	<%
		String pesoStr = request.getParameter("peso");
		String alturaStr = request.getParameter("altura");
		
		double pesocalc = pesoStr == null ? 0 : Double.parseDouble(pesoStr);
		double alturacalc = alturaStr == null ? 0 : Double.parseDouble(alturaStr);
		
		double imc = (pesocalc / (alturacalc * alturacalc));
				
		if(imc < 18)  
        {  
            %><b>Abaixo do peso</b><%  
        }  
        else  
            if(imc > 18 & imc < 25)  
            {  
            	 %><b>Peso Normal</b><%   
            }  
            else  
                if(imc > 25 & imc < 30)  
                {  
                	 %><b>Acima do Peso</b><%   
                }  
                else  
                    if(imc > 30)  
                    {  
                    	%><b>Obeso</b><%  
                    }  
			
	%>

</body>
</html>


