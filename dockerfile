# استخدم صورة Maven مع Java 17 لبناء التطبيق
FROM maven:3.9.6-eclipse-temurin-17 AS build

# إنشاء مجلد للعمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع داخل الحاوية
COPY . .

# بناء التطبيق باستخدام Maven
RUN mvn clean package -DskipTests

# --------------------------------------
# المرحلة الثانية: تشغيل التطبيق
# --------------------------------------

FROM eclipse-temurin:17-jdk

# إنشاء مجلد للتطبيق
WORKDIR /app

# نسخ ملف jar الناتج من المرحلة السابقة
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

# تعيين المنفذ
EXPOSE 8080

# تشغيل التطبيق
ENTRYPOINT ["java", "-jar", "app.jar"]
