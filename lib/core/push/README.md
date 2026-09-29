# core/push

FCM registration + notification handlers.

Deliberately empty until:
1. `flutterfire configure` links this app to the existing `edusoft-erp`
   Firebase project (deferred — needs your Firebase CLI login).
2. The backend adds a `device_tokens` table and fans out through
   `notifyUser()` (see Phase 0 backend notes) — currently that function
   only sends Web Push, which cannot reach a native app.
