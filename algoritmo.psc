Algoritmo asignar_recursos
	
	Definir nombreCompleto, tieneDispositivo, tieneInternet, prioridad Como Caracter;
	Definir costoDispositivo, costoInternet, presupuesto Como Real;
	Definir necesitaDispositivo, necesitaInternet Como Logico;
	Definir cantDispositivos, cantPacksInternet Como Entero;
	
	Escribir "Ingrese el nombre del beneficiario:";
	Leer nombreCompleto;
	
	Escribir "¿Tiene dispositivo? (Si/No):";
	Leer tieneDispositivo;
	
	Escribir "¿Tiene internet? (Si/No):";
	Leer tieneInternet;
	
	costoDispositivo <- 1000;
	costoInternet <- 50;
	cantDispositivos <- 20;
	cantPacksInternet <- 20;
	necesitaDispositivo <- Falso;
	necesitaInternet <- Falso;
	presupuesto <- 0;
	
	Si Minusculas(tieneDispositivo) = "no" Entonces
		Si cantDispositivos > 0 Entonces
			necesitaDispositivo <- Verdadero;
			cantDispositivos = cantDispositivos - 1;
			presupuesto = presupuesto + costoDispositivo;
		SiNo
			Escribir "Sin recursos de dispositivos";
		FinSi
	FinSi
	
	Si Minusculas(tieneInternet) = "no" Entonces
		Si cantPacksInternet > 0 Entonces
			necesitaInternet <- Verdadero;
			cantPacksInternet = cantPacksInternet - 1;
			presupuesto <- presupuesto + costoInternet;
		SiNo
			Escribir "Sin recursos de internet";
		FinSi
	FinSi
	
	Si necesitaInternet y necesitaDispositivo Entonces
		prioridad = "Alta";
	SiNo
		Si necesitaInternet o necesitaDispositivo Entonces
			prioridad = "Media";
		SiNo
			prioridad = "Ninguna";
		FinSi
	FinSi
	
	Escribir "++++++++ Resultados de Evaluación ++++++++";
	Escribir "Beneficiario: ", nombreCompleto;
	Escribir "Prioridad: ", prioridad;
	
	Si necesitaDispositivo Entonces
		Escribir "Dispositivo: Asignado";
	SiNo
		Escribir "Dispositivo: No asignado";
	FinSi
	
	Si necesitaInternet Entonces
		Escribir "Internet: Asignado";
	SiNo
		Escribir "Internet: No asignado";
	FinSi
	
	Escribir "Presupuesto estimado: S/", presupuesto;
	Escribir "+++++++++++++++++++++++++++++++++++++++++";
	
FinAlgoritmo