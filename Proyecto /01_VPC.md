## Creación de VPC´S

Para este proyecto necesitaremos crear una **VPC** con dos subredes públicas y dos subredes pribvadas:
- Las dos subredes públicas servirán como balanceador de carga futuro
- Las dos subredes privadas son para proteger la base de datos y no este accesible para los usuarios desde la red

- En el apartado de VPC, creamos una nueva con estos parámetros
  - Nombre $\rightarrow$ VPCredWordpress
  - CIDR $\rightarrow$ La dejamos por defecto
  - IPv6 $\rightarrow$ No IPv6 CIDR block
  - Número de zonas disponibles $\rightarrow$ 2
  - Número de subredes publicas y privadas $\rightarrow$ 2
  - Nat gateway y VPC endpoints $\rightarrow$ None, como es una práctica y no estamos en un escenario real lo desactivamos para ahorra costes ya que no es totalmente necesario

  <img width="1909" height="881" alt="image" src="https://github.com/user-attachments/assets/689680e2-d33f-4718-b114-7285f84a569b" />

  <img width="1916" height="925" alt="image" src="https://github.com/user-attachments/assets/24f624e9-40e6-463a-8b8a-724fb6e25847" />

- Creamos una instancia EC2 con debian.

    <img width="1913" height="585" alt="image" src="https://github.com/user-attachments/assets/bd48413d-33f9-453d-ba91-68bb9daa73bc" />

- Descargamos la clave PEM para entrar por SSH a la máquina debian desde nuestro PC.

  <img width="1825" height="660" alt="image" src="https://github.com/user-attachments/assets/dc80c4bf-4241-4fff-a4d0-a1c8bcc94495" />

- 






