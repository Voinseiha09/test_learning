import '../models/quiz.dart';

final List<Quiz> networkSecurityBasicQuizzes = [
  Quiz(
    question: "What is network security?",
    options: [
      "Protection of hardware only",
      "Protection of data, devices, and networks from attacks",
      "Installing antivirus only",
      "Blocking all internet access",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which of the following is a common network attack?",
    options: ["Phishing", "SQL query", "HTML coding", "Video streaming"],
    correctIndex: 0,
  ),
  Quiz(
    question: "What is a firewall used for?",
    options: [
      "Filter incoming and outgoing network traffic",
      "Increase internet speed",
      "Store passwords",
      "Scan for viruses only",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which protocol provides secure communication over the internet?",
    options: ["HTTP", "HTTPS", "FTP", "Telnet"],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is encryption in network security?",
    options: [
      "Converting data into unreadable form to protect it",
      "Deleting files automatically",
      "Compressing files",
      "Monitoring network speed",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "What is a strong password?",
    options: [
      "123456",
      "Password",
      "A combination of letters, numbers, and symbols",
      "Username repeated",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which of the following is a type of malware?",
    options: ["Virus", "Worm", "Trojan Horse", "All of the above"],
    correctIndex: 3,
  ),
  Quiz(
    question: "What is VPN used for?",
    options: [
      "Secure connection over public networks",
      "Increase Wi-Fi speed",
      "Block all emails",
      "Create local files",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which security principle ensures only authorized access?",
    options: ["Confidentiality", "Integrity", "Availability", "Authentication"],
    correctIndex: 3,
  ),
  Quiz(
    question: "Which attack floods a network with excessive traffic?",
    options: [
      "DDoS attack",
      "Phishing attack",
      "Password attack",
      "SQL injection",
    ],
    correctIndex: 0,
  ),
];
