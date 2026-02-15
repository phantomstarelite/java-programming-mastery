# 📘 Lesson 2: JDK vs JRE vs JVM (Core Java Foundation)

This is one of the most important topics in Java.

If you understand the difference between JDK, JRE, and JVM clearly, you understand how Java actually works.

---

# 🧠 Big Picture First

When you write and run a Java program, three components are involved:

```
JDK → Used to Develop
JRE → Used to Run
JVM → Executes Bytecode
```

Now we break them deeply.

---

# 1️⃣ JVM (Java Virtual Machine)

We already discussed JVM, but now define it precisely.

## 🔹 What is JVM?

> JVM is a virtual runtime engine that executes Java bytecode.

It:

* Loads classes
* Verifies bytecode
* Allocates memory
* Executes instructions
* Performs garbage collection

Important:

✔ JVM does NOT compile Java source code
✔ JVM runs `.class` files
✔ JVM is platform dependent

Each OS has its own JVM implementation.

---

# 2️⃣ JRE (Java Runtime Environment)

## 🔹 What is JRE?

> JRE is a package that contains JVM + Java standard libraries required to run Java applications.

Structure:

```
JRE
 ├── JVM
 └── Core Libraries (java.lang, java.util, etc.)
```

JRE does NOT include:

* Compiler (javac)
* Debugging tools
* Development utilities

If you only want to run a Java program (not develop), JRE is enough.

---

# 3️⃣ JDK (Java Development Kit)

## 🔹 What is JDK?

> JDK is a complete development kit that includes JRE + development tools.

Structure:

```
JDK
 ├── JRE
 │    ├── JVM
 │    └── Libraries
 ├── javac (compiler)
 ├── javadoc
 ├── debugger
 └── other tools
```

JDK is required when:

* Writing Java code
* Compiling code
* Debugging programs

---

# 🧠 Clear Relationship Diagram

```
JDK
 └── JRE
      └── JVM
```

Remember this hierarchy forever.

---

# 🔍 What Happens When You Compile and Run?

When you type:

```
javac HelloWorld.java
```

Who is used?

👉 `javac` from JDK

When you type:

```
java HelloWorld
```

Who is used?

👉 JVM (inside JRE)

---

# 🔥 Deep Concept Understanding

Think like this:

* JVM = Engine
* JRE = Environment to run
* JDK = Environment to develop

---

# 🧠 Interview-Level Comparison

| Component | Contains         | Purpose          |
| --------- | ---------------- | ---------------- |
| JVM       | Execution engine | Runs bytecode    |
| JRE       | JVM + libraries  | Runs programs    |
| JDK       | JRE + tools      | Develop programs |

---

# ⚠️ Important Modern Update

In modern Java versions (Java 11+):

* JRE is no longer separately distributed.
* JDK includes everything.

But conceptually:
JRE still exists inside JDK.

---

# 🧠 Your Understanding Test

Answer carefully:

If I install only JRE, can I compile Java programs?

If I install only JDK, can I run Java programs?

Explain why.

---
