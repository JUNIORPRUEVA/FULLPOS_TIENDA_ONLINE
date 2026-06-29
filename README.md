# Fulltech Ecommerce

Proyecto web estatico tipo ecommerce ligero y embudo de ventas para Fulltech SRL en Higuey, La Altagracia.

## Stack

- Astro 6
- Tailwind CSS v4
- TypeScript
- PWA con manifest, iconos y service worker
- Docker + Nginx para servir archivos estaticos

## Comandos

```bash
npm install
npm run dev
npm run build
npm run preview
npm run check
```

## PWA

La configuracion PWA vive en:

- `public/manifest.webmanifest`
- `public/sw.js`
- `public/icons/`
- meta tags moviles en `src/layouts/Layout.astro`

El service worker cachea paginas principales, manifest, iconos e imagen critica del hero. Para publicar una version nueva puedes cambiar `CACHE_VERSION` en `public/sw.js`.

## Editar categorias

Modifica `src/data/categories.ts`. Cada categoria tiene slug, textos, beneficios, SEO e imagen.

## Editar ofertas

Modifica `src/data/offers.ts`. Cada oferta tiene categoria, precio visible, incluye, beneficios, garantia, mensaje de WhatsApp y SEO.

## Cambiar WhatsApp

Edita `src/config/site.ts`:

```ts
whatsapp: '18090000000'
```

Usa el numero en formato internacional, sin `+`, espacios ni guiones.

## Docker

```bash
docker compose up --build
```

El sitio queda disponible en `http://localhost:8080`.

## Estructura

```txt
public/
  images/
  icons/
  manifest.webmanifest
  sw.js
src/
  components/
  config/
  data/
  layouts/
  pages/
  styles/
  types/
  utils/
```

## Despliegue con Nginx

El `Dockerfile` compila Astro y copia `dist/` a Nginx. `nginx.conf` incluye cache de assets, gzip y headers basicos de seguridad.

## Proximos pasos

- Sustituir telefono, correo, redes y direccion real en `src/config/site.ts`.
- Reemplazar testimonios editables por testimonios reales.
- Agregar precios reales o rangos cuando esten definidos.
- Integrar analytics, pixel de Meta y eventos de conversion.
- Agregar backend, calendario o CRM cuando el embudo ya este validado.
# FULLPOS_TIENDA_ONLINE
