# BBC Book Challenge

Responsywna aplikacja do śledzenia 100 książek BBC Big Read (ranking z 2003 r.), z logowaniem i synchronizacją przez Supabase.

## Uruchomienie
1. Zainstaluj Node.js 20+.
2. W katalogu projektu uruchom `npm install`.
3. Utwórz projekt w [Supabase](https://supabase.com/).
4. W Supabase → SQL Editor uruchom cały plik `supabase.sql`.
5. Skopiuj `.env.example` jako `.env` i wpisz Project URL oraz anon/public key z Supabase → Project Settings → API.
6. Uruchom `npm run dev` i otwórz adres pokazany w terminalu.
7. Produkcyjny build: `npm run build` (wynik w `dist/`, można wdrożyć np. na Netlify lub Vercel).

## Logowanie
Aplikacja używa Supabase Auth przez e-mail i hasło. W ustawieniach Supabase Auth możesz wyłączyć wymóg potwierdzania e-mail na czas testów lub skonfigurować SMTP dla produkcji.

## Bezpieczeństwo
W przeglądarce używany jest wyłącznie klucz anon/public. Nigdy nie umieszczaj `service_role` key w aplikacji. Dostęp do postępów ogranicza RLS do właściciela rekordu.

## Okładki
Okładki są pobierane z Open Library na podstawie tytułu i autora; ich dostępność zależy od katalogu Open Library. Brak okładki nie blokuje aplikacji.

## Lista
Lista odpowiada rankingowi BBC Big Read Top 100 z 2003 r. Źródło: zarchiwizowana strona BBC, linki w aplikacji.
