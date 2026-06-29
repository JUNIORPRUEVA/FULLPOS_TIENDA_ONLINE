import 'package:flutter/material.dart';

void main() {
  runApp(const FulltechAdminApp());
}

class FulltechAdminApp extends StatelessWidget {
  const FulltechAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFF0F5FFF);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fulltech Admin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F8FC),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Color(0xFFF6F8FC),
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          margin: EdgeInsets.zero,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFFE3E9F3)),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFD9E1EE)),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

class AdminOffer {
  AdminOffer({
    required this.title,
    required this.category,
    required this.priceLabel,
    required this.featured,
  });

  String title;
  String category;
  String priceLabel;
  bool featured;
}

class AdminCategory {
  AdminCategory({
    required this.name,
    required this.description,
    required this.active,
  });

  String name;
  String description;
  bool active;
}

class QuoteRequest {
  QuoteRequest({
    required this.client,
    required this.service,
    required this.location,
    required this.status,
  });

  String client;
  String service;
  String location;
  String status;
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: 'admin@fulltech.local');
  final _passwordController = TextEditingController(text: 'admin123');
  bool _obscurePassword = true;
  String? _error;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (!_formKey.currentState!.validate()) return;

    final email = _emailController.text.trim().toLowerCase();
    final password = _passwordController.text.trim();

    if (email == 'admin@fulltech.local' && password == 'admin123') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const AdminHomeScreen()),
      );
      return;
    }

    setState(() {
      _error = 'Credenciales incorrectas. Usa admin@fulltech.local / admin123';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'FT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Administracion Fulltech',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF101C2F),
                              ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Gestion local para ofertas, categorias y solicitudes de cotizacion.',
                          style: TextStyle(
                            color: Color(0xFF637083),
                            height: 1.45,
                          ),
                        ),
                        const SizedBox(height: 22),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Correo',
                            prefixIcon: Icon(Icons.mail_outline),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Escribe el correo';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            labelText: 'Contrasena',
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              onPressed: () => setState(
                                () => _obscurePassword = !_obscurePassword,
                              ),
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Escribe la contrasena';
                            }
                            return null;
                          },
                        ),
                        if (_error != null) ...[
                          const SizedBox(height: 12),
                          Text(
                            _error!,
                            style: const TextStyle(color: Color(0xFFB42318)),
                          ),
                        ],
                        const SizedBox(height: 20),
                        FilledButton.icon(
                          onPressed: _login,
                          icon: const Icon(Icons.login),
                          label: const Text('Entrar'),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Demo local: cambia estas credenciales cuando conectes un backend real.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF7A8699),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int _selectedIndex = 0;

  final offers = <AdminOffer>[
    AdminOffer(
      title: 'Kit de 4 camaras instalado',
      category: 'Camaras de seguridad',
      priceLabel: 'Desde RD\$ consultar',
      featured: true,
    ),
    AdminOffer(
      title: 'Motor para porton corredizo 800 kg',
      category: 'Motores para portones',
      priceLabel: 'Desde RD\$ consultar',
      featured: true,
    ),
    AdminOffer(
      title: 'Mantenimiento de camaras',
      category: 'Servicios tecnicos',
      priceLabel: 'Cotizar revision',
      featured: true,
    ),
  ];

  final categories = <AdminCategory>[
    AdminCategory(
      name: 'Camaras de seguridad',
      description: 'Paquetes para casas, negocios y oficinas.',
      active: true,
    ),
    AdminCategory(
      name: 'Motores para portones',
      description: 'Automatizacion de entradas residenciales y comerciales.',
      active: true,
    ),
    AdminCategory(
      name: 'Productos tecnologicos',
      description: 'Catalogo preparado para crecer.',
      active: false,
    ),
  ];

  final quotes = <QuoteRequest>[
    QuoteRequest(
      client: 'Cliente WhatsApp',
      service: 'Kit de camaras',
      location: 'Higuey',
      status: 'Nuevo',
    ),
    QuoteRequest(
      client: 'Negocio local',
      service: 'Motor de porton',
      location: 'La Altagracia',
      status: 'En seguimiento',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final pages = [
      DashboardPage(offers: offers, categories: categories, quotes: quotes),
      OffersPage(offers: offers, onChanged: () => setState(() {})),
      CategoriesPage(categories: categories, onChanged: () => setState(() {})),
      QuotesPage(quotes: quotes, onChanged: () => setState(() {})),
      const SettingsPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fulltech Admin'),
        actions: [
          IconButton(
            tooltip: 'Cerrar sesion',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(child: pages[_selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_offer_outlined),
            selectedIcon: Icon(Icons.local_offer),
            label: 'Ofertas',
          ),
          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: 'Categorias',
          ),
          NavigationDestination(
            icon: Icon(Icons.message_outlined),
            selectedIcon: Icon(Icons.message),
            label: 'Solicitudes',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    required this.offers,
    required this.categories,
    required this.quotes,
    super.key,
  });

  final List<AdminOffer> offers;
  final List<AdminCategory> categories;
  final List<QuoteRequest> quotes;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Resumen',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 14),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            StatCard(
              label: 'Ofertas',
              value: offers.length.toString(),
              icon: Icons.local_offer,
            ),
            StatCard(
              label: 'Categorias',
              value: categories.length.toString(),
              icon: Icons.category,
            ),
            StatCard(
              label: 'Solicitudes',
              value: quotes.length.toString(),
              icon: Icons.message,
            ),
          ],
        ),
        const SizedBox(height: 18),
        const AdminNoteCard(
          title: 'Estado del admin',
          body:
              'Esta app funciona localmente con datos de ejemplo. El proximo paso natural es conectarla a un backend para guardar cambios reales en la web.',
        ),
      ],
    );
  }
}

class OffersPage extends StatelessWidget {
  const OffersPage({required this.offers, required this.onChanged, super.key});

  final List<AdminOffer> offers;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return EntityListPage(
      title: 'Ofertas',
      actionLabel: 'Nueva oferta',
      onAdd: () async {
        final result = await showOfferEditor(context);
        if (result != null) {
          offers.add(result);
          onChanged();
        }
      },
      children: [
        for (final offer in offers)
          Card(
            child: ListTile(
              title: Text(
                offer.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('${offer.category} • ${offer.priceLabel}'),
              trailing: Switch(
                value: offer.featured,
                onChanged: (value) {
                  offer.featured = value;
                  onChanged();
                },
              ),
              onTap: () async {
                final result = await showOfferEditor(context, offer: offer);
                if (result != null) {
                  offer
                    ..title = result.title
                    ..category = result.category
                    ..priceLabel = result.priceLabel
                    ..featured = result.featured;
                  onChanged();
                }
              },
            ),
          ),
      ],
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    required this.categories,
    required this.onChanged,
    super.key,
  });

  final List<AdminCategory> categories;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return EntityListPage(
      title: 'Categorias',
      actionLabel: 'Nueva categoria',
      onAdd: () async {
        final result = await showCategoryEditor(context);
        if (result != null) {
          categories.add(result);
          onChanged();
        }
      },
      children: [
        for (final category in categories)
          Card(
            child: ListTile(
              title: Text(
                category.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(category.description),
              trailing: Switch(
                value: category.active,
                onChanged: (value) {
                  category.active = value;
                  onChanged();
                },
              ),
              onTap: () async {
                final result = await showCategoryEditor(
                  context,
                  category: category,
                );
                if (result != null) {
                  category
                    ..name = result.name
                    ..description = result.description
                    ..active = result.active;
                  onChanged();
                }
              },
            ),
          ),
      ],
    );
  }
}

class QuotesPage extends StatelessWidget {
  const QuotesPage({required this.quotes, required this.onChanged, super.key});

  final List<QuoteRequest> quotes;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return EntityListPage(
      title: 'Solicitudes',
      actionLabel: 'Agregar solicitud',
      onAdd: () {
        quotes.add(
          QuoteRequest(
            client: 'Nuevo cliente',
            service: 'Por definir',
            location: 'Higuey',
            status: 'Nuevo',
          ),
        );
        onChanged();
      },
      children: [
        for (final quote in quotes)
          Card(
            child: ListTile(
              title: Text(
                quote.client,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('${quote.service} • ${quote.location}'),
              trailing: DropdownButton<String>(
                value: quote.status,
                items: const [
                  DropdownMenuItem(value: 'Nuevo', child: Text('Nuevo')),
                  DropdownMenuItem(
                    value: 'En seguimiento',
                    child: Text('Seguimiento'),
                  ),
                  DropdownMenuItem(value: 'Cerrado', child: Text('Cerrado')),
                ],
                onChanged: (value) {
                  if (value == null) return;
                  quote.status = value;
                  onChanged();
                },
              ),
            ),
          ),
      ],
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        AdminNoteCard(
          title: 'Configuracion',
          body:
              'Aqui luego se podra cambiar WhatsApp, redes sociales, horario, usuarios administradores y conexion con la web.',
        ),
        SizedBox(height: 12),
        AdminNoteCard(
          title: 'Credenciales demo',
          body: 'Correo: admin@fulltech.local\nContrasena: admin123',
        ),
      ],
    );
  }
}

class EntityListPage extends StatelessWidget {
  const EntityListPage({
    required this.title,
    required this.actionLabel,
    required this.onAdd,
    required this.children,
    super.key,
  });

  final String title;
  final String actionLabel;
  final VoidCallback onAdd;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: Text(actionLabel),
            ),
          ],
        ),
        const SizedBox(height: 14),
        ...children.map(
          (child) =>
              Padding(padding: const EdgeInsets.only(bottom: 10), child: child),
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  const StatCard({
    required this.label,
    required this.value,
    required this.icon,
    super.key,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 14),
              Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(label, style: const TextStyle(color: Color(0xFF637083))),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminNoteCard extends StatelessWidget {
  const AdminNoteCard({required this.title, required this.body, super.key});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              body,
              style: const TextStyle(color: Color(0xFF637083), height: 1.45),
            ),
          ],
        ),
      ),
    );
  }
}

Future<AdminOffer?> showOfferEditor(BuildContext context, {AdminOffer? offer}) {
  final title = TextEditingController(text: offer?.title ?? '');
  final category = TextEditingController(text: offer?.category ?? '');
  final price = TextEditingController(text: offer?.priceLabel ?? '');
  var featured = offer?.featured ?? false;

  return showDialog<AdminOffer>(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: Text(offer == null ? 'Nueva oferta' : 'Editar oferta'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: title,
                    decoration: const InputDecoration(labelText: 'Titulo'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: category,
                    decoration: const InputDecoration(labelText: 'Categoria'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: price,
                    decoration: const InputDecoration(
                      labelText: 'Precio visible',
                    ),
                  ),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Oferta destacada'),
                    value: featured,
                    onChanged: (value) =>
                        setDialogState(() => featured = value),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    AdminOffer(
                      title: title.text.trim().isEmpty
                          ? 'Oferta sin titulo'
                          : title.text.trim(),
                      category: category.text.trim().isEmpty
                          ? 'Sin categoria'
                          : category.text.trim(),
                      priceLabel: price.text.trim().isEmpty
                          ? 'Cotizar'
                          : price.text.trim(),
                      featured: featured,
                    ),
                  );
                },
                child: const Text('Guardar'),
              ),
            ],
          );
        },
      );
    },
  );
}

Future<AdminCategory?> showCategoryEditor(
  BuildContext context, {
  AdminCategory? category,
}) {
  final name = TextEditingController(text: category?.name ?? '');
  final description = TextEditingController(text: category?.description ?? '');
  var active = category?.active ?? true;

  return showDialog<AdminCategory>(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: Text(
              category == null ? 'Nueva categoria' : 'Editar categoria',
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: name,
                    decoration: const InputDecoration(labelText: 'Nombre'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: description,
                    maxLines: 3,
                    decoration: const InputDecoration(labelText: 'Descripcion'),
                  ),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Activa'),
                    value: active,
                    onChanged: (value) => setDialogState(() => active = value),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    AdminCategory(
                      name: name.text.trim().isEmpty
                          ? 'Categoria sin nombre'
                          : name.text.trim(),
                      description: description.text.trim().isEmpty
                          ? 'Sin descripcion'
                          : description.text.trim(),
                      active: active,
                    ),
                  );
                },
                child: const Text('Guardar'),
              ),
            ],
          );
        },
      );
    },
  );
}
