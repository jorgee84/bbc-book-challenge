-- Wklej w Supabase → SQL Editor → New query → Run
create table if not exists public.book_progress (
  user_id uuid not null references auth.users(id) on delete cascade,
  book_rank int not null check (book_rank between 1 and 100),
  status text not null default 'to_read' check (status in ('to_read','reading','read')),
  rating int check (rating between 1 and 5),
  notes text not null default '',
  finished_at date,
  updated_at timestamptz not null default now(),
  primary key (user_id, book_rank)
);
alter table public.book_progress enable row level security;
create policy "Users can view own progress" on public.book_progress for select using (auth.uid() = user_id);
create policy "Users can insert own progress" on public.book_progress for insert with check (auth.uid() = user_id);
create policy "Users can update own progress" on public.book_progress for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete own progress" on public.book_progress for delete using (auth.uid() = user_id);
