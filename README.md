# Medical Treatment Recommendation and Optimization System

## Overview

This project is part of the *Artificial Intelligence Techniques* course and consists of two main components:

1. **Project 1: Medical Diagnosis and Treatment Recommendation**
   - A Prolog-based system that interacts with users to diagnose medical conditions and suggest treatments based on their symptoms and profile.
   - Real-world data was collected through a Google Forms survey to generate rules using RapidMiner, enhancing the system’s diagnostic accuracy.

2. **Project 2: Therapeutic Path Optimization**
   - This system uses algorithms such as Hill Climbing and Depth-First Search to optimize clinical treatment paths, minimizing costs and treatment duration.

## Features

### Project 1A: Diagnosis and Recommendation
- Interactive system to diagnose diseases and recommend treatments based on symptoms.
- Personalized recommendations including pharmaceutical and non-pharmaceutical treatments.

### Project 1B: Data-Driven Rule Learning
- Data collected through Google Forms was processed in RapidMiner to generate decision trees.
- The decision rules were implemented in Prolog to refine the system's diagnostic accuracy.

### Project 2: Therapeutic Optimization
- Algorithms for optimizing the transition between medical conditions.
- User-selected criteria for finding the shortest, cheapest, or most advantageous treatment paths.

## Project Files

- **`basedados.pl`**: Medical database with diseases, symptoms, and treatments.
- **`basedeconhecimento.pl`**: Knowledge base for disease diagnosis and treatment recommendation.
- **`doencas_ifthen.pl`**: Automatically generated decision rules from the survey data.
- **`hillclimbing.pl`**: Implements optimization algorithms for treatment paths.
- **`interface.pl`**: Manages user interactions.


