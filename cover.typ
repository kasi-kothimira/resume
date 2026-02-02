#set page(paper: "ansi-a",  margin: 0.5in )
// NOTE: turns out typst doesn't support Variable fonts 
#set text(font: "Atkinson Hyperlegible Next", size: 10.5pt, spacing: 80%, weight: 400)
// Global spacing
#set par(leading: 0.65em)
#show heading.where(level: 2): set block(spacing: 0.8em) 
#show heading.where(level:3): set block(spacing: 0.8em)
// Link Formatting
#show link: set text(fill: blue, weight: 500)
#show link: underline

#import "identity.typ"
#let identity_arg = sys.inputs.at("identity", default: "redacted")
#let identity = if identity_arg == "redacted" {
    identity.redacted_identity
} else if identity_arg == "mira" {
    identity.mira_identity
} else if identity_arg == "legal" {
    identity.legal_identity
}

#let position_name = "POSITION_NAME"
#let position_link = "POSITION_LINK"
#let company_name = "COMPANY_NAME"


#set align(center)
= #identity.first_name #identity.last_name
#[
#set text(weight: 600)
#link("tel:"+ identity.phone.replace(regex("[-+ \(\)]"),""))[#identity.phone] | #link("mailto:"+identity.email)[#identity.email] | #link("http://linkedin.com/in/"+identity.linkedin)[linkedin.com/in/#identity.linkedin] |  #link("https://github.com/"+identity.github)[github.com/#identity.github]
]
#set align(left)

To whom it may concern:

I'm applying for #link(position_link)[#position_name]. I’d like to
introduce you to myself, my work, and why I’m interested in the position.

// With a Master’s in Computer Science specializing in Cybersecurity from North Carolina State University and professional experience as a Software Engineer at Cisco, I offer a unique blend of systems-level programming expertise and a security-first mindset.

During my tenure at Cisco, I have focused on updating enterprise-level products to meet stringent federal standards. One of my key achievements involved implementing Post-Quantum Cryptography in AnyConnect VPN to align with Department of Defense security requirements. Additionally, I have deep experience with cryptographic infrastructure, having maintained internal versions of OpenSSL, OpenSSH, and Python for teams across the organization. My work backporting RSA changes from OpenSSL 3.x to 1.1.x demonstrates my ability to navigate complex legacy codebases while ensuring modern compliance.

I am particularly drawn to #company_name because of your commitment to [mention a specific company project or value]. I am confident that my technical proficiency in C, Rust, and Go , combined with my experience in Kubernetes and Docker, makes me a valuable asset to your engineering team.

Kind regards,

#identity.first_name #identity.last_name
