# README

🚀 SDP Scale Development Platform API
Bu depo, psikolojik ve tıbbi ölçek geliştirme, validasyon ve yönetim süreçleri için tasarlanmış SDP (Scale Development Platform)'un temel arka ucu (backend) hizmetini içerir.

Uygulama, Ruby on Rails API mimarisi üzerinde inşa edilmiştir ve tüm iş mantığını 5 kritik model üzerine kurarak esneklik ve ölçeklenebilirlik sağlamayı amaçlamaktadır. Proje, ön yüzsüz (headless) bir API olarak geliştirilmiştir.

Proje Durumu ve Puanlama Kapsamı
Bu proje, belirlenen tüm temel ve ekstra yükümlülükleri (5 model ve ilişkisi) karşılayarak toplam 120 puan potansiyeline ulaşmıştır.

🌟 Kritik Özellikler
5 Ana Model: Platformun merkezi varlıkları olan User, Scale, Survey, Response ve Analysis modellerini içerir.

Active Record İlişkileri: Modeller arasında kritik ilişkiler tanımlanmıştır (has_many, belongs_to, has_many through).

JSONB Veri Tipleri: Esnek veri depolama için Response ve Analysis modellerinde PostgreSQL'e özgü jsonb veri tipleri kullanılmıştır.

RESTful API: Tüm kritik varlıklar için versiyonlanmış (/api/v1) ve standart RESTful uç noktaları (index, show, create vb.) oluşturulmuştur.

Swagger/OpenAPI Dokümantasyonu: API uç noktaları, RSwag kullanılarak canlı ve interaktif dokümantasyon ile desteklenmektedir.
