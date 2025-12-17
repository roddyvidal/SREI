## Creación de VPC´S

Para este proyecto necesitaremos crear una **VPC** con dos subredes públicas y dos subredes privadas:
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

- Le daremos a **Customize subnets CIDR block" para crear a nuestro gusto las subredes publicas y privadas que vamos a usar

  <<img width="447" height="480" alt="image" src="https://github.com/user-attachments/assets/6811a321-a712-44d5-a51e-ef6791c4e2d2" />

- Activamos la opción para darle ip pública automaticamente.

  <img width="1918" height="706" alt="image" src="https://github.com/user-attachments/assets/0f65ee2d-d70d-4a1b-b04c-70c251dafffb" />

- Creamos una instancia EC2 con debian.

    <img width="1913" height="585" alt="image" src="https://github.com/user-attachments/assets/bd48413d-33f9-453d-ba91-68bb9daa73bc" />

- Al momento de crearla tenemos que ponerle la VPC que hgemos creado anteriormente.

  <img width="1908" height="823" alt="image" src="https://github.com/user-attachments/assets/2a5196c7-844c-4104-ac39-6266fbac9a3a" />

- Una vez creada crearemos un nuevo grupo de seguridad con las siguientes reglas.

  <img width="1715" height="322" alt="image" src="https://github.com/user-attachments/assets/8c0d4b65-ba6c-44b2-a252-a38f5c54de92" />

- Le asignamos el grupo de seguridad que heemos creado a nuestar instancia.

  <img width="1907" height="777" alt="image" src="https://github.com/user-attachments/assets/85c1a8a9-4d12-4fc6-b69c-7fce43d52e42" />


- Descargamos la clave PEM para entrar por SSH a la máquina debian desde nuestro PC.

  <img width="1825" height="660" alt="image" src="https://github.com/user-attachments/assets/dc80c4bf-4241-4fff-a4d0-a1c8bcc94495" />








