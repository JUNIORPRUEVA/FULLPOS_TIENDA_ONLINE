import { siteConfig } from '@config/site';

export function createWhatsAppLink(message: string): string {
  return `https://wa.me/${siteConfig.whatsapp}?text=${encodeURIComponent(message)}`;
}

export function defaultWhatsAppMessage(intent = 'Quiero una cotizacion'): string {
  return `Hola Fulltech, ${intent}. Estoy en ${siteConfig.city} o una zona cercana y me interesa recibir orientacion.`;
}
