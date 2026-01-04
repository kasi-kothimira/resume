#set page(paper: "ansi-a",  margin: 0.5in )
// NOTE: turns out typst doesn't support Variable fonts 
#set text(font: "Atkinson Hyperlegible Next", size: 10.5pt, spacing: 80%, weight: 400)
// Global spacing
#set par(leading: 0.65em)
#show heading.where(level: 2): set block(spacing: 0.9em) 
#show heading.where(level:3): set block(spacing: 0.9em)
// Link Formatting
#show link: set text(fill: blue, weight: 500)
#show link: underline

#let real_identity = (
first_name: "Ajay",
last_name: "Kristipati",
github: "kasi-kothimira",
linkedin: "ajay-kristipati",
phone: "+1 (919) 448-7644",
email: "kristipati.ajay@gmail.com"
)

// Redacted version for public sharing
#let redacted_identity = (
first_name: "First",
last_name: "Last",
github: "torvalds",
linkedin: "richard-stallman",
phone: "+1 (800) 867-5309",
email: "first.last@example.com"
)

#let identity = real_identity
// #let identity = redacted_identity

// not scoping this align since it breaks HTML output
#set align(center)
= #identity.first_name #identity.last_name
#[
#set text(weight: 600)
#link("tel:"+ identity.phone.replace(regex("[-+ \(\)]"),""))[#identity.phone] | #link("mailto:"+identity.email)[#identity.email] | LinkedIn: #link("linkedin.com/in/"+identity.linkedin)[#identity.linkedin] | GitHub: #link("https://github.com/"+identity.github)[#identity.github]
]
#set align(left)
#identity.first_name #identity.last_name is a passionate software engineer with 4+ years of experience developing secure, compliant software solutions, specializing in cybersecurity and federal compliance (FIPS, Common Criteria). Proven expertise in enhancing software adaptability for public sector clients, with strong skills in cross-functional team collaboration, memory-safe programming languages, and cybersecurity.

== Work Experience

=== Cisco, Software Engineer #h(1fr) 08/2021 - Present

- Developed and integrated features in Cisco products to achieve federal security certifications including FIPS and IPv6 in order to accelerate public-sector sales 
- Improved security for Department of Defense applications by implementing Post-Quantum Cryptography in AnyConnect VPN, improving compliance with federal standards
- Integrated IPv6 support into the Identity Services Engine (ISE) to broaden network protocol capabilities
- Established a comprehensive testing environment for Linux Kernel Modules across diverse system configurations
- Streamlined compliance efforts by packaging cryptographic utilities across Cisco offerings like Cisco Unified CallManager (CUCM) and Integrated Service Router (ISR) to meet FIPS standards
- Backported changes to RSA from OpenSSL 3.x to OpenSSL 1.1.x in order to maintain FIPS Compliance
- Maintained internal versions of OpenSSL and OpenSSH, and Python in order to facilitate FIPS adoption in Cisco products

=== IBM, Full-Stack Development Intern #h(1fr) 06/2019 - 08/2019
- Member of IBM Product Development team, focusing on Talent Management and Virtual Training systems for global employees.
- Collaborated with a global team to develop educational software for users in developing countries, focusing on programming tools like Docker and RHEL, resulting in significant improvements in course completion and retention rates.

== Projects

=== 2026 CKC Badge #h(1fr) #link("https://github.com/lockfale/cackalackybadgy2026-dev/")
- Member of the team that developed the official conference badge for the CKC Security Conference in Raleigh, NC
- Used C to write firmware for ESP32-based badges, in order to handle WiFi connectivity and communication with the backend servers 
- Used Kubernetes to run backend servers for the event,  and protecting system integrity from adversarial attacks 

=== PGP2OpenSSH #h(1fr) #link("github.com/" + identity.github + "/pgp2openssh")
 - A Rust Utility to convert PGP keys to OpenSSH format, enhancing interoperability between encryption systems
=== Mirafetch #h(1fr) #link("github.com/ArgentumCation/mirafetch")[github.com/ArgentumCation/mirafetch]
- Created a high-performance cross-platform system monitoring tool in Rust, achieving an 8000% performance boost over similar tools through optimized multithreading.
=== Homelab
- Built a high-availability container and VM infrastructure using Kubernetes and Proxmox, achieving fault tolerance and efficient resource distribution with reproducible Nix configurations
- Implemented a distributed storage system using Longhorn
=== Music Queuing Application #h(1fr) #link("github.com/" + identity.github + "/MusiQueue")
Developed a Web application to allow groups of people to collaborate on creating playlists at social gatherings
Used React to create frontend UX

== Technical Skills
*Programming Languages:* C, C++ C\#, Go, Java, JavaScript, TypeScript, Python, Rust, Swift

*Technologies:* Agile, Bash, Ceph, Docker, Flask, Jenkins, Kubernetes, Linux, Nix, Proxmox, React
