Résumé - Aleksandr "Sasha" Motsjonov
======================
**soswow@gmail.com**, [*github.com/soswow*](http://github.com/soswow) - Sydney, Australia (UTC+10)

Full-stack engineer with 20+ years of experience building for the web — TypeScript/JavaScript, Node.js and others — across startups, mid-size companies, and large-scale enterprise. 11 years at Atlassian, 7+ as a Senior IC.<br/>

Personal Profile
----------------------
* Strong architectural thinking: comfortable making high-stakes technical decisions, writing design documents, and defending tradeoffs across teams
* Proven mentor and team multiplier — contributed to multiple engineer promotions, ran book clubs, and onboarded new team members and PMs
* Deep care for end users and product quality; proactive about improving both the systems I build and the processes around them
* Honest and straightforward communicator across engineering, product, and design — equally comfortable pushing back on a technical decision, debugging an incident in a war room, or presenting a demo to 50+ people

General expertise
----------------------
**General programming skills** <br/>
OOP, FP, Algorithms, Control flows, Data structures, Design Patterns

**TypeScript / JavaScript** <br/>
TypeScript, React, Redux, ES6+, Webpack, Node.js, CoffeeScript, Angular, Backbone, jQuery

**Other parts of the Web stack** <br/>
DOM, CSS3/SASS, HTML5, Canvas, Websocket, other APIs

**Architecture & Practices** <br/>
Microservices, Monorepo tooling, Feature flags / progressive rollout, Graph databases (Cypher), TDD/BDD (Jest, JUnit), SOLID principles, DRY

**Backend technologies** <br/>
NodeJS (ExpressJS and others), Java (Play!, Spring, ORMs), Python (Django), Ruby (RoR)

**Infrastructure** <br/>
AWS, Git, Spinnaker, Bamboo, Jenkins, Docker, VS Code / IntelliJ IDEA, Bash


<div style="page-break-before: always;"></div>

Achievements
----------------------
* At Atlassian, I led the development of Smart Link List View — a feature that lets users embed live, configurable tables of Jira issues directly inside Confluence and Jira editors, replacing the legacy Jira Issue Macro. I also drove critical architecture decisions, including a multi-week investigation that prevented a costly merge of two competing table implementations.
* As a **Senior-level IC (P50 for 7+ years)** frequently acting as Tech Lead, I **received "Exceeding Expectations" ratings** in half of my recent performance cycles. I managed teams of 5–8 engineers, mentored three colleagues toward promotions, and represented the Linking Platform in cross-team technical negotiations — including ownership transitions, API decommission pushbacks, and redirecting partner teams toward simpler solutions that saved weeks of development time.
* In earlier years at Atlassian, in the Purchasing department I helped develop a painless purchase experience for our customers. After that, as part of JIRA Service Desk, my team was responsible for tackling most voted issues by our customers. Later I moved to the media team, where I was feature lead on a public links project that allows customers to unfurl thousands of links in Jira, Confluence and Trello.
* I've been selected as one of three people from Sydney office to participate in an Artificial Intelligence innovation week that took place in Mountain View.
* As part of the Toggl development team I developed a completely new web experience for our user base of more than 500,000. 
I modularized our client-side Backbone code in order to increase maintainability and facilitate its reuse. 
It utilises websockets for instantaneous synchronisation and can also work offline.
* I wrote the web application for Toggl's hiring campaign as a personal initiative. 
Every applicant can test his or her knowledge and show their coding skills. I released this code as an [open source](https://github.com/soswow/lobzik) project.
* While working at Swedbank I replaced their dated Flash-based stock chart components with modern HTML5 code.
* With a colleague at Zeroturnaround, I delivered two successful web projects using Java and the Play! web framework in three months!
* Graduated *cum laude* with my diploma thesis "Face Detection and Tracking Method Based on Neural Networks and Skin Color Segmentation"
* Co-organized and given more than ten talks at local developer community meetups ([Devclub](http://www.devclub.eu/people/))


Work Experience briefly
----------------------
* Atlassian       - **TypeScript, NodeJS, React, Micro servises, Angular** - *11 year*
* Toggl           — **CoffeeScript, Backbone, Grunt** — *1.5 year*
* Zeroturnaround  — **Java, JavaScript, Python** — *1 year*
* 300.mg          — **Ruby, CoffeeScript** — *freelance*
* Swedbank        — **Java, JavaScript** — *2 years*
* Matvil Corporation — **Python, Django, Solr** — *freelance*
* Tallink         — **Java, JavaScript** — *1 year*
* Mozilla Corp.   — **Python, JavaScript** — *3 months* (remotely)
* SQA Partners    — **Java, JavaScript** — *~ 4 years*

Work Experience in more details
----------------------
### 08/2014 — Date.now() Full-stack engineer @ [Atlassian](https://www.atlassian.com)

**Stack parts:**
TypeScript, React, NodeJS, Java, Micro services, Angular

It's been 11 years of projects and work done. The following is some of the latest examples between FY24–FY25

Staff-level IC (P50) on the Linking Platform team within Atlassian's Teamwork Platform group, frequently acting as Tech Lead. Work spanned Confluence, Jira, Smart Links, Automations, and internal graph services.


**1. Smart Link List View — Core Product Delivery**

Led the development and delivery of Smart Link List View (SLLV), a feature that lets users embed live, configurable tables of Jira issues and other data directly inside Confluence and Jira editors — replacing the legacy Jira Issue Macro. Over the course of roughly a year, I built key UX capabilities including resizable columns, column wrapping, a sticky column picker, and a frontend caching layer. I also solved a critical performance bottleneck affecting instances with thousands of columns and drove scope tradeoffs to ensure the team shipped meaningful filtering without building throwaway code ahead of a planned platform change.

**2. Architecture Decisions — Two-Way Sync & Datasource Strategy**

Served as the primary technical voice on two major architectural questions. For Jira Two-Way Sync — which enables inline editing of Jira fields from within Confluence — I guided the Feature Lead through multiple milestones, identified a permissions design flaw early that prompted a full architecture change (preventing costly delays later), and made key data-structure decisions that saved time and produced a more future-proof solution. Separately, when Confluence launched its own "Database" feature and there was pressure to merge the two table implementations, I led a multi-week technical investigation, built a compelling case that the products had more differences than similarities, and successfully drove the decision to keep them separate — preventing a costly and confusing merge.

**3. Teamwork Context — Graph-Based Collaboration**

Led a team of four engineers over six weeks to build the backend and frontend foundation for Teamwork Context, an initiative that gives Atlassian products a shared understanding of how people, projects, and content relate. I owned the backend work — learning Cypher graph queries and integrating with Atlassian's Unified Graph Service — while also advocating for UX changes that simplified the implementation. By carefully sequencing work to minimise cross-engineer dependencies, the team had a working prototype with real data running in the product within two weeks.

**4. Technical Leadership**

Served as Acting Tech Lead for extended periods, managing a team of 5–8 engineers across sprint planning, grooming, weekly 1:1s, and stakeholder communication. I was the go-to decision-maker for unblocking work and the primary bridge between engineering, product, and design. I improved team processes — moving estimation into grooming to eliminate redundant meetings, introducing pre-grooming prep sessions, and championing recorded walkthroughs for complex PRs. As a member of the Technical Advisory Group, I led investigations into feature-flagging migration impact and authored a strategy to reduce on-call noise from third-party service alerts, which was adopted across the platform.

**5. Cross-Product Declarative UI**

Under a tight six-week deadline (with only 3–4 weeks available before leave), I designed and delivered a declarative UI framework for Atlassian's Automations product. The system dynamically renders input fields based on the selected action type, and the resulting schema became a shared foundation that allowed both Rovo (Atlassian's AI product) and Automations to reuse the same actions with different presentations.

**6. Developer Tools & Internal Products**

Built and maintained several widely-used internal tools. I created a graph schema visualisation tool for the Unified Graph Service from scratch — after the PM deprioritised it — replacing a previous tool that took 3+ minutes to load; it was adopted company-wide. I am the sole maintainer of Better Retros, a Confluence plugin for running retrospectives used to create thousands of retros per quarter, keeping it operational through outages, AWS region migrations, and compliance requirements. I also built and maintain a timesheet-filling script used by thousands of employees that.

**7. Cross-Team Negotiations & Ownership Transitions**

Repeatedly represented the team in high-stakes cross-team discussions. I negotiated an API decommission timeline with an internal platform team, pushing back the deadline and choosing a long-term migration path that freed team resources. I drove two major ownership transitions — the Editor/Smart Links component handover (documenting all link-related code, running meetings with principal-level engineers, and transferring code ownership) and a Confluence-specific service transition (authoring architecture diagrams and handover documentation). I also redirected an internal product team toward a simpler integration approach that saved them an estimated six weeks of development, and pushed back on leadership's proposal to remove a feature by presenting usage data and an alternative solution, which I then implemented.

**8. Mentorship & People Development**

Contributed to the promotion of three team members by intentionally distributing impactful projects, tailoring work to individual growth goals, and providing consistent 1:1 guidance. I started an engineering book club around Clean Architecture that ran weekly for months, mentored a junior engineer through a formal mentorship programme, and onboarded a new PM as de facto tech lead. My approach was hands-on — one mentoring relationship involved over 1,000 Slack messages in a single half-year alongside weekly sessions.

**9. Engineering Craft & Operational Excellence**

Maintained a high engineering bar through extensive PR reviews (~60 in a single half in the main frontend monorepo alone), consistently pushing for test coverage, clean code, and preventing accidental breaking changes. On the technical side, I unblocked the company-wide React 18 migration by finding and fixing the only blocking bug in our codebase (a subtle `useEffect` behaviour difference), demonstrated advanced TypeScript expertise, and resolved complex backend bugs under SLO pressure — including late-night fixes for customer-reported issues. I also led incident response across teams, identifying root causes (such as a feature flag from another team breaking embeds in staging) and escalating systemic issues like a failing deployment pipeline.

**10. Organisational & Cultural Impact**

Ran fortnightly demo sessions for the broader platform group and facilitated regular knowledge-sharing presentations, helped organise team offsites and social events, conducted frontend interviews throughout the period while teaching colleagues the interview process, and maintained community gatherings for local Atlassian employees.

### 03/2013 — 08/2014 Front-end engineer @ [Toggl](http://toggl.com)

**Technologies:**
Backbone, CoffeeScript, Grunt, Scss, WebSockets, Offline work, Local storage, Thick client with REST API backend

As part of the Toggl development team, I developed a completely new web experience for our user base of more than 500,000. 
This is a complete static client-side application that uses REST API on the backend. 
I modularized our client-side Backbone code in order to increase maintainability and facilitate its reuse. 
It uses websockets for instantaneous synchronisation and can also work offline. It's life right now and accessible on [http://new.toggl.com](http://new.toggl.com). [Screenshots](http://goo.gl/ock3gT)

I wrote the web application for Toggl's hiring campaign as a personal initiative. 
Every applicant can test his or her knowledge and show their coding skills. [Screenshots](http://goo.gl/6aTWse) I released this code as an [open source](https://github.com/soswow/lobzik) project.

I initiated and pushed through an idea of writing a new mobile app using native technologies (the old one was unpretty mobile website wrapped with Cordova). Later I was in the team who created initial [beta version](http://blog.toggl.com/2014/03/new-android-app-sneak-peek-call-beta-testers/).

### 03/2012 - 03/2013 — Software Engineer for Web @ [Zeroturnaround](http://zeroturnaround.com)

**Positions:**
Software engineer / Web developer for supporting existing web projects and participating in creating new ones

**Technologies:**
Java, JavaScript, Python, CoffeeScript, Node.js, Play!, Play! 2

With a colleague at Zeroturnaround, I delivered two successful web projects 
([myJRebel](http://my.jrebel.com) and [License Server 2.0](http://goo.gl/BvPfJ5)) using Java and the Play! web framework in three months! [Screenshots](http://goo.gl/NW71iC)

During another project, I implemented Acceptance / UI tests for company main website using Python. 
The main goal of this project was to keep the integrity of the website crucial parts.


### 05/2010 - 03/2012 — Front-end Java Software Engineer @ [Swedbank](https://www.swedbank.ee)

**Position:**
Software engineer in the IT department of “Large corporates & Institutions” (Java + JS)

**Responsibilities:**
* New business requirements development in all applications related to the stock market (including Internet Bank, and administrative application for tellers).
* Maintenance of current code base

**Technologies:** Java, XLST transformations, JavaScript, Oracle

**Experience gained:**
* Working in a large corporation (~ 17,220 emp.) with a huge code base and many interconnected applications
* Estonian language practice.


### 04/2010 - 11/2010 — Python Web Developer (remote) @ [Matvil Corporation](http://matvil.com/)

**Position 1:**
Full-text search engine configuration (Python + Solr)

Development of a backend (Python + Django) and front-end (for the search functionality on etvnet.com)
Configuration of a full-text search engine ([Solr](http://lucene.apache.org/solr/)) for an existed database

**Position 2:**
Django development + integration with third party’s e-book content provider.

* Development of the new E-books catalogue site (From top to the bottom)
* Development of the batch process for integration with an E-book provider via REST API  (Python).

**Experience gained:**
Development with Django framework, Full-text search engine configuration, Git, Working remotely


### 04/2009 - 05/2010 - Front-end Java Web Developer @ [AS Tallink Group IT](https://booking.tallink.com)
**Position:**
Java Web Developer - Front-end and server-side (Java)

* I developed and maintained existing ExtJS application and existing booking application
* Being part of the team I helped develop a new Web app for on-line tickets booking. It included both: server-side driven by the Spring framework, as well as front-end made mostly with jQuery javascript framework.


### 06/2009 - 08/2009 - Contractor on experimental project @ Mozilla Corporation
I was working on an experimental module of Bespin project, which would parse PSD (Photoshop) file and produce web components (html+css). One the main results of this work were Python library, that could parse PSD.


### 10/2003 - 04/2009 - Java Web Developer @ SQA Partners
This was my first programming experience, my Alma mater as I think about it. Mainly I was responsible for Web UI of all web-projects. During two last projects, which were Web Applications (Java, Struts, iBatis/Hibernate, Oracle) I wrote front-end controllers and a service layer's business logic.


Education
----------------------
**2008 - 2011** Bachelor of Applied Sciences (in Informatics) from Estonian Entrepreneurship University<br/>
Graduation *cum laude*. Diploma thesis was “Face detection and tracking method, based on neural networks and skin colour segmentation.” [summary](http://goo.gl/5D2097)

*Online courses:*
* Introduction to Artificial Intelligence (by Peter Norvig and Sebastian Thrun) - 83.6% [sertificate](http://goo.gl/mrhvJf)
* Programming a Robotic Car (by Sebastian Thrun) - (With Highest Distinction) [sertificate](http://goo.gl/NDRq9C)
* HTML5 Game Development [sertificate](http://goo.gl/xeMs8G)

*Courses in Tallinn Technical University*:
* Advanced algorithms and data structures
* Data mining
* Functional programming


*References*
Available upon request.
