import '../models/quiz.dart';
final List<Quiz> wirelessCommunicationQuizzes = [
  // ===== BASIC LEVEL (5 QCM) =====
  Quiz(
    question: "What is wireless communication?",
    options: [
      "Communication using cables",
      "Communication without physical wires",
      "Communication using fiber only",
      "Communication using USB",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which wave type is commonly used in wireless communication?",
    options: [
      "Sound waves",
      "Electromagnetic waves",
      "Mechanical waves",
      "Ocean waves",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which device is used to transmit wireless signals?",
    options: ["Switch", "Antenna", "Router cable", "Modem"],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which technology is commonly used for mobile phones?",
    options: ["Bluetooth", "Cellular networks", "Fiber optic", "LAN cable"],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is the main advantage of wireless communication?",
    options: ["Mobility", "Low security", "High cost", "More cables"],
    correctIndex: 0,
  ),

  // ===== BASIC EXERCISES (5 Items) =====
  Quiz(
    question:
        "Exercise 1: If a Wi-Fi signal operates at 2.4 GHz, what is the wavelength? (Use c ≈ 3×10^8 m/s)",
    options: [
      "0.125 m",
      "12.5 cm",
      "Both 0.125 m and 12.5 cm",
      "Cannot determine",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question:
        "Exercise 2: A Bluetooth device has a range of 10 m. What is its main application?",
    options: [
      "Short-range communication",
      "Long-range communication",
      "Satellite link",
      "Cellular network",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "Exercise 3: Which factor reduces wireless signal strength?",
    options: [
      "Distance from transmitter",
      "Obstacles like walls",
      "Interference from other devices",
      "All of the above",
    ],
    correctIndex: 3,
  ),
  Quiz(
    question: "Exercise 4: Wi-Fi 5 operates at which frequency band?",
    options: ["2.4 GHz", "5 GHz", "Both 2.4 GHz and 5 GHz", "1 GHz"],
    correctIndex: 2,
  ),
  Quiz(
    question:
        "Exercise 5: In wireless systems, what is the main purpose of modulation?",
    options: [
      "Increase power consumption",
      "Convert digital signals to analog for transmission",
      "Store data",
      "Generate interference",
    ],
    correctIndex: 1,
  ),

  // ===== INTERMEDIATE LEVEL (5 QCM) =====
  Quiz(
    question: "Which technology is used for long-range mobile communication?",
    options: ["Wi-Fi", "Bluetooth", "Cellular 4G/5G", "Infrared"],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which of the following affects wireless signal propagation?",
    options: [
      "Multipath fading",
      "Free-space loss",
      "Obstacles like buildings",
      "All of the above",
    ],
    correctIndex: 3,
  ),
  Quiz(
    question: "What is the primary use of an RF spectrum analyzer?",
    options: [
      "Measure signal power and frequency components",
      "Increase Wi-Fi speed",
      "Filter out malware",
      "Control network devices",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which wireless communication standard supports IoT devices?",
    options: ["Zigbee", "Ethernet", "Fiber optics", "DSL"],
    correctIndex: 0,
  ),
  Quiz(
    question: "What does RSSI (Received Signal Strength Indicator) indicate?",
    options: [
      "Transmitter power",
      "Distance to network cable",
      "Signal strength at receiver",
      "Data rate",
    ],
    correctIndex: 2,
  ),
];
