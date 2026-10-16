// Single source of truth for site content. Edit here, not in the markup.
import type { ImageMetadata } from 'astro';
import egwReader from '../assets/work/egw-reader.webp';
import egwSearch from '../assets/work/egw-search.webp';
import egwAudiobooks from '../assets/work/egw-audiobooks.webp';
import egwInspiration from '../assets/work/egw-inspiration.webp';
import sbcChurch from '../assets/work/sbc-church.webp';

export const profile = {
  name: 'Peter BK',
  role: 'Flutter & Python Developer',
  location: 'Itahari, Nepal',
  email: 'peterbk1998@gmail.com',
  resume: '/Peter-BK-Resume.pdf',
  links: {
    github: 'https://github.com/drumkiller-peter',
    linkedin: 'https://www.linkedin.com/in/peter-bk-a01028165/',
  },
  summary:
    'I have spent five years shipping production apps to Google Play, the App Store and the Microsoft Store. Right now I work on EGW Writings, a reading and listening app that runs on phones, tablets, the web, desktops and watches. Most of my work lives at the seam between a Flutter client and the API behind it: offline sync, state that survives a bad connection, and architecture that a team can keep extending.',
};

export type Shot = { src: ImageMetadata; alt: string };
export type Link = { label: string; href: string };

export type Project = {
  name: string;
  platforms: string;
  summary: string;
  details: string[];
  stack: string[];
  link?: Link;
  shots?: Shot[];
};

export const featured: Project[] = [
  {
    name: 'EGW Writings',
    platforms: 'iOS, Android, web, macOS, Windows, Linux, wearables',
    summary:
      'A large reading and listening app for a library of books, built from one Flutter codebase for every screen size from a watch to a desktop.',
    details: [
      'Offline reading with sync back to the server when a connection returns',
      'Reading history tracked across devices',
      'Audio player with its own state, kept in step with the text',
      'Adaptive layouts for phone, tablet, desktop and wearable',
    ],
    stack: ['Flutter', 'BLoC', 'Drift', 'REST'],
    link: { label: 'EGW3 on the App Store', href: 'https://apps.apple.com/np/app/egw3/id6450880835' },
    shots: [
      { src: egwReader, alt: 'Book reader showing a chapter with numbered verses' },
      { src: egwSearch, alt: 'Search results with a written summary and numbered source references' },
      { src: egwAudiobooks, alt: 'Audiobooks screen with a featured title and library categories' },
      { src: egwInspiration, alt: 'Dark-theme daily inspiration screen with a week calendar and prayer cards' },
    ],
  },
  {
    name: 'Noah Ark Solutions backend',
    platforms: 'Python service',
    summary:
      'A multi-tenant SaaS backend for church management apps. One deployment serves many churches, each with its own configuration.',
    details: [
      'Tenant-aware data model and configuration per church',
      'Single API that powers several branded client apps',
    ],
    stack: ['FastAPI', 'MongoDB', 'Python'],
    shots: [
      { src: sbcChurch, alt: 'SBC Church app home screen with weekly worship, a week calendar and the day’s scripture' },
    ],
  },
  {
    name: 'Youth Summit desktop and field apps',
    platforms: 'Windows desktop, Android, iOS',
    summary:
      'Two apps for a book distribution program. The desktop app keeps records offline and syncs later; the field app keeps students and leaders connected on the ground.',
    details: [
      'Desktop record-keeping that works without a network and syncs on reconnect',
      'Live student and leader locations on Google Maps',
      'SOS alerts, chat and distribution records in the field app',
    ],
    stack: ['Flutter', 'Google Maps', 'WebSockets', 'SQLite'],
  },
];

export const otherWork: { name: string; note: string; href?: string }[] = [
  {
    name: 'KLIQ U',
    note: 'Remote Coach white-label platform: many branded coaching apps from one Flutter project',
    href: 'https://apps.apple.com/np/app/kliq-u/id6445960028',
  },
  { name: 'Mahajodi', note: 'Matrimonial app with Firebase and Stripe payments' },
  { name: 'Gaadi Bazaar', note: 'Vehicle marketplace, Flutter front end with data caching' },
  { name: 'Sanduk', note: 'Ed-tech platform, Flutter front end with animations and caching' },
];

export type Job = {
  role: string;
  company: string;
  period: string;
  note?: string;
  points: string[];
};

export const experience: Job[] = [
  {
    role: 'Software Engineer',
    company: 'WebPoint Solutions',
    period: 'Mar 2022 – Present',
    note: 'Joined as Associate Software Engineer, promoted June 2024',
    points: [
      'Lead Flutter development on several cross-platform apps for mobile, web and desktop',
      'Design modular architectures with BLoC and Provider that stay easy to extend and test',
      'Profile and optimize builds to cut load time and keep the UI smooth',
      'Integrate REST APIs, offline caching and localization',
      'Mentor junior developers, review code and maintain deployment pipelines',
    ],
  },
  {
    role: 'Associate Software Engineer, part-time',
    company: 'Remote Coach Solutions',
    period: 'Jun 2023 – Feb 2024',
    points: [
      'Built white-label fitness apps, producing many branded apps from one codebase',
      'Set up environment-based configuration and app flavors per brand',
      'Integrated analytics, push notifications and payment gateways',
    ],
  },
  {
    role: 'Junior Flutter Developer',
    company: 'Nandi Technology',
    period: 'Apr 2021 – Mar 2022',
    points: [
      'Built mobile UI with Flutter and Firebase',
      'Published apps to Google Play and the App Store',
      'Integrated REST APIs and improved app performance',
    ],
  },
];

export const skills: [string, string][] = [
  ['Languages', 'Dart, Python, JavaScript'],
  ['Frameworks', 'Flutter, FastAPI, Next.js'],
  ['Architecture', 'Clean Architecture, BLoC, Provider, Riverpod, GetX, GetIt'],
  ['Data', 'Firebase, Firestore, PostgreSQL, MongoDB, SQLite, Drift'],
  ['Integrations', 'REST, WebSockets, Google Maps, Stripe, eSewa, Khalti'],
  ['Practice', 'CI/CD, offline sync, localization, push notifications, AI-assisted development'],
];

export const education = [
  { title: 'B.Sc. Computer Science and Information Technology', place: 'Tribhuvan University', period: '2016 – 2022' },
];
