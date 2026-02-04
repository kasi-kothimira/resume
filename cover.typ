// #set page(paper: "ansi-a",  margin: 0.5in )
#set page(paper: "ansi-a",  margin: 0.5in )
// NOTE: turns out typst doesn't support Variable fonts 
// #set text(font: "Atkinson Hyperlegible Next", size: 10.5pt, spacing: 80%, weight: 400)
#set text(font: "Atkinson Hyperlegible Next")
// Global spacing
// #set par(leading: 0.65em)
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
#let company_value = "COMPANY_VALUE"
#let skills = "LIST_SKILLS_HERE"

#set align(center)
= #identity.first_name #identity.last_name
#[
#set text(weight: 600)
#link("tel:"+ identity.phone.replace(regex("[-+ \(\)]"),""))[#identity.phone] | #link("mailto:"+identity.email)[#identity.email] | #link("http://linkedin.com/in/"+identity.linkedin)[linkedin.com/in/#identity.linkedin] |  #link("https://github.com/"+identity.github)[github.com/#identity.github]
]
#set align(left)

To whom it may concern:

I'm applying for #link(position_link)[#position_name]. I’d like to /*introduce you to myself, my work, and*/ explain why I’m interested in the position.

\
// With a Master’s in Computer Science specializing in Cybersecurity from North Carolina State University and professional experience as a Software Engineer at Cisco, I offer a unique blend of systems-level programming expertise and a security-first mindset.
// == About Me
// In my current role at Cisco, I focus on the full lifecycle of software development, from feature integration to automated testing. I have successfully integrated complex protocol support, such as Post-Quantum Cryptography, into the AnyConnect VPN client to broaden security capabilities. My technical versatility is further demonstrated by my  maintaining core internal versions of Python and OpenSSH utilized across several teams. Because I have worked across different codebases and languages, including C++, Rust, and Go, I am adept at quickly ramping up to new technologies and environments.  
//
// My technical projects outside of work highlight my passion for building efficient, high-concurrency systems:
// - Systems & Connectivity: I wrote firmware in C for ESP32-based hardware, managing complex BLE connectivity and server communication via gRPC and MQTT.
// - Cloud Native Infrastructure: I maintain a high-availability Homelab using Kubernetes and Proxmox, utilizing Nix for reproducible configurations and Longhorn for distributed storage.

// During my tenure at Cisco, I have focused on updating enterprise-level products to meet federal standards. One of my key achievements involved implementing Post-Quantum Cryptography in AnyConnect VPN to align with Department of Defense security requirements. Additionally, I have deep experience with cryptographic infrastructure, having maintained internal versions of OpenSSL, OpenSSH, and Python for teams across the organization. My work backporting RSA changes from OpenSSL 3.x to 1.1.x demonstrates my ability to navigate complex legacy codebases while ensuring modern compliance.
// \

== Why #company_name?

I am particularly drawn to #company_name because of your commitment to #company_value. I am confident that my technical proficiency in #skills, makes me a valuable asset to your engineering team.

Kind regards,

#identity.first_name #identity.last_name
