
# استخدم صورة Java 17 لتشغيل التطبيق
FROM eclipse-temurin:17-jdk

# إنشاء مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملف jar من الجهاز إلى الحاوية
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# تعيين المنفذ الذي يعمل عليه التطبيق
EXPOSE 8080

# تشغيل التطبيق
ENTRYPOINT ["java", "-jar", "app.jar"]

