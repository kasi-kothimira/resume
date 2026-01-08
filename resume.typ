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
#link("tel:"+ identity.phone.replace(regex("[-+ \(\)]"),""))[#identity.phone] | #link("mailto:"+identity.email)[#identity.email] | #link("linkedin.com/in/"+identity.linkedin) |  #link("https://github.com/"+identity.github)
]
#set align(left)
== Education
=== North Carolina State University - Raleigh, NC #h(1fr) 08/2021 - 12/2023
Masters in Computer Science
=== University of Washington - Seattle, WA #h(1fr) 09/2018 - 06/2021
Bachelor of Science in Computer Science
== Work Experience

=== Cisco, Software Engineer #h(1fr) 08/2021 - Present
// LESS COMPLIANCE
- Developed and integrated features in Cisco products to achieve federal security certifications including *FIPS* and IPv6 in order to increase public-sector sales revenue by 20% 
- Improved security for Department of Defense applications by implementing *Post-Quantum Cryptography* in *AnyConnect VPN*, improving alignment with federal standards
- Integrated *IPv6* support into the *Identity Services Engine (ISE)* to broaden network protocol capabilities
- Implemented an *automated regression testing framework* for out-of-tree *Linux kernel modules* across diverse platform configurations and kernel ABIs
- Streamlined company-wide security efforts by packaging cryptographic utilities across Cisco offerings like *Cisco Unified CallManager (CUCM)* and *Integrated Service Router (ISR)* to meet FIPS standards
- Backported changes to *RSA* from *OpenSSL* 3.x to *OpenSSL* 1.1.x in order to maintain FIPS Compliance
- Maintained internal versions of *OpenSSL* and *OpenSSH*, and *Python* for use across Cisco products across 50+ teams // name a number 

=== IBM, Full-Stack Development Intern #h(1fr) 06/2019 - 08/2019
- Member of IBM Product Development team, focusing on Talent Management and Virtual Training systems for global employees.
- Created educational software integrating *Docker* and *RHEL* into training modules, improving in course completion rates by 30%.

== Projects

=== #link("http://github.com/lockfale/cackalackybadgy2026-dev/")[2026 CKC Badge] #h(1fr) Dec 2025 - May 2026 
- Member of the team that developed the official conference badge for the CKC Security Conference in Raleigh, NC
- Used *C* to write firmware for *ESP32*-based badges, in order to handle WiFi connectivity and communication with the backend servers using *GRPC* and *MQTT*
- Used *Kubernetes* to run backend servers for the event, and protecting system integrity from adversarial attacks 

=== #link("http://github.com/" + identity.github + "/pgp2openssh")[PGP2OpenSSH] #h(1fr) Nov 2025 
 - A *Rust* Utility to convert *PGP* keys to *OpenSSH* format, enhancing interoperability between encryption systems
=== #link("https://github.com/ArgentumCation/mirafetch")[Mirafetch] #h(1fr) Jul 2023 - Present  
- Created a high-performance cross-platform system monitoring tool in *Rust*, achieving an 8000% performance boost over similar tools through optimized multithreading.
=== Homelab #h(1fr) Jan 2021 - Present
- Built a high-availability container and VM infrastructure using *Kubernetes* and *Proxmox*, achieving fault tolerance and efficient resource distribution with reproducible *Nix* configurations
- Implemented a distributed storage system using *Longhorn*, to ensure data redundancy and high availability across multiple nodes
// === Music Queuing Application #h(1fr) #link("github.com/" + identity.github + "/MusiQueue")
// - Developed a Web application to allow groups of people to collaborate on creating playlists at social gatherings
// - Created *React*-based frontend, with *Firebase* backend for real-time updates and data storage 
//
== Technical Skills
*Programming Languages:* C, C++ C\#, Go, Java, JavaScript, TypeScript, Python, Rust, Swift

*Technologies:* Agile, Bash, Ceph, Docker, Flask, Jenkins, Kubernetes, Linux, Nix, Proxmox, React

