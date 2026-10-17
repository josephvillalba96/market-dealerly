# Dealerly Market · Marketplace Vitrina Caribe

App independiente del panel dealer. Simula el catálogo regional para carros y motos y los flujos de compradores, vendedores particulares, concesionarios y moderación. Todos los perfiles, vehículos y contactos son ficticios; los cambios se guardan solo en este navegador.

## Abrir

Sirve esta carpeta con cualquier servidor estático o abre `index.html`. No requiere instalación ni API. Se recomienda servirla en `localhost` para disponer de IndexedDB y guardar archivos. Fotos de muestra y la fuente Inter se cargan desde Unsplash y Google Fonts.

## Docker y Railway

La imagen sirve los archivos estáticos con Nginx y escucha el puerto definido en `PORT` (usa `8080` por defecto).

```bash
docker build -t dealerly-market .
docker run --rm -p 8080:8080 -e PORT=8080 dealerly-market
```

Railway detecta `Dockerfile` en la raíz del repositorio. Usa `market-dealerly` como repositorio del servicio y genera un dominio público desde **Settings → Networking**.

## Recorridos

- Explorar anuncios públicos, filtrar por ubicación, precio, año y tipo de vendedor, ordenar y paginar resultados; abrir fichas, guardar favoritos y pedir contacto o visita.
- Crear perfil de comprador, particular o concesionario. Usa código `123456` para completar la verificación simulada. Los consentimientos de cuenta, contacto y marketing se guardan por separado.
- Particular y concesionario acceden a su espacio privado. El concesionario puede cambiar empresa y sede de ejemplo; anuncios y leads se muestran por propietario.
- El asistente guarda borradores entre visitas. Requiere 12 fotos para carro o 10 para moto, condición de 10 caracteres, identidad validada, autorización/mandato y SOAT, RTM y tarjeta cargados sin vencer. La carga no marca un documento como revisado.
- Entrar con el botón **Moderación demo** en la pantalla de ingreso. Hay ejemplos pendientes y con correcciones para recorrer la cola desde el primer uso. El operador puede revisar/verificar/vencer documentos, aprobar, solicitar cambios o retirar con motivo. Cada anuncio aprobado entra al catálogo común. El vendedor puede apelar una vez.
- Contactos y visitas son locales; los pagos y destacados son solo estados ilustrativos. **Reiniciar demo** borra perfiles y anuncios guardados.

## Datos locales

Perfiles, sesión, anuncios, estado documental, leads, visitas, favoritos y borradores se guardan en `localStorage`. Fotos y documentos seleccionados se guardan como blobs en IndexedDB. No se guardan contraseñas ni se contacta a personas. La verificación y moderación son simuladas.

El plan de producto exclusivo está en `docs/marketplace-plan.md`.
