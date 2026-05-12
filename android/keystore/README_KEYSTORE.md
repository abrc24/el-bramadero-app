# Cómo generar el Keystore para El Bramadero

## ⚠️ GUARDA ESTA INFORMACIÓN EN LUGAR MUY SEGURO
Si pierdes el keystore o la contraseña, NO podrás actualizar tu app en Play Store jamás.

## Paso 1: Abrir CMD o PowerShell como Administrador en Windows

## Paso 2: Ejecutar este comando (reemplaza los valores en MAYÚSCULAS con los tuyos)

```
"C:\Program Files\Java\jre1.8.0_481\bin\keytool.exe" -genkey -v -keystore "C:\Users\amy_1\Documents\Claude\carrito\el_bramadero\android\keystore\elbramadero-release.jks" -alias elbramadero -keyalg RSA -keysize 2048 -validity 10000 -storepass TU_CONTRASEÑA -keypass TU_CONTRASEÑA -dname "CN=TU_NOMBRE, OU=TU_EMPRESA, O=TU_EMPRESA, L=TU_CIUDAD, S=TU_ESTADO, C=MX"
```

## Ejemplo real:
```
"C:\Program Files\Java\jre1.8.0_481\bin\keytool.exe" -genkey -v -keystore "C:\Users\amy_1\Documents\Claude\carrito\el_bramadero\android\keystore\elbramadero-release.jks" -alias elbramadero -keyalg RSA -keysize 2048 -validity 10000 -storepass MiApp2024! -keypass MiApp2024! -dname "CN=Ana Garcia, OU=El Bramadero, O=Distribuidora El Bramadero, L=Guadalajara, S=Jalisco, C=MX"
```

## Paso 3: Actualizar android/key.properties con tus datos reales

```
storePassword=MiApp2024!
keyPassword=MiApp2024!
keyAlias=elbramadero
storeFile=../keystore/elbramadero-release.jks
```

## Paso 4: Generar el AAB para Play Store
```
flutter build appbundle --release
```
El archivo quedará en: build/app/outputs/bundle/release/app-release.aab

## Paso 5: Respaldar el keystore
Copia el archivo .jks a:
- USB personal
- Google Drive / OneDrive (carpeta privada)
- Nunca lo subas a GitHub público
