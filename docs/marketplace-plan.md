# Plan exclusivo: marketplace de vehículos

**Estado:** plan de producto y alcance para demo interactivo  
**Marca de la empresa:** Dealerly Market  
**Nombre del producto/demo:** Vitrina Caribe  
**Producto relacionado:** plataforma automotriz. Este frente tiene demo y experiencia propias; no reemplaza el panel de concesionarios.

## Objetivo

Crear un marketplace regional donde compradores encuentren carros y motos usados con información comparable y señales de confianza. Concesionarios y particulares publican en el mismo catálogo, cada uno con un flujo apropiado a su perfil. El primer piloto propuesto es Barranquilla y la Costa Caribe.

## Usuarios y trabajos

| Usuario | Necesidad principal | Experiencia del marketplace |
| --- | --- | --- |
| Comprador | Encontrar y comparar vehículo disponible cerca | Buscar, filtrar, guardar, revisar ficha, contactar o pedir visita |
| Vendedor particular | Publicar sin saber de fotografía ni anuncios | Alta asistida, ficha guiada, privacidad, revisión y seguimiento de contactos |
| Concesionario | Mostrar inventario actualizado y convertir visitas en oportunidades | Vitrina pública, publicación desde inventario, varios usuarios/sedes, leads y agenda |
| Moderador | Reducir anuncios engañosos y atender denuncias | Revisión documental y de contenido, cola de casos, decisión con motivo y apelación |

## Alcance del demo

El demo es una app independiente del panel de operación. Usa datos ficticios y demuestra navegación e interacciones clave. Perfiles, anuncios, solicitudes y estados se guardan en el navegador; fotos y documentos quedan en IndexedDB local. No procesa pagos, no valida identidad oficialmente y no envía solicitudes.

### Incluye

- Catálogo público responsive de carros y motos, inicialmente con Barranquilla y municipios cercanos; resultados filtrables, orden y paginación.
- Búsqueda por marca, modelo y texto; filtros por precio, año, ciudad y tipo de vendedor.
- Fichas con precio en COP, ciudad, kilometraje, condición declarada, vendedor, inspección y contacto/visita.
- Diferenciación explícita entre concesionario verificado, particular, inspección registrada y documento revisado. Ningún sello implica verificación estatal si esta no ocurrió.
- Registro simulado para comprador, particular y concesionario; identificación, contacto, ciudad, verificación simulada y consentimientos separados.
- Asistente de publicación con borrador, plantillas de 12 fotos para carros y 10 para motos, declaración de condición, autorización, documentos, precio y vista previa.
- Espacio particular y consola dealer con publicaciones propias, selector de empresa/sede, inventario demo, leads, visitas y destacados/pago simulado.
- Cola de moderación con revisión documental, aprobación, corrección, retiro y una apelación. Solo anuncios aprobados aparecen en búsqueda.
- Solicitud local de contacto/visita; sin envío a WhatsApp ni a servicios externos.
- Mensajes de privacidad: placa difuminada, dirección exacta y documentos originales no públicos.

### Fuera del demo inicial

- Backend, autenticación real, cobros, chat en tiempo real, integraciones de WhatsApp, verificaciones oficiales y moderación operativa real.
- Recomendaciones personalizadas, valuación, financiación en línea, subastas, publicación en portales externos y expansión fuera de la Costa Caribe.

## Principios de experiencia

1. **Buscar antes que registrarse.** El catálogo y las fichas públicas se pueden explorar sin cuenta.
2. **Comparar sin sorpresas.** Precio, año, kilometraje, ubicación, tipo de vendedor y disponibilidad ocupan lugares estables.
3. **La confianza tiene evidencia.** Separar datos declarados, documentos revisados e inspección atribuible; no convertir un dato cargado en una verificación.
4. **Un catálogo, dos caminos de oferta.** Los anuncios comparten formato; publicación y permisos cambian según sea particular o concesionario.
5. **Contacto con contexto.** Solicitudes y visitas identifican anuncio, vendedor y canal; cada vendedor recibe solo sus contactos.
6. **Privacidad por defecto.** Ocultar datos sensibles, VIN completo, placa sin difuminar y documentos originales.

## Sistema visual del demo

- **Violeta de marca `#6D5BF0`:** acciones principales y foco, heredado del demo de concesionarios.
- **Violeta profundo `#1D1650`:** identidad y navegación activa.
- **Lavanda `#F4F2FE`:** estados seleccionados y bloques de confianza.
- **Tinta `#15141C`:** texto principal.
- **Gris suave `#F7F7FA`:** fondo de catálogo y filtros.
- **Blanco `#FFFFFF`:** encabezado, fichas y formularios.
- **Tipografía:** Inter para conservar continuidad con el demo existente y lectura clara en fichas densas.
- **Composición:** cabecera compacta con búsqueda y ciudad; navegación de categoría; resultados en una cuadrícula amplia con filtros laterales. En móvil, filtros pasan a panel desplegable y tarjetas pasan a una columna.

La referencia aporta búsqueda visible, navegación por categoría, filtros persistentes, orden y tarjetas de vehículo con contacto rápido. El demo mantiene esos patrones y usa la identidad violeta existente; no replica marca, amarillo ni contenido de Mercado Libre.

## Recorridos principales

### Comprar

1. Elegir carro o moto, ubicación y filtros.
2. Comparar resultados y guardar anuncio/búsqueda.
3. Abrir ficha con galería, datos declarados y señales verificables.
4. Solicitar contacto o visita; el vendedor recibe un lead con consentimiento y referencia al anuncio.

### Publicar como particular

1. Elegir «Vender mi vehículo» y confirmar perfil particular.
2. Completar datos esenciales, ubicación aproximada, precio, contacto y fotos guiadas.
3. Revisar datos públicos y privados antes de enviar.
4. Recibir estado de revisión y publicar tras aprobación. Cupo gratuito de un anuncio activo es propuesta por validar.

### Publicar como concesionario

1. Elegir «Publicar inventario» y entrar a la vitrina de su concesionario.
2. Seleccionar una unidad existente del panel o cargar ficha en flujo inicial.
3. Confirmar precio, sede/canal, fotos y campos públicos autorizados.
4. Enviar a revisión o publicar según permisos/plan; recibir leads asociados a la unidad y asesor.

## Plan de entregas

| Fase | Resultado | Criterio de salida |
| --- | --- | --- |
| M0 Demo | Catálogo adaptable, búsqueda/filtros funcionales, ficha resumida, flujo dual de publicación y datos ficticios | Comprador filtra; particular y concesionario completan ambos flujos de demo; usabilidad móvil revisada |
| M1 Fundaciones | Cuentas, permisos, inventario público, gestión de consentimiento, moderación y estados de anuncio | Borradores privados; anuncios aprobados visibles; retirados no permiten contacto |
| M2 Piloto regional | Leads, agenda, vitrinas, métricas básicas, publicación asistida, revisión y soporte | Piloto con 5–10 concesionarios y grupo inicial de particulares en Barranquilla |
| M3 Confianza y crecimiento | Inspecciones atribuibles, destacados pagados, mejoras SEO, nuevas ciudades y conectores | Evidencia de conversión/retención y operación de confianza; expansión decidida con datos |

La secuencia es exclusiva para el marketplace. El panel privado puede aportar inventario y recibir leads, pero conserva su propio plan y demo.

## Requisitos para producto real

- Proyección pública allowlist; nunca exponer costos, margen, propietario anterior, documentos ni ubicación precisa sin autorización.
- Publicación con consentimiento registrado, propiedad/autorización declarada, revisión y trazabilidad de cambios.
- Reglas antifraude para duplicados, anuncios vencidos/vendidos, denuncias, apelación y retiro.
- Aislamiento entre organizaciones: un concesionario solo gestiona sus anuncios y leads; particulares solo gestionan los propios.
- Búsqueda por ciudad y tipo, paginación, disponibilidad y actualización rápida al pausar/vender.
- Métricas separan vistas, clic en WhatsApp, leads recibidos, visitas solicitadas y ventas reportadas; no afirmar conversación/venta confirmada solo por clic.

## Métricas de validación

- Compradores: búsqueda a ficha, ficha a contacto, filtros usados, resultados vacíos, guardados y solicitudes de visita.
- Vendedores: tiempo hasta borrador publicable, porcentaje que termina publicación, tiempo de revisión, anuncios activos y respuestas a leads.
- Confianza: integridad de campos, checklist fotográfico completo, denuncias por anuncio, decisiones de moderación y anuncios vendidos aún visibles.
- Usabilidad: al menos 8 de 10 particulares piloto completan borrador publicable en cinco minutos sin ayuda, excluyendo tiempo de fotografía; meta heredada del SRS por validar.

## Riesgos y decisiones pendientes

- **Liquidez:** comenzar en una región acotada; medir inventario y demanda antes de ampliar.
- **Fraude/legales:** validar titularidad, autorización, términos, privacidad y alcance de cada sello antes de operaciones reales.
- **Operación de particulares:** mantener alta guiada simple; aclarar cupos, tarifas y soporte antes del piloto.
- **Canal de contacto:** decidir proveedor, consentimiento, retención y canal alterno antes de integrar WhatsApp.
- **Marca y precios:** nombre, presupuesto, precio de destacados, planes y política de anuncios gratis siguen pendientes.
- **Integración dealer:** definir si publicación sincroniza estado/inventario en tiempo real, y quién puede editar cada dato público.

## Base documental

Este plan deriva del PRD y SRS actuales: marketplace regional compartido, carros y motos, publicación de concesionarios y particulares desde E1, datos públicos con privacidad, leads, moderación y agenda. El plan no aprueba tarifas ni políticas que siguen pendientes.
