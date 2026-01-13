import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class Quiz {
  final String question;
  final List<String> options;
  final int correctIndex;

  Quiz({
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}

class Subject {
  final String name;
  final List<Quiz> quizzes;

  Subject({required this.name, required this.quizzes});
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SubjectListPage(),
    );
  }
}
class SubjectListPage extends StatelessWidget {
  const SubjectListPage({super.key});
  @override
  Widget build(BuildContext context){

    
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
        question:
            "Which device is used to connect multiple computers in a LAN?",
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
    final List<Quiz> javaProgrammingQuizzes = [
      // ===== INTERMEDIATE LEVEL =====
      Quiz(
        question:
            "Which concept allows a class to inherit properties from another class?",
        options: [
          "Encapsulation",
          "Polymorphism",
          "Inheritance",
          "Abstraction",
        ],
        correctIndex: 2,
      ),
      Quiz(
        question: "Which keyword is used to prevent inheritance in Java?",
        options: ["static", "final", "private", "protected"],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which collection does not allow duplicate elements?",
        options: ["List", "Set", "ArrayList", "Vector"],
        correctIndex: 1,
      ),
      Quiz(
        question: "What is the default value of an int variable in Java?",
        options: ["0", "null", "undefined", "1"],
        correctIndex: 0,
      ),
      Quiz(
        question: "Which exception is checked at compile time?",
        options: [
          "NullPointerException",
          "ArithmeticException",
          "IOException",
          "ArrayIndexOutOfBoundsException",
        ],
        correctIndex: 2,
      ),

      // ===== ADVANCED LEVEL =====
      Quiz(
        question:
            "Which Java feature allows multiple methods with the same name but different parameters?",
        options: [
          "Method overriding",
          "Method overloading",
          "Inheritance",
          "Encapsulation",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which keyword is used to create a thread in Java?",
        options: ["thread", "run", "extends Thread", "implements Runnable"],
        correctIndex: 3,
      ),
      Quiz(
        question: "What does JVM stand for?",
        options: [
          "Java Variable Machine",
          "Java Virtual Machine",
          "Java Verified Machine",
          "Java Visual Machine",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which memory area stores objects in Java?",
        options: ["Stack", "Method Area", "Heap", "Register"],
        correctIndex: 2,
      ),
      Quiz(
        question: "Which mechanism is used by garbage collection?",
        options: [
          "Reference counting",
          "Manual deletion",
          "Automatic memory management",
          "Pointer arithmetic",
        ],
        correctIndex: 2,
      ),
    ];
    final List<Quiz> operatingSystemQuizzes = [
      // ===== BASIC LEVEL =====
      Quiz(
        question: "What is an operating system?",
        options: [
          "A hardware component",
          "A system software that manages computer resources",
          "An application software",
          "A programming language",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question:
            "Which of the following is an example of an operating system?",
        options: ["Microsoft Word", "Linux", "Google Chrome", "MySQL"],
        correctIndex: 1,
      ),
      Quiz(
        question: "What is the main function of an operating system?",
        options: [
          "Compile programs",
          "Manage hardware and software resources",
          "Design hardware",
          "Create databases",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which OS is mostly used on mobile devices?",
        options: ["Windows", "Linux", "Android", "DOS"],
        correctIndex: 2,
      ),
      Quiz(
        question: "What is a process?",
        options: [
          "A program in execution",
          "A file stored on disk",
          "A compiler",
          "A hardware device",
        ],
        correctIndex: 0,
      ),
      Quiz(
        question: "Which component of OS manages memory?",
        options: ["File system", "Memory manager", "Device driver", "Shell"],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which of the following is a single-user operating system?",
        options: ["Windows Server", "UNIX", "MS-DOS", "Linux"],
        correctIndex: 2,
      ),

      // ===== INTERMEDIATE LEVEL =====
      Quiz(
        question:
            "Which scheduling algorithm gives equal time to all processes?",
        options: [
          "FCFS",
          "Shortest Job First",
          "Round Robin",
          "Priority Scheduling",
        ],
        correctIndex: 2,
      ),
      Quiz(
        question: "What is a thread?",
        options: [
          "A heavy-weight process",
          "A program stored in memory",
          "A lightweight process",
          "A CPU register",
        ],
        correctIndex: 2,
      ),
      Quiz(
        question:
            "Which memory allocation technique suffers from external fragmentation?",
        options: ["Paging", "Segmentation", "Virtual memory", "Cache memory"],
        correctIndex: 1,
      ),
      Quiz(
        question: "What is a deadlock?",
        options: [
          "Process execution completed",
          "Infinite loop",
          "Processes waiting indefinitely for resources",
          "Memory overflow",
        ],
        correctIndex: 2,
      ),
      Quiz(
        question: "Which condition is NOT necessary for deadlock?",
        options: [
          "Mutual exclusion",
          "Hold and wait",
          "Preemption",
          "Circular wait",
        ],
        correctIndex: 2,
      ),
      Quiz(
        question: "Which file system structure stores file metadata?",
        options: ["File Allocation Table", "Inode", "Directory", "Superblock"],
        correctIndex: 1,
      ),
      Quiz(
        question: "What is context switching?",
        options: [
          "Switching between user and kernel mode",
          "Switching CPU from one process to another",
          "Switching memory pages",
          "Switching I/O devices",
        ],
        correctIndex: 1,
      ),

      // ===== ADVANCED LEVEL =====
      Quiz(
        question:
            "Which page replacement algorithm replaces the page that will not be used for the longest time?",
        options: ["FIFO", "LRU", "Optimal", "Clock"],
        correctIndex: 2,
      ),
      Quiz(
        question: "What is thrashing?",
        options: [
          "High CPU utilization",
          "Excessive paging activity",
          "Deadlock situation",
          "Disk scheduling",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which algorithm helps avoid deadlock?",
        options: ["FIFO", "Banker’s algorithm", "Round Robin", "SCAN"],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which disk scheduling algorithm minimizes head movement?",
        options: ["FCFS", "SSTF", "SCAN", "C-SCAN"],
        correctIndex: 1,
      ),
      Quiz(
        question: "What is a semaphore used for?",
        options: [
          "Memory allocation",
          "Process synchronization",
          "Disk scheduling",
          "Deadlock detection",
        ],
        correctIndex: 1,
      ),
      Quiz(
        question: "Which OS structure provides maximum flexibility?",
        options: [
          "Monolithic kernel",
          "Layered structure",
          "Microkernel",
          "Batch system",
        ],
        correctIndex: 2,
      ),
    ];
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
        options: [
          "Confidentiality",
          "Availability",
          "Integrity",
          "Authentication",
        ],
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
        question:
            "Which principle ensures systems remain accessible when needed?",
        options: [
          "Confidentiality",
          "Integrity",
          "Availability",
          "Authorization",
        ],
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
        options: [
          "Audit logs",
          "Firewalls",
          "Incident reports",
          "Backup recovery",
        ],
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
        question:
            "Which technology is used for long-range mobile communication?",
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
        question:
            "What does RSSI (Received Signal Strength Indicator) indicate?",
        options: [
          "Transmitter power",
          "Distance to network cable",
          "Signal strength at receiver",
          "Data rate",
        ],
        correctIndex: 2,
      ),
    ];
    final List<Quiz> signalAndSystemQuizzes = [
      Quiz(
        question:
            "What is a signal in the context of signal and system theory?",
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
        options: [
          "Differentiation",
          "Integration",
          "Convolution",
          "Correlation",
        ],
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
        question:
            "Which protocol provides secure communication over the internet?",
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
        options: [
          "Confidentiality",
          "Integrity",
          "Availability",
          "Authentication",
        ],
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

    final List<Subject> subjects = 
    [
     // Subject(name: "Optical Communication", quizzes: opticalQuizzes),
      Subject(name: "Computer Network", quizzes: computerNetworkQuizzes),
      Subject(name: "Java Programming", quizzes: javaProgrammingQuizzes),
      Subject(name: "Operating System", quizzes: operatingSystemQuizzes),
      Subject(name: "Ehical Hacking", quizzes: ethicalHackingQuizzes),
      Subject(name: "Wireless Communication", quizzes: wirelessCommunicationQuizzes,),
      Subject(name: "Signal and System", quizzes: signalAndSystemQuizzes),
      Subject(name: "Network Security", quizzes: networkSecurityBasicQuizzes),
    ];

    //Starter section 
    return Scaffold(
      appBar: AppBar(title: const Text("Short Quiz of the Subject"), backgroundColor: Colors.cyanAccent,),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return ListTile(
            title: Text(subject.name),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                   builder: (context) => QuizPage(subject: subject),
                ),
              );
            },
          );
        },
      ),
    );
  }
}



class QuizPage extends StatefulWidget {
  final Subject subject;
  const QuizPage({super.key, required this.subject});

  @override
  State<QuizPage> createState() => _QuizPageState();
  
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  bool _answered = false;
  int? _selectedIndex;
  int _score = 0;
  late Timer _timer;
  int _timeLeft = 15; // seconds per question

  void _answerQuestion(int selectedIndex) {
    setState(() {
      _answered = true;
      _selectedIndex = selectedIndex;
      if (selectedIndex == widget.subject.quizzes[_currentQuestionIndex].correctIndex) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    _timer.cancel(); // stop current timer
    if (_currentQuestionIndex < widget.subject.quizzes.length - 1) {
      setState(() {
        _currentQuestionIndex;
      });
      _startTimer(); // start timer for next question
    } else {
      _finishQuiz();
    }
    if (_currentQuestionIndex + 1 >= widget.subject.quizzes.length) {
      // All questions finished
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text("Quiz Completed!"),
            content: Text(
              "Your total score: $_score/${widget.subject.quizzes.length}",
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // close dialog
                  //Navigator.of(context).pop(); // back to subject list
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        _currentQuestionIndex++;
        _answered = false;
        _selectedIndex = null;
      });
    }
  }
  void _finishQuiz() {
    _timer.cancel(); // stop timer
    Navigator.pop(context, _score); // return score or go back to original page
  }

  void _startTimer() {
    _timeLeft = 15; // reset for each question
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _nextQuestion(); // auto move to next question when time is 0
        }
      });
    });
  }
  
  @override
  void initState() {
    super.initState();
    widget.subject.quizzes.shuffle(); // random order of our quiz
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel(); // always cancel timer to avoid memory leaks
    super.dispose();
  }

  //Inside the doing proccess of quiz
  @override
  Widget build(BuildContext context) {
    final quiz = widget.subject.quizzes[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(title: Text("${widget.subject.name} Quiz"), backgroundColor:Colors.cyanAccent),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              "Q${_currentQuestionIndex +1 }: ${quiz.question}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Time Left: $_timeLeft s",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            //Show the number of quiz referencecs to the totals.
            Text(
              "Question ${_currentQuestionIndex + 1} / ${widget.subject.quizzes.length}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              "Score: $_score",
              style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 40, 243, 33)),
            ),


            const SizedBox(height: 20),
            ...List.generate(quiz.options.length, (index) {
              Color? cardColor;
              if (_answered) {
                if (index == quiz.correctIndex)
                  cardColor = const Color.fromARGB(255, 77, 228, 82);
                else if (_selectedIndex == index)
                  cardColor = const Color.fromARGB(255, 225, 7, 7);
              }
              return Card(
                color: cardColor,
                child: ListTile(
                  title: Text(quiz.options[index]),
                  onTap: _answered ? null : () => _answerQuestion(index),
                ),
              );
            }),


            const SizedBox(height: 20),
            if (_answered)
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(
                  _currentQuestionIndex + 1 >= widget.subject.quizzes.length
                      ? "Finish Quiz"
                      : "Next Question",
                ),
              ),
          ],
        ),
      ),
    );
  }
}
