costoDispositivo = 1000
costoInternet = 50
cantDispositivos = 20
cantPacksInternet = 20
necesitaDispositivo = False
necesitaInternet = False
presupuesto = 0
prioridad = ""

nombreCompleto = input("Ingrese su nombre completo: \n")
tieneDispositivo = input("¿Tiene un dispositivo? (Si/No): \n")
tieneInternet = input("¿Tiene internet? (Si/No): \n")

if tieneDispositivo.lower() == "no":
    if cantDispositivos > 0:
        necesitaDispositivo = True
        cantDispositivos -= 1
        presupuesto += costoDispositivo
    else:
        print("No hay dispositivos disponibles")
else:
    necesitaDispositivo = False

if tieneInternet.lower() == "no":
    if cantPacksInternet > 0:
        necesitaInternet = True
        cantPacksInternet -= 1
        presupuesto += costoInternet
    else:
        print("No hay packs de internet disponibles")
else:
    necesitaInternet = False

if necesitaDispositivo and necesitaInternet:
    prioridad = "Alta"
elif necesitaDispositivo or necesitaInternet:
    prioridad = "Media"
else:
    prioridad = "Ninguna"

print("++++++++++ Resultados de evaluación ++++++++++")
print("Beneficiario: " + nombreCompleto)
print("Prioridad: " + prioridad)

if necesitaDispositivo:
    print("Dispositivo: Asignado")
else:
    print("Dispositivo: No asignado")

if necesitaInternet:
    print("Internet: Asignado")
else:
    print("Internet: No asignado")

print(f"Presupuesto estimado: S/ {presupuesto}")
print("+++++++++++++++++++++++++++++++++++++++++++++")