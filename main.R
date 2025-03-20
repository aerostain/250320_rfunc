dir()
# Hay 3 maneras de representarlos: Date, POSIXct, POSIXlt
Sys.Date() %>% class()
Sys.time() %>% class()

# %Y: Año con 4 dígitos.
# %y: Año con 2 dígitos.
# %m: Mes (01-12).
# %d: Día (01-31).
# %B: Nombre completo del mes.
# %b: Nombre abreviado del mes.

# Date (Solo fecha)
myfec <- as.Date("2025/04/02")
myfec <- as.Date("2025-04-03")

myfec <- as.Date("2025/04/02", format = "%Y/%m/%d")
myfec <- as.Date("02_05_2025", format = "%d_%m_%Y")
myfec <- as.Date("02_Jan_2025", format = "%d_%b_%Y")

myfec + 7 - myfec
# %H: Hora.
# %M: Minuto.
# %S: Segundo.

# POSIXct (Fecha y Hora)
myfecp <- as.POSIXct("2025-04_03 10:30:25", format = "%Y-%m_%d %H:%M:%S")

myfecp + (3600 * 24) - myfecp

# Zona horaria
myfecp <- as.POSIXct("2025-04_03 10:30:25",
  format = "%Y-%m_%d %H:%M:%S",
  tz = "America/Lima"
)

# POSIXlt (Fecha y Hora)
myfecp <- as.POSIXlt("2025-04_03 10:30:25",
  format = "%Y-%m_%d %H:%M:%S",
  tz = "America/Lima"
)

myfecp %>% unlist
myfecp$mday

OlsonNames() # Listar Zonas Horarias
Sys.timezone() # Zona Hoaria del sistema

# Formatear Fecha
format(myfecp, "%d de %B, %y -> %H:%M::%S")
format(Sys.time(), "%Y-%m-%d_%H:%M::%S")

# Operaciones con fechas
library(lubridate)
year(myfec)
month(myfec, label = TRUE)
day(myfec)
hour(myfec)
minute(myfec)
second(myfec)

myfec + days(5)
myfecp + days(5)
