# ui/widgets

Shared, role-agnostic components (buttons, cards, form fields, etc.).

Rule: nothing in this folder may import from `features/`. If a widget
needs role-specific behavior, it belongs in that role's own feature
folder instead, not here.
