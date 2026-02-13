# Academy Workshop: Building with Google Antigravity

Welcome to the Academy Workshop! In this session, you will use **Google Antigravity**, an agentic IDE, to develop and deploy a cloud-native application on Google Cloud.

## 🎯 Workshop Goals
1.  **Experience Agentic Development**: Use Antigravity to generate code, infrastructure, and documentation.
2.  **Provision Cloud Infrastructure**: Use Terraform to set up Artifact Registry, Cloud Storage, and Cloud Run.
3.  **Deploy a Web Application**: Build and deploy a simple web application to the cloud.

## 🛠️ Prerequisites
-   Access to **Google Antigravity**.
-   A **Google Cloud Project** with billing enabled.
-   **Google Cloud SDK** (gcloud) installed and authenticated.
-   **Terraform** installed (optional, Antigravity can help you run it).

# 💻 Prepare Your Local Environment (Windows First)

> ⚠️ Please complete this setup **before** the workshop starts.  
> If your environment is not ready, you may lose up to 45 minutes troubleshooting during the session.

We recommend:
- **Windows 11**
- **PowerShell**

---

## 1️⃣ Install Node.js (Includes npm)

Node.js is required for running the Next.js frontend.

### Steps

1. Go to: https://nodejs.org  
2. Download the **LTS version**
3. Run the installer (keep default settings)
4. Open **PowerShell** and verify:

```bash
node -v
npm -v
```

✅ If both commands return a version number, you’re good.


---

## 2️⃣ Install Python

Python is required for the FastAPI backend.

### Steps

1. Go to: https://www.python.org

2. Download the latest stable version

3. ⚠️ ⚠️ ⚠️ IMPORTANT: Check “Add Python to PATH”

4. Install

Verify:

```bash
python --version
pip --version
```
✅ If version numbers appear, you're good.


---

## 3️⃣ Install Google Cloud CLI (gcloud)
We will use gcloud to deploy to Google Cloud.

### Steps

1. Download from:
https://cloud.google.com/sdk/docs/install

2. Run the installer

3. Restart PowerShell

4. Verify installation:
```bash
gcloud --version
```
✅ If it shows version information, installation is successful.


---

## 4️⃣ Authenticate with gcloud

We will use `gcloud` to deploy to Google Cloud.

### Steps

1. Login and configure your project:

```bash
gcloud init
```

2. Follow the prompts
- Log in with your Google account
- Select your project
- Choose default region (e.g., `us-central1`)

3. Verify configuration:
```bash
gcloud config list
```
✅ Ensure your project ID is set correctly.


---

## 5️⃣ Install Terraform

Terraform will provision your cloud infrastructure.

- You can follow this Youtube tutorial
https://www.youtube.com/watch?v=pySmwyRhx-A

- or follow next steps 👇

### Steps
1. Download from:
https://developer.hashicorp.com/terraform/downloads
2. Right-click the downloaded ZIP file.
3. Click Extract All.
4. Extract it somewhere permanent, for example:
```bash
C:\terraform
```
After extraction, you should have:
```bash
C:\terraform\terraform.exe
```
⚠️ Important: Do NOT keep it in Downloads. Put it in a permanent folder.

5. Add Terraform Folder to System PATH
- Open Environment Variables:
    - Press Windows Key
    - Search: `Environment Variables`
    - Click: `Edit the system environment variables`
    - Then click: `Environment Variables…`
- Edit the PATH Variable Under System variables:
    - Find: `Path`
    - Click `Edit`
    - Click `New`
    - Add the full path to your Terraform folder example:
    ```bash
        C:\terraform
    ```
    - click OK for all windows
    - close everything
- To apply changes Restart PowerShell
- Verif installation with:
```bash
terraform version
```

---

## 6️⃣ Install Google Antigravity
Antigravity is the agentic IDE used during the workshop.

- You can downlowad the IDE from: https://antigravity.google/download

- Under windows select: `Download for x64`

- install the .exe file downloaded 

## 🚀 Getting Started

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
Once you have your application code:

1.  **Build the Container:**
    ```bash
    gcloud builds submit --tag REGION-docker.pkg.dev/PROJECT_ID/REPO_NAME/IMAGE_NAME:tag .
    ```
    *(Replace with the `artifact_registry_url` from the Terraform output)*

2.  **Deploy to Cloud Run:**
    You can simply update the container image in your Cloud Run service using the console, or ask Antigravity to help you deploy the new image.

    ```bash
    gcloud run deploy workshop-app-service --image REGION-docker.pkg.dev/PROJECT_ID/REPO_NAME/IMAGE_NAME:tag --region us-central1
    ```

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

## 🧹 Clean Up
To avoid incurring charges, remember to destroy the resources when you are done:

```bash
cd terraform
terraform destroy -var="project_id=YOUR_PROJECT_ID"
```

Happy Coding! 🚀
