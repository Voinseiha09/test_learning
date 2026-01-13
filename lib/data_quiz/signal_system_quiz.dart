import '../models/quiz.dart';

final List<Quiz> signalAndSystemQuizzes = [
  Quiz(
    question: "What is a signal in the context of signal and system theory?",
    options: [
      "A physical device",
      "A function that conveys information about a phenomenon",
      "A network protocol",
      "A type of computer",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question:
        "Which of the following is an example of a continuous-time signal?",
    options: [
      "Digital clock output",
      "Temperature measured continuously over time",
      "Binary file stored on a computer",
      "Daily website visits in integers",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "A signal defined only at discrete time intervals is called?",
    options: [
      "Continuous-time signal",
      "Discrete-time signal",
      "Analog signal",
      "Noise signal",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "What does an LTI system stand for?",
    options: [
      "Linear Time-Invariant system",
      "Low Transmission Interface",
      "Large Transient Input system",
      "Linear Transfer Integration",
    ],
    correctIndex: 0,
  ),
  Quiz(
    question:
        "Which property of a system ensures the output is proportional to input?",
    options: ["Time invariance", "Linearity", "Causality", "Stability"],
    correctIndex: 1,
  ),
  Quiz(
    question:
        "A system whose output depends only on present and past inputs is called?",
    options: [
      "Non-causal system",
      "Causal system",
      "Random system",
      "Unstable system",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question:
        "Which operation is used to find the output of an LTI system for any input?",
    options: ["Differentiation", "Integration", "Convolution", "Correlation"],
    correctIndex: 2,
  ),
  Quiz(
    question:
        "Which of the following is an example of a time-invariant system?",
    options: [
      "y(t) = x(t^2)",
      "y(t) = x(t - 5)",
      "y(t) = t * x(t)",
      "y(t) = sin(t) + x(t)",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question:
        "Which property ensures that a system does not produce output before the input is applied?",
    options: ["Linearity", "Causality", "Stability", "Time invariance"],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which of the following is a discrete-time signal?",
    options: [
      "x(t) = sin(2πt)",
      "x[n] = sin(2πn/10)",
      "Temperature over time",
      "Analog voltage waveform",
    ],
    correctIndex: 1,
  ),
];
