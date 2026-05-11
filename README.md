# 🥗 NutriWise — Contextual Smart Food Advisor

> **A data-driven nutrition assistant that helps individuals make smarter food choices based on real-time context, behaviour patterns, and personal health goals.**

🌐 **Live Demo:** [nutriwise-792866830632.asia-south1.run.app](https://nutriwise-792866830632.asia-south1.run.app/)
☁️ **Deployed on:** Google Cloud Run · `asia-south1`

---

## 📌 Problem Statement

Most people make poor food choices not because they lack knowledge — but because they lack **context-aware guidance** at the right moment. Generic diet apps give the same advice to everyone regardless of time of day, activity level, or personal goals. NutriWise solves this by adapting every recommendation to the user's current situation.

---

## 💡 Solution

NutriWise is a **contextual food intelligence web app** that:

- Analyses any meal and scores it on nutrition quality (0–100)
- Adapts recommendations based on **time of day**, **activity level**, and **health goal**
- Suggests smart, practical **food swaps** tailored to the user's context
- Tracks **eating habits** and **weekly streaks** to reinforce long-term behaviour change
- Provides a full **daily nutrition summary** with macros, calorie ring, and meal history

---

## ✨ Features

### 🍽️ Meal Analyser
- Type any meal and get an instant nutrition score
- Estimated calories, carbs, protein, fat, and fiber breakdown
- Context-aware insights explaining *why* a food is good or bad *for you right now*

### 🔄 Smart Swaps
- 2 actionable food substitutions per meal
- Ranked by impact — specific, not generic ("swap butter → curd saves 120 kcal + adds protein")

### 📊 Today's Summary
- Visual calorie ring showing consumed vs. remaining
- Full macro progress bars
- Chronological meal log with per-meal scores

### 🏆 Habit Tracker
- Weekly streak calendar
- Personalised habit goals (fiber target, protein per meal, sugar limits, hydration)
- Progress indicators with specific corrective suggestions

### ⚙️ Context Engine
- **Time of Day** — Morning / Afternoon / Evening adjusts energy and sugar guidance
- **Activity Level** — Sedentary / Lightly active / Very active changes calorie thresholds
- **Health Goal** — Weight loss / Muscle gain / Maintenance shifts macro priorities

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML5, CSS3, Vanilla JavaScript |
| Web Server | Nginx (Alpine) |
| Containerisation | Docker |
| Cloud Platform | Google Cloud Run |
| CI/CD | Manual deploy via `gcloud` CLI |
| Region | `asia-south1` (Mumbai) |

---

## 🚀 Deployment Guide

### Prerequisites
- Google Cloud account with a project created
- `gcloud` CLI installed or use Cloud Shell

### Clone & Deploy

```bash
# Clone the repository
git clone https://github.com/vedanshdixitt/h2s.git
cd h2s

# Enable required GCP APIs
gcloud services enable run.googleapis.com cloudbuild.googleapis.com

# Deploy to Cloud Run
gcloud run deploy nutriwise \
  --source . \
  --platform managed \
  --region asia-south1 \
  --allow-unauthenticated \
  --port 8080
```

### Repository Structure

```
h2s/
├── nutriwise_smart_food_advisor.html   # Main application
├── Dockerfile                          # Container config
├── nginx.conf                          # Web server config
└── README.md                           # This file
```

---

## 📸 App Walkthrough

### Log Meal Tab
Enter any meal (e.g. "Dal chawal with salad") or tap a quick-add chip → get an instant score, macro breakdown, and contextual insights within seconds.

### Today's Summary Tab
Visual calorie ring + full macro progress bars + chronological meal log with per-meal nutrition scores.

### Habit Tracker Tab
Weekly streak dots + 4 active habit goals with specific, actionable progress feedback.

---

## 🧠 How the Context Engine Works

```
User Input (meal name)
        +
Context Signals:
  ├── Time of Day    → adjusts energy/sugar guidance
  ├── Activity Level → changes calorie thresholds  
  └── Health Goal    → shifts macro priorities
        ↓
Nutrition Score (0–100)
        +
Contextual Insights (3 per meal)
        +
Smart Swaps (2 per meal)
```

---

## 🎯 Use Cases

- **Weight loss** — scores meals low in fibre/protein, flags excess sugar and refined carbs
- **Muscle gain** — prioritises protein-dense meals, flags insufficient post-workout nutrition
- **Maintenance** — balanced approach, highlights micronutrient gaps and portion concerns

---

## 🌱 Future Roadmap

- [ ] Barcode scanner for packaged food analysis
- [ ] Backend API with persistent meal history (Firebase / Supabase)
- [ ] Wearable integration (step count → dynamic calorie target)
- [ ] Multilingual support for regional Indian cuisine database
- [ ] PWA / mobile app version

---

## 👨‍💻 Author

**Vedansh Dixit**
B.Tech Computer Science & Engineering — VIT Bhopal University (2023–2027)

[![GitHub](https://img.shields.io/badge/GitHub-vedanshdixitt-181717?style=flat&logo=github)](https://github.com/vedanshdixitt)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

<div align="center">
  Built with ❤️ for a healthier India · Deployed on Google Cloud
</div>
