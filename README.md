# iOSCodingChallenge

This repository contains a starter iOS project for a **time-boxed coding interview** using **SwiftUI** and **MVVM**.

The project **builds and runs out of the box**, but it is intentionally incomplete.
During the interview, you will implement the missing functionality by completing
the stubbed files.

---

## ⏱ Timebox

**30 minutes**

You are not expected to finish everything perfectly.
We care more about **architecture, clarity, and decision-making** than polish.

---

## 🎯 Goal

Build a small iOS app that:

- Fetches data from a public API
- Displays a list of items
- Handles loading, empty, and error states
- Displays detail of item when tapped
- Demonstrates clear separation of responsibilities using MVVM

---

## 📡 API

Use **JSONPlaceholder** (no authentication required):

```
GET https://jsonplaceholder.typicode.com/posts
```

Each post contains:
- `userId`
- `id`
- `title`
- `body`

---

## 🧱 Architecture Expectations

This exercise uses **MVVM**.

High-level structure:

```
View (SwiftUI)
  ↓
ViewModel
  ↓
Repository
  ↓
Remote Data Source (API)
```

Guidelines:
- The **View** is responsible for presentation and navigation
- The **ViewModel** owns loading logic and state transitions
- The **Repository** owns data fetching and mapping
- The **Remote Data Source** handles network requests
- Keep networking and mapping logic out of the View

---

## 🚫 About frameworks

You should use:
- Swift concurrency (`async` / `await`)
- Plain dependency injection via initializers

---

## 📂 Where to work

All implementation should happen under:

```
Model/
Data/
Repository/
UI/
```

The necessary files **already exist** and are **stubbed out** so the project builds.

Your task is to **replace the stubbed implementations** to achieve the goals
of the exercise.

---

## 🔧 What you must implement

The following functionality is intentionally missing and must be implemented by you:

### Data & Repository
- Fetch posts from the API
- Decode JSON into data transfer objects
- Map network models into domain models
- Return success or failure appropriately

### ViewModel
- Implement the asynchronous loading logic
- Transition through loading, success, empty, and error states
- Call into the repository and interpret results

### UI
- Render UI based on the current state
- Show loading, empty, and error feedback
- Display a list of posts when data is available

The app will run without these changes, but no real data will appear until you
complete them.

---

## 🖥 UI Expectations

The UI files are intentionally minimal and contain comments written in plain English.

You are expected to:
- Interpret those comments
- Implement appropriate UI behavior
- Drive the UI from ViewModel state

UI polish is **not** the focus — clarity and correctness are.

---

## ⭐ Optional (if time allows)

If you have time after completing the main flow:

- Make list items tappable
- Open a detail screen when an item is selected
- Display the selected item’s title and body


Navigation logic should live in the **view layer**, not the ViewModel.

---

## 🔁 Git Workflow

You will submit your solution using a **branch-based workflow**.

A branch on the origin repo will be created for you named:

```
candidate/<your-name>
```

Example:
```
candidate/jane-doe
```

You need to fork the repo, do the work, and submit a PR

```bash
# fork on GitHub then clone your fork
git clone https://github.com/<candidate-username>/iOSCodingChallenge.git
cd iOSCodingChallenge

# create branch (match upstream name)
git checkout -b candidate/<your-name>

# implement work...
git add .
git commit -m "Interview submission"
git push origin candidate/<your-name>

# Open PR on GitHub:
# Base repository: Shaggy13spe/iOSCodingChallenge
# Base branch: candidate/<your-name>        <-- important
# Compare branch: <candidate-username>/candidate/jane-doe
```

Do **not** merge your branch into `main`.

---

## 👍 Final notes

There is no single correct solution.

We are interested in:
- How you structure code
- How you separate responsibilities
- How you handle async work and state
- How you explain your decisions

If you run out of time, feel free to leave TODOs and explain what you would do next.

Good luck!
