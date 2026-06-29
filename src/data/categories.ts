import type { Category } from '@app-types/index';

export const categories: Category[] = [
  {
    id: 'cat-camaras',
    slug: 'camaras-seguridad',
    name: 'Camaras de seguridad',
    shortDescription: 'Paquetes para casas, negocios y oficinas con instalacion y configuracion.',
    description:
      'Instalacion de camaras de seguridad en Higuey para proteger casas, tiendas, oficinas, colmados y locales comerciales. Te ayudamos a elegir el kit correcto segun tu espacio.',
    icon: 'camera',
    image: '/images/category-cameras.svg',
    benefits: [
      'Visualizacion desde el celular',
      'Opciones para hogares y negocios',
      'Instalacion profesional',
      'Soporte despues del servicio',
    ],
    seoTitle: 'Instalacion de camaras de seguridad en Higuey | Fulltech SRL',
    seoDescription:
      'Paquetes de camaras de seguridad en Higuey para casas y negocios. Instalacion, configuracion en celular y soporte tecnico.',
    faqs: [
      {
        question: 'Cuantas camaras necesito?',
        answer:
          'Depende de los accesos, areas vulnerables y el tipo de propiedad. Podemos orientarte por WhatsApp con fotos o una visita.',
      },
      {
        question: 'Incluye configuracion en celular?',
        answer:
          'Si, los paquetes instalados pueden incluir configuracion en celular cuando el equipo y la conexion lo permiten.',
      },
    ],
  },
  {
    id: 'cat-motores',
    slug: 'motores-portones',
    name: 'Motores para portones',
    shortDescription: 'Automatiza portones corredizos con equipos confiables e instalacion tecnica.',
    description:
      'Instalacion de motores para portones en Higuey y La Altagracia. Una solucion practica para entrar y salir con mas seguridad, comodidad y control.',
    icon: 'gate',
    image: '/images/category-gates.svg',
    benefits: [
      'Mayor comodidad diaria',
      'Controles incluidos segun oferta',
      'Instalacion basica disponible',
      'Orientacion segun peso y tipo de porton',
    ],
    seoTitle: 'Instalacion de motores para portones en Higuey | Fulltech SRL',
    seoDescription:
      'Motores electricos para portones corredizos en Higuey. Instalacion, controles y orientacion tecnica para casas y negocios.',
    faqs: [
      {
        question: 'Como se cual motor necesito?',
        answer:
          'Se evalua el peso aproximado, estado del riel, uso diario y condiciones del porton antes de recomendar un equipo.',
      },
    ],
  },
  {
    id: 'cat-servicios',
    slug: 'servicios-tecnicos',
    name: 'Servicios tecnicos',
    shortDescription: 'Revision, mantenimiento y soporte para sistemas de seguridad instalados.',
    description:
      'Servicios tecnicos para revisar camaras, DVR, fuentes, conectores, cableado, acceso remoto y fallas en sistemas de seguridad.',
    icon: 'tool',
    image: '/images/category-service.svg',
    benefits: ['Diagnostico claro', 'Mantenimiento preventivo', 'Correccion de fallas', 'Soporte local'],
    seoTitle: 'Servicios tecnicos de seguridad en Higuey | Fulltech SRL',
    seoDescription:
      'Revision y mantenimiento de camaras, DVR y sistemas de seguridad en Higuey y zonas cercanas.',
  },
  {
    id: 'cat-productos',
    slug: 'productos-tecnologicos',
    name: 'Productos tecnologicos',
    shortDescription: 'Equipos y accesorios tecnologicos proximamente disponibles en catalogo.',
    description:
      'Categoria preparada para agregar equipos tecnologicos, accesorios, redes, controles, fuentes, discos y productos relacionados.',
    icon: 'device',
    image: '/images/category-products.svg',
    benefits: ['Catalogo escalable', 'Productos por categoria', 'Listo para ecommerce futuro'],
    seoTitle: 'Productos tecnologicos en Higuey | Fulltech SRL',
    seoDescription:
      'Catalogo tecnologico de Fulltech SRL en Higuey, preparado para crecer con productos y servicios.',
  },
];

export function getCategoryBySlug(slug: string) {
  return categories.find((category) => category.slug === slug);
}
