# Automatización MercadoLibre – Búsqueda PS5

## Descripción
Automatización de pruebas

El escenario principal valida:
- La búsqueda de "PlayStation 5"
- Selección de filtros "Nuevo" y "Local"
- El ordenamiento por "precio"
- La obtención de los "primeros 5 productos" del resultado

## Tecnologías utilizadas
- Ruby
- Cucumber
- Gherkin
- Selenium WebDriver


## Precondiciones
Antes de ejecutar el proyecto asegúrate de tener instalado:

- Windows 10 o superior
- Ruby **2.7 o superior**
- Bundler
- Google Chrome
- ChromeDriver compatible con tu versión de Chrome

Verificar instalación de Ruby:
```powershell
ruby -v
```

Instalar Bundler:
```powershell
gem install bundler
```

## Estructura del proyecto
```text
.
├── features
│   ├── search_ps5.feature
│   ├── step_definitions
│   │   └── search_steps.rb
│   ├── pages
│   │   ├── base_page.rb
│   │   ├── home_page.rb
│   │   └── results_page.rb
│   └── support
│       ├── env.rb
│       └── hooks.rb
├── reports
│   ├── report.html
│   └── screenshots
├── Gemfile
├── Gemfile.lock
├── cucumber.yml
└── README.md
```

## Instalación
Desde la raíz del proyecto ejecutar:

```powershell
bundle install
```

## Ejecución desde consola

```powershell / Terminal
bundle exec cucumber
```

### Ejecutar con reporte HTML
```powershell
bundle exec cucumber --format html --out reports\report.html
```