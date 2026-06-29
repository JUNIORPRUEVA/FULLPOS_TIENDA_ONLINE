import type { Offer } from '@app-types/index';

export const offers: Offer[] = [
  {
    id: 'offer-kit-4-cameras',
    slug: 'kit-4-camaras-instalado',
    categorySlug: 'camaras-seguridad',
    title: 'Kit de 4 camaras instalado',
    subtitle: 'Proteccion practica para casas, negocios pequenos y oficinas.',
    description:
      'Paquete recomendado para cubrir entradas, area frontal, caja, pasillos o puntos criticos de una propiedad. Incluye instalacion basica y configuracion inicial.',
    priceLabel: 'Desde RD$ consultar',
    includes: ['4 camaras', 'DVR', 'Disco duro', 'Instalacion basica', 'Configuracion en celular'],
    idealFor: ['Casas', 'Negocios pequenos', 'Oficinas', 'Colmados'],
    benefits: ['Monitoreo remoto', 'Grabacion continua', 'Mayor control del negocio', 'Soporte tecnico'],
    warranty: 'Garantia segun equipos y condiciones de instalacion.',
    featured: true,
    image: '/images/hero-installation.jpg',
    whatsappMessage: 'Hola Fulltech, quiero cotizar el Kit de 4 camaras instalado.',
    seoTitle: 'Kit de 4 camaras instalado en Higuey | Fulltech SRL',
    seoDescription:
      'Cotiza un kit de 4 camaras instalado en Higuey para casa, negocio u oficina con configuracion en celular.',
    faqs: [
      {
        question: 'El precio puede variar?',
        answer:
          'Si. Puede variar por distancia, cableado, altura, condiciones del lugar y equipos adicionales.',
      },
    ],
  },
  {
    id: 'offer-business-cameras',
    slug: 'camaras-para-negocio',
    categorySlug: 'camaras-seguridad',
    title: 'Camaras para negocio',
    subtitle: 'Controla entradas, caja, almacenes y areas de atencion.',
    description:
      'Solucion para tiendas, colmados, oficinas y locales comerciales que necesitan vigilancia visible, grabacion y acceso remoto.',
    priceLabel: 'Cotizacion rapida',
    includes: ['Evaluacion de puntos', 'Recomendacion de kit', 'Instalacion', 'Configuracion remota'],
    idealFor: ['Tiendas', 'Colmados', 'Ferreterias', 'Locales comerciales'],
    benefits: ['Disuasion', 'Revision de incidentes', 'Control desde celular', 'Opciones escalables'],
    warranty: 'Garantia segun el equipo seleccionado.',
    featured: true,
    image: '/images/hero-installation.jpg',
    whatsappMessage: 'Hola Fulltech, quiero camaras para mi negocio.',
    seoTitle: 'Camaras de seguridad para negocios en Higuey',
    seoDescription:
      'Instalacion de camaras para negocios, tiendas y oficinas en Higuey con soporte de Fulltech SRL.',
  },
  {
    id: 'offer-home-cameras',
    slug: 'camaras-para-casa',
    categorySlug: 'camaras-seguridad',
    title: 'Camaras para casa',
    subtitle: 'Seguridad para entradas, marquesina, patio y areas importantes.',
    description:
      'Instalamos camaras para hogares con orientacion clara para cubrir los puntos mas importantes sin comprar de mas.',
    priceLabel: 'Desde RD$ consultar',
    includes: ['Orientacion por WhatsApp', 'Instalacion', 'Configuracion en celular', 'Prueba de funcionamiento'],
    idealFor: ['Casas', 'Apartamentos', 'Villas', 'Urbanizaciones'],
    benefits: ['Mas tranquilidad', 'Acceso remoto', 'Grabacion', 'Soporte despues de instalar'],
    warranty: 'Garantia disponible segun paquete.',
    featured: false,
    image: '/images/hero-installation.jpg',
    whatsappMessage: 'Hola Fulltech, quiero instalar camaras en mi casa.',
    seoTitle: 'Camaras de seguridad para casas en Higuey',
    seoDescription:
      'Instala camaras de seguridad en tu casa en Higuey con configuracion en celular y soporte tecnico.',
  },
  {
    id: 'offer-gate-800',
    slug: 'motor-porton-corredizo-800kg',
    categorySlug: 'motores-portones',
    title: 'Motor para porton corredizo 800 kg',
    subtitle: 'Automatiza tu entrada con comodidad y seguridad.',
    description:
      'Motor para portones corredizos residenciales o comerciales. Incluye instalacion basica, controles y configuracion segun condiciones del porton.',
    priceLabel: 'Desde RD$ consultar',
    includes: ['Motor corredizo 800 kg', 'Instalacion basica', 'Controles', 'Pruebas de apertura y cierre'],
    idealFor: ['Residencias', 'Locales', 'Entradas comerciales', 'Portones corredizos'],
    benefits: ['Entrada sin bajarte del vehiculo', 'Mayor comodidad', 'Mejor control del acceso', 'Instalacion tecnica'],
    warranty: 'Garantia segun fabricante e instalacion acordada.',
    featured: true,
    image: '/images/motor-porton-real.jpg',
    whatsappMessage: 'Hola Fulltech, quiero automatizar mi porton con un motor corredizo 800 kg.',
    seoTitle: 'Motor para porton corredizo 800 kg en Higuey',
    seoDescription:
      'Cotiza instalacion de motor para porton corredizo 800 kg en Higuey y La Altagracia.',
    faqs: [
      {
        question: 'Incluye controles?',
        answer:
          'La oferta puede incluir controles segun el paquete disponible. Confirmamos detalles al cotizar.',
      },
    ],
  },
  {
    id: 'offer-camera-maintenance',
    slug: 'mantenimiento-camaras',
    categorySlug: 'servicios-tecnicos',
    title: 'Mantenimiento de camaras',
    subtitle: 'Revision completa para recuperar rendimiento y estabilidad.',
    description:
      'Revisamos camaras, DVR, fuentes, conectores, disco duro, visualizacion remota y limpieza basica para detectar fallas.',
    priceLabel: 'Desde RD$ consultar',
    includes: ['Revision de camaras', 'Chequeo de DVR', 'Revision de conectores', 'Prueba de visualizacion remota'],
    idealFor: ['Sistemas con fallas', 'Camaras sin imagen', 'DVR lento', 'Clientes con equipos instalados'],
    benefits: ['Diagnostico rapido', 'Prevencion de fallas', 'Mejor calidad de imagen', 'Orientacion tecnica'],
    warranty: 'Garantia segun servicio realizado y piezas reemplazadas.',
    featured: true,
    image: '/images/hero-installation.jpg',
    whatsappMessage: 'Hola Fulltech, quiero solicitar mantenimiento de camaras.',
    seoTitle: 'Mantenimiento de camaras de seguridad en Higuey',
    seoDescription:
      'Servicio de mantenimiento y revision de camaras, DVR y visualizacion remota en Higuey.',
  },
  {
    id: 'offer-security-review',
    slug: 'revision-tecnica-sistema-seguridad',
    categorySlug: 'servicios-tecnicos',
    title: 'Revision tecnica de sistema de seguridad',
    subtitle: 'Diagnostico para saber que falla y como resolverlo.',
    description:
      'Servicio de revision para sistemas de seguridad que presentan fallas, mala imagen, perdida de grabacion o problemas de acceso remoto.',
    priceLabel: 'Cotizar revision',
    includes: ['Diagnostico inicial', 'Revision de conexiones', 'Prueba de equipo', 'Recomendacion de solucion'],
    idealFor: ['Casas', 'Negocios', 'Oficinas', 'Sistemas instalados por terceros'],
    benefits: ['Claridad antes de comprar piezas', 'Solucion guiada', 'Ahorro de tiempo', 'Soporte local'],
    warranty: 'La revision no sustituye garantia de equipos existentes.',
    featured: false,
    image: '/images/hero-installation.jpg',
    whatsappMessage: 'Hola Fulltech, quiero una revision tecnica de mi sistema de seguridad.',
    seoTitle: 'Revision tecnica de sistemas de seguridad en Higuey',
    seoDescription:
      'Diagnostico tecnico para camaras, DVR y sistemas de seguridad con fallas en Higuey.',
  },
];

export const featuredOffers = offers.filter((offer) => offer.featured);

export function getOfferBySlug(slug: string) {
  return offers.find((offer) => offer.slug === slug);
}

export function getOffersByCategory(categorySlug: string) {
  return offers.filter((offer) => offer.categorySlug === categorySlug);
}
