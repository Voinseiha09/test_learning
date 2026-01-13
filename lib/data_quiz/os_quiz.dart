import '../models/quiz.dart';
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
    question: "Which of the following is an example of an operating system?",
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
    question: "Which scheduling algorithm gives equal time to all processes?",
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
