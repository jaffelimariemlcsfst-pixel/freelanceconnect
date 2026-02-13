# 5️⃣ Install Terraform

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

[Next: Install Google Antigravity](./06-install-antigravity.md)
