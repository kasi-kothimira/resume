# [arg('identity', pattern='real|mira|redacted')]
resume identity="real":
    typst c resume.typ -f pdf --input identity={{identity}} {{ if identity == "real" { "ajay_kristipati_resume" } else if identity == "mira" { "mira_kristipati_resume" } else { "redacted_resume" } }}.pdf 
    {{ if identity == "real" { "typst c resume.typ resume.svg -f svg --input identity=real" } else { "" } }}

cover identity="real":
    typst c cover.typ -f pdf --input identity={{identity}} {{ if identity == "real" { "ajay_kristipati_cover" } else if identity == "mira" { "mira_kristipati_cover" } else { "redacted_cover" } }}.pdf 
