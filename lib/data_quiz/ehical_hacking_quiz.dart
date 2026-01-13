
import '../models/quiz.dart';
final List<Quiz> ethicalHackingQuizzes = [
  // ===== BASIC LEVEL =====
  Quiz(
    question: "What is ethical hacking?",
    options: [
      "Hacking for personal gain",
      "Illegal access to systems",
      "Authorized testing of system security",
      "Destroying computer systems",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Who is an ethical hacker?",
    options: [
      "A cyber criminal",
      "A system attacker",
      "A security professional with permission",
      "A software developer",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "What is the main goal of ethical hacking?",
    options: [
      "Steal sensitive data",
      "Improve system performance",
      "Identify security vulnerabilities",
      "Disable networks",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which of the following is required before ethical hacking?",
    options: [
      "Admin password",
      "Written permission",
      "Antivirus software",
      "Firewall access",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which term refers to a weakness in a system?",
    options: ["Threat", "Exploit", "Vulnerability", "Attack"],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which type of hacker follows ethical rules?",
    options: [
      "Black hat hacker",
      "Grey hat hacker",
      "White hat hacker",
      "Script kiddie",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which area does ethical hacking belong to?",
    options: [
      "Software engineering",
      "Network design",
      "Cybersecurity",
      "Database management",
    ],
    correctIndex: 2,
  ),

  // ===== INTERMEDIATE LEVEL =====
  Quiz(
    question: "What is footprinting in ethical hacking?",
    options: [
      "Deleting system logs",
      "Gathering information about a target",
      "Breaking passwords",
      "Injecting malware",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is social engineering?",
    options: [
      "Network configuration",
      "Manipulating people to gain information",
      "Writing secure code",
      "Encrypting data",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which attack targets human behavior rather than systems?",
    options: ["SQL injection", "Brute force attack", "Phishing", "DDoS"],
    correctIndex: 2,
  ),
  Quiz(
    question: "What is authentication?",
    options: [
      "Granting access rights",
      "Verifying user identity",
      "Encrypting data",
      "Monitoring traffic",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which security principle ensures data is not altered?",
    options: ["Confidentiality", "Availability", "Integrity", "Authentication"],
    correctIndex: 2,
  ),
  Quiz(
    question: "What does a firewall primarily do?",
    options: [
      "Store passwords",
      "Encrypt data",
      "Filter network traffic",
      "Detect viruses",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which protocol is commonly used for secure communication?",
    options: ["HTTP", "FTP", "Telnet", "HTTPS"],
    correctIndex: 3,
  ),

  // ===== ADVANCED LEVEL =====
  Quiz(
    question: "What is penetration testing?",
    options: [
      "Monitoring network traffic",
      "Simulating attacks to evaluate security",
      "Installing antivirus software",
      "Blocking IP addresses",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which principle ensures systems remain accessible when needed?",
    options: ["Confidentiality", "Integrity", "Availability", "Authorization"],
    correctIndex: 2,
  ),
  Quiz(
    question: "What is risk assessment?",
    options: [
      "Removing all threats",
      "Evaluating potential security risks",
      "Encrypting databases",
      "Blocking attackers",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which security control is considered preventive?",
    options: ["Audit logs", "Firewalls", "Incident reports", "Backup recovery"],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is defense in depth?",
    options: [
      "Single strong security layer",
      "Multiple layers of security controls",
      "Strong passwords only",
      "Using encryption alone",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which standard focuses on information security management?",
    options: ["ISO 9001", "ISO 27001", "IEEE 802.11", "RFC 1918"],
    correctIndex: 1,
  ),
];
