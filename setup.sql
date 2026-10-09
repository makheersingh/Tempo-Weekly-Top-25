-- Run once in Supabase: SQL Editor > New query > paste > Run.
create table if not exists public.watchlist (
  id text primary key,
  member text not null check (member in ('Rehan','Claire','Justice')),
  artist_id bigint not null,
  saved_at bigint not null,
  week text,
  week_label text,
  card jsonb not null
);
alter table public.watchlist enable row level security;
create policy "anyone can read"   on public.watchlist for select using (true);
create policy "anyone can add"    on public.watchlist for insert with check (member in ('Rehan','Claire','Justice'));
create policy "anyone can change" on public.watchlist for update using (true) with check (member in ('Rehan','Claire','Justice'));
create policy "anyone can remove" on public.watchlist for delete using (true);
