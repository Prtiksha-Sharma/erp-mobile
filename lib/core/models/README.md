# core/models

Shared Dart models live here, generated from the OpenAPI spec covering the
Phase 1 endpoint surface (Parent + Student, ~68 endpoints) — see the
Phase 0 backend prerequisites in the repo root README.

Deliberately empty until that spec exists. Hand-writing `@freezed` models
against an API that mixes snake_case and camelCase inconsistently (see
architecture notes) is how field-name typos become silent nulls — codegen
from a spec avoids that class of bug entirely.
