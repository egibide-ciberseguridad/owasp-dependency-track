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

Después ya se puede acceder a [la web principal](https://dependencytrack.test) con `admin/admin`.

> Si el servidor se para al procesar ficheros, revisar la cantidad de memoria asignada a Docker. Necesita disponer de al
> menos 8GB para funcionar bien.

## Crear ficheros SBOM

Instalar [Syft](https://github.com/anchore/syft/) y generar ficheros SBOM de tipo CycloneDX.

Escanear una imagen de Docker:

```
syft alpine:latest --file sbom.xml -o cyclonedx
```

Escanear una carpeta:

```
syft dir:. --file sbom.xml -o cyclonedx
```

## Referencias

- [Deploying Docker Container](https://docs.dependencytrack.org/getting-started/deploy-docker/)
- [How to Generate an SBOM with Free Open Source Tools](https://anchore.com/sbom/how-to-generate-an-sbom-with-free-open-source-tools/)
- [Syft](https://github.com/anchore/syft/)
