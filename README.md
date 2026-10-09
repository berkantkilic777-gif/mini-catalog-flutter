<h1 align="center">MINI CATALOG - Flutter Mobile Application</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.47.6-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-3.13.5-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Android-API_37.1-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" />
  <img src="https://img.shields.io/badge/REST_API-FakeStore-005571?style=for-the-badge&logo=fastapi&logoColor=white" alt="REST API" />
  <img src="https://img.shields.io/badge/Material_3-Enabled-757575?style=for-the-badge&logo=materialdesign&logoColor=white" alt="Material 3" />
</p>

<p align="center">
  <a href="#english">English</a> | <a href="#turkish">Türkçe</a>
</p>

---

## Screenshots / Ekran Goruntuleri

| Catalog Home / Ana Katalog | Real-Time Search / Canli Arama | Product Detail / Urun Detayi | Cart / Sepet Yonetimi |
| :---: | :---: | :---: | :---: |
| <img src="screenshots/01_catalog_home.png" width="190" /> | <img src="screenshots/02_search_filter.png" width="190" /> | <img src="screenshots/03_product_detail.png" width="190" /> | <img src="screenshots/04_cart_screen.png" width="190" /> |

---

<div id="english"></div>

# English

## Overview
Mini Catalog is a modern, responsive mobile e-commerce catalog application built with Flutter and Dart. The project fetches dynamic product data from the FakeStore REST API and demonstrates enterprise-level clean architecture, asynchronous state management, real-time filtering, and Material 3 design guidelines.

## Key and Extra Features
- Live REST API Integration: Fetches remote catalog products asynchronously from fakestoreapi.com/products via HTTP GET and deserializes JSON data into type-safe models.
- Real-Time Search and Filtering: Dynamic local filtering across product titles with immediate UI feedback and custom empty-state handling.
- Product Detail Navigation: Deep screen navigation passing typed product entities with high-resolution images, category chips, and formatted descriptions.
- Interactive Cart State Management: Full shopping cart operations (add/remove), responsive badge counter on the App Bar, and real-time total price calculation.
- User Feedback and UX: Contextual SnackBar notifications confirming item additions and checkout completion.
- Clean Architecture and Code Standards: Decoupled modular structure (models/, screens/, widgets/) with zero warnings on flutter analyze.

## Tech Stack and Environment
- Flutter Version: 3.47.6 (Channel stable)
- Dart Version: 3.13.5
- Framework: Flutter Material 3
- Networking: http package (^1.6.0)
- Architecture: Clean Directory Separation (models/, screens/, widgets/)

## Project Structure
```text
lib/
├── models/
│   └── product.dart        # Type-safe Product model and JSON serializer
├── screens/
│   ├── catalog_screen.dart # Home catalog screen with search and promo banner
│   ├── detail_screen.dart  # Product detail view with full description
│   └── cart_screen.dart    # Cart listing and dynamic total checkout view
├── widgets/
│   └── product_card.dart   # Modular grid product card component
└── main.dart               # App configuration and Material 3 theme setup
```

## Installation and Setup
```bash
# Clone repository
git clone [https://github.com/KULLANICI_ADIN/mini-catalog-flutter.git](https://github.com/KULLANICI_ADIN/mini-catalog-flutter.git)

# Enter project directory
cd mini-catalog-flutter

# Get dependencies
flutter pub get

# Run application
flutter run
```

---

<div id="turkish"></div>

# Türkçe

## Genel Bakis
Mini Catalog, Flutter ve Dart kullanilarak gelistirilmis modern ve responsive bir mobil e-ticaret katalog uygulamasidir. Proje, statik sahte veriler yerine FakeStore REST API uzerinden canli urun verilerini ceker; Material 3 tasarim dilini, temiz mimariyi, anlik filtrelemeyi ve reaktif sepet durum yonetimini uctan uca ornekler.

## One Cikan ve Ekstra Ozellikler
- Canli REST API Entegrasyonu: fakestoreapi.com/products uc noktasina HTTP GET istekleri atilarak urunlerin asenkron yuklenmesi, tip guvenli JSON modelleme ve yukleme (loading) durum kontrolu.
- Anlik Arama ve Filtreleme (Real-time Search): Arama cubugu uzerinden urun basliklari uzerinde anlik yerel filtreleme ve aranan urun bulunamadiginda bilgilendirme ekrani.
- Urun Detay Mimarisi: Navigator araciligiyla tip guvenli nesne aktarimi, kategori etiketleri (Chip), buyuk olcekli urun gorseli ve detayli aciklama alani.
- Sepet Durum Yonetimi (State): Sepete urun ekleme, cikarma, AppBar uzerindeki dinamik sepet rozeti (badge) ve sepetteki urunlerin toplam tutarinin anlik hesaplanmasi.
- Kullanici Geri Bildirimi: Sepete ekleme ve satin alma sureclerinde modern SnackBar bildirimleri.
- Temiz Mimari ve Sifir Hata: models/, screens/, widgets/ seklinde ayrilmis moduler klasorleme yapisi ve flutter analyze ile dogrulanmis sifir linter uyarisi.

## Kullanilan Teknolojiler ve Ortam Bilgisi
- Flutter Surumu: 3.47.6 (Channel stable)
- Dart Surumu: 3.13.5
- UI Kutuphanesi: Flutter Material 3
- Ag Kutuphanesi: http (^1.6.0)
- Mimari: Moduler Klasorleme ve Ayrik Sorumluluk Ilkesi

## Proje Klasor Yapisi
```text
lib/
├── models/
│   └── product.dart        # Tip guvenli Urun modeli ve JSON donusturucu
├── screens/
│   ├── catalog_screen.dart # Arama cubugu ve kampanya banner'li ana katalog ekrani
│   ├── detail_screen.dart  # Genisletilmis urun detay ekrani
│   └── cart_screen.dart    # Sepet listesi ve dinamik toplam tutar ekrani
├── widgets/
│   └── product_card.dart   # Yeniden kullanilabilir 2 sutunlu urun karti bileseni
└── main.dart               # Uygulama baslangici ve Material 3 tema ayarlari
```

## Kurulum ve Calistirma
```bash
# Repoyu klonlayin
git clone [https://github.com/KULLANICI_ADIN/mini-catalog-flutter.git](https://github.com/KULLANICI_ADIN/mini-catalog-flutter.git)

# Proje dizinine gidin
cd mini-catalog-flutter

# Paketleri indirin
flutter pub get

# Uygulamayi baslatin
flutter run
```