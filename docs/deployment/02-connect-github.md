# 2. Connect GitHub Repository

Now that we have the configuration files, we need to connect your GitHub repository to Cloud Build.

### Steps

1.  Go to the Google Cloud Console.
2.  Search for **Cloud Build** and select it.
3.  In the left menu, click on **Triggers**.
4.  Click **Connect Repository** (or "Manage Repository" if it's already connected).
5.  Select **GitHub (Cloud Build GitHub App)**.
6.  Follow the authorization flow:
    -   Log in to GitHub.
    -   Select your repository.
    -   Agree to the terms.

> **Note:** You may be prompted to enable the **Cloud Build API** and **Secret Manager API** during this process. Please enable them if asked.

---

[Next: Create Triggers](./03-create-triggers.md)
