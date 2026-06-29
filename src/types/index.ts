export type Category = {
  id: string;
  slug: string;
  name: string;
  shortDescription: string;
  description: string;
  icon: string;
  image: string;
  benefits: string[];
  seoTitle: string;
  seoDescription: string;
  faqs?: FAQItem[];
};

export type Offer = {
  id: string;
  slug: string;
  categorySlug: string;
  title: string;
  subtitle: string;
  description: string;
  priceLabel: string;
  includes: string[];
  idealFor: string[];
  benefits: string[];
  warranty: string;
  featured: boolean;
  image: string;
  whatsappMessage: string;
  seoTitle: string;
  seoDescription: string;
  faqs?: FAQItem[];
};

export type FAQItem = {
  question: string;
  answer: string;
};

export type Testimonial = {
  name: string;
  role: string;
  quote: string;
};
