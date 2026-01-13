import '../models/quiz.dart';
final List<Quiz> computerNetworkQuizzes = [
  // ===== BASIC LEVEL =====
  Quiz(
    question: "What is a computer network?",
    options: [
      "A single computer system",
      "A collection of connected computers",
      "A software program",
      "A database system",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which device is used to connect multiple computers in a LAN?",
    options: ["Router", "Switch", "Modem", "Firewall"],
    correctIndex: 1,
  ),
  Quiz(
    question: "What does LAN stand for?",
    options: [
      "Large Area Network",
      "Local Area Network",
      "Long Access Network",
      "Logical Area Network",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which network topology uses a central device?",
    options: [
      "Bus topology",
      "Ring topology",
      "Star topology",
      "Mesh topology",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which protocol is used to transfer web pages?",
    options: ["FTP", "SMTP", "HTTP", "SNMP"],
    correctIndex: 2,
  ),

  // ===== INTERMEDIATE LEVEL =====
  Quiz(
    question: "Which OSI layer is responsible for routing?",
    options: [
      "Data Link layer",
      "Network layer",
      "Transport layer",
      "Session layer",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is the main function of a router?",
    options: [
      "Connect devices in a LAN",
      "Filter network traffic",
      "Forward packets between networks",
      "Convert analog to digital signals",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which protocol provides reliable data transfer?",
    options: ["UDP", "IP", "ICMP", "TCP"],
    correctIndex: 3,
  ),
  Quiz(
    question: "What is an IP address?",
    options: [
      "A physical hardware address",
      "A unique logical address for a device",
      "A routing protocol",
      "A network cable type",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which device operates at the Data Link layer?",
    options: ["Hub", "Switch", "Router", "Gateway"],
    correctIndex: 1,
  ),
];
