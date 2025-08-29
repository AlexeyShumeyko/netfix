# Changelog
Все заметные изменения этого проекта документируются в этом файле.  

Формат основан на [Keep a Changelog](https://keepachangelog.com/ru/1.0.0/).

---

## [1.2.0] - 2025-08-29
### Added
- Проверка ОС при запуске (Windows 7 и macOS) с предупреждением
- Новая цепочка плагинов **Security Diagnostics**
- Добавлены плагины: `AntivirusCheckPlugin`, `FirewallCheckPlugin`
- Новый плагин в разделе диагностики сети: `ArpCacheClearPlugin`
- Добавлены плагины в Connection Diagnostics: `CurlCheckPlugin`, `PortAvailabilityPlugin`

### Changed
- Плагин `ProxyCheckPlugin` перенесён в Security Diagnostics
- Автоматизация `HostsFileCheckPlugin` (автопоиск доменов в hosts файле с подсветкой)
- Улучшен `SiteAvailabilityPlugin`: проверка двух доменов, новые обработчики ошибок с подробными сообщениями
- Логика цепочки DNS Optimization улучшена: очистка кэша после смены DNS, `nslookup` вызывается всегда

### Fixed
- Система логирования: добавлен метод расширения `ExecuteAsync`, убран лишний системный текст

---

## [1.1.0] - 2025-06-29
### Added
- **Advanced HTML Logging System** с расширенными визуальными элементами:
  - баннеры, таблицы, кодовые блоки, прогресс-бары, collapsible-секции
- Новые методы логирования: `Section`, `SubSection`, `Highlight`, `Warning`, `Debug`, `Progress`, `Table`, `CodeBlock`, `Link`, `Image`, `Collapsible`
- DNS плагины обновлены для использования новых лог-тегов

### Improved
- Структура и читаемость логов
- Производительность генерации HTML логов

---

## [1.0.2] - 2025-06-28
### Fixed
- Логика определения сетевых интерфейсов:
  - корректный парсинг имён с пробелами
  - поддержка разных локализаций
  - строгая проверка статуса подключения
- Алгоритм выбора DNS:
  - приоритет packet loss над ping
  - минимум 3/5 успешных пингов
  - улучшенный лог выбора DNS

---
