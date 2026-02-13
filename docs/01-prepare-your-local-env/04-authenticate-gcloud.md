# 4️⃣ Authenticate with gcloud

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

[Next: Install Terraform](./05-install-terraform.md)
