# 📱 Generación de APK para Flutter

Este documento explica de forma clara y directa cómo generar, instalar y probar un **APK de una app Flutter** en un dispositivo Android real.

---

## 🚀 1. Preparar el proyecto

Asegúrate de estar dentro de la carpeta del proyecto:

```bash
cd ruta/de/tu/proyecto
```

Ejemplo:

```bash
cd C:/Users/nicol/Documents/flutter-Fragata/flutter_application_1
```

---

## 🏗️ 2. Generar el APK en modo release

Ejecuta:

```bash
flutter build apk
```

Flutter generará el archivo en:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🔍 3. Verificar dispositivos conectados

Conecta tu celular mediante USB y ejecuta:

```bash
flutter devices
```

Debes ver tu dispositivo listado, por ejemplo:

```
TECNO KI5k • android-arm64 • Android 12
```

Si no aparece, habilita:

* **Opciones de desarrollador**
* **Depuración USB**

---

## 📲 4. Instalar el APK directamente en el celular

Con el dispositivo detectado, instala la app con:

```bash
flutter install
```

Esto instalará el archivo `app-release.apk` en el dispositivo conectado.

---

## 🧪 5. Probar la app en el dispositivo

Una vez instalado, abre la aplicación desde tu celular. Aparecerá con el nombre configurado en el proyecto.

---

## 📦 6. (Opcional) Generar un AAB para Play Store

Google Play requiere un archivo `.aab` para la publicación.

```bash
flutter build appbundle
```

Salida:

```
build/app/outputs/bundle/release/app-release.aab
```

---

## 🔧 7. (Opcional) APKs por arquitectura

Para versiones más ligeras:

```bash
flutter build apk --split-per-abi
```

Esto generará varios APK optimizados:

* arm64-v8a
* armeabi-v7a
* x86_64

---

## ✔️ Resultado final

Con estos pasos logras:

* Generar un APK desde Flutter
* Detectar tu dispositivo Android
* Instalar el APK directamente en tu celular
* Probar la app físicamente

---

## 📚 Requisitos

* Flutter instalado y configurado
* Cable USB y móvil con "Depuración USB" activa
* Android SDK

---

## 📝 Notas

Cada vez que actualices código:

1. Ejecuta `flutter build apk`
2. Instala nuevamente con `flutter install`

---

## 💬 Soporte

Si necesitas automatizar procesos, generar un pipeline CI/CD o preparar la app para tienda, solo pide la siguiente guía.
