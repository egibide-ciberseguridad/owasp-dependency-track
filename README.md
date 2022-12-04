# OWASP Dependency-Track

Configuración para arrancar [OWASP Dependency-Track](https://owasp.org/www-project-dependency-track/).

## Arranque del servidor

Añadir dos entradas al fichero de hosts:

```
127.0.0.1   dependencytrack.test
127.0.0.1   api.dependencytrack.test
```

Clonar este repositorio y arrancarlo con `make start`.

La primera vez que se vaya a acceder hay que
cargar [la página principal del servidor de API](https://api.dependencytrack.test) y aceptar el certificado autofirmado.

Después ya se puede acceder a [la web principal](https://dependencytrack.test) normalmente.

## Referencias

[Deploying Docker Container](https://docs.dependencytrack.org/getting-started/deploy-docker/)
