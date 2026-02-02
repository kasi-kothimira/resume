# [arg('identity', pattern='legal|mira|redacted')]
resume identity="legal":
    typst c resume.typ -f pdf --input identity={{identity}} {{ if identity == "legal" { "ajay_kristipati_resume" } else if identity == "mira" { "mira_kristipati_resume" } else { "redacted_resume" } }}.pdf 
    {{ if identity == "legal" { "typst c resume.typ resume.svg -f svg --input identity=legal" } else { "" } }}

cover identity="legal":
    typst c cover.typ -f pdf --input identity={{identity}} {{ if identity == "legal" { "ajay_kristipati_cover" } else if identity == "mira" { "mira_kristipati_cover" } else { "redacted_cover" } }}.pdf 
