import '../models/quiz.dart';

final List<Quiz> opticalQuizzes = [
  Quiz(
    question: "What is the typical medium for optical communication?",
    options: ["Copper wire", "Fiber optic", "Radio waves", "Coaxial cable"],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which device converts electrical signals to optical signals?",
    options: ["LED", "Photodiode", "Transistor", "Modulator"],
    correctIndex: 0,
  ),
  Quiz(
    question: "What is the main advantage of optical fiber over copper?",
    options: [
      "Higher cost",
      "Lower bandwidth",
      "Lower attenuation",
      "Harder installation",
    ],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which phenomenon is used to guide light in fiber?",
    options: [
      "Refraction",
      "Total internal reflection",
      "Diffraction",
      "Scattering",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question:
        "What is the typical wavelength used in optical fiber communication?",
    options: ["850 nm, 1300 nm, 1550 nm", "500 nm", "10 nm", "2500 nm"],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which type of fiber has a uniform core refractive index?",
    options: [
      "Step-index fiber",
      "Graded-index fiber",
      "Multimode fiber",
      "Single-mode fiber",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which fiber type allows only one propagation mode?",
    options: [
      "Single-mode fiber",
      "Multimode fiber",
      "Plastic fiber",
      "Step-index fiber",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question: "What limits the bandwidth of multimode fiber?",
    options: [
      "Modal dispersion",
      "Chromatic dispersion",
      "Scattering",
      "Attenuation",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question:
        "Which device detects optical signals and converts them to electrical signals?",
    options: ["LED", "Laser", "Photodiode", "Amplifier"],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which factor causes loss in optical fibers?",
    options: ["Absorption", "Scattering", "Bending", "All of the above"],
    correctIndex: 3,
  ),
];
