# 🚀 Getting Started

### 1. Explore the IDE
Take a moment to explore the Antigravity interface. You have a powerful AI agent at your disposal. You can ask it to:
-   "Explain this file"
-   "Create a Python script to say hello"
-   "Deploy this to Cloud Run"

### 2. Provision Infrastructure
We have provided Terraform code in the `terraform/` directory to set up your environment.

**What will be created:**
-   **Artifact Registry Repository**: To store your container images.
-   **Cloud Storage Bucket**: To store application assets.
-   **Cloud Run Service**: To host your application.

**Steps to Provision:**
1.  Open the `terraform/` directory.
2.  Initialize Terraform:
    ```bash
    cd terraform
    terraform init
    ```
3.  Plan the deployment (replace `YOUR_PROJECT_ID` with your actual project ID):
    ```bash
    terraform plan -var="project_id=YOUR_PROJECT_ID"
    ```
4.  Apply the changes:
    ```bash
    terraform apply -var="project_id=YOUR_PROJECT_ID"
    ```
    Type `yes` when prompted.

**Note the Outputs:**
After a successful apply, Terraform will show you the `artifact_registry_url`, `cloud_run_url`, and `bucket_name`. Keep these handy!

### 3. Develop Your Application
Now, let's build something! You can ask Antigravity to create a simple web app for you.

#### 💡 Sample Prompts

**1. Generate Code from an Idea:**
> "I want to build a **[YOUR IDEA HERE, e.g., task management app]**. Create a **FastAPI** backend with a simple REST API and a **Next.js** frontend using **Tailwind CSS**. The app should allow users to **[CORE FEATURE, e.g., add and delete tasks]** and store data in **Firestore**."

**2. Design from a Screenshot:**
*To use this feature, take a screenshot of a design you like and paste it into the chat.*
> "I am attaching a screenshot of a design I like. Please create a similar UI for my application using **Next.js and Tailwind CSS**. Make sure to include the **[SPECIFIC ELEMENT, e.g., navigation bar and card layout]** shown in the image."

**3. Simple Starter:**
> "Create a simple **FastAPI** app in the `backend/` directory that displays a 'Hello from Workshop!' message. Also create a Dockerfile for it."

### 4. Build and Deploy

We will use **Cloud Build** for automated CI/CD.

👉 **[Follow the Deployment Guide](./deployment/01-cloudbuild-config.md)** to set up your configuration and triggers.

### 5. Bonus: Build an AI Agent 🤖
Take your application to the next level by adding an AI Agent using the **Agent Development Kit (ADK)**.

**What is an Agent?**
An agent is a software component that can reason, take actions, and use tools to solve complex tasks.

**Try this Prompt:**
> "I want to add an AI agent to my backend using the `google-adk`. The agent should be able to **[AGENT GOAL, e.g., summarize text or fetch weather data]**. Create a new endpoint `/agent` that invokes this agent."

### 6. Explore Agent Capabilities 🧠

The `.agent` folder contains configuration files that help Antigravity understand your project and workflows. We have included some examples for you to try:

-   **Rules (`.agent/rules`):**
    -   `workshop-rules.md`: Defines coding standards (Next.js, FastAPI) and constraints for the workshop. Antigravity will follow these automatically!

-   **Workflows (`.agent/workflows`):**
    -   `deploy.md`: A guided workflow to deploy your application.
    -   **Try it:** Open the command palette (Cmd+Shift+P) and search for "Run Workflow", then select "Deploy to Cloud Run".

-   **Skills (`.agent/skills`):**
    -   `explain-code`: A skill to help you understand complex code.
    -   `commenter`: Adds docstrings and comments to your code.
    -   `tester`: Generates unit tests for your functions.
    -   `refactor`: Suggests code improvements and optimizations.
    -   **Try it:** Select some code and ask "Refactor this" or "Add comments".

---

[Next Step: Clean Up](./03-clean-up.md)
