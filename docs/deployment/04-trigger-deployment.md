# 4. Trigger Deployment

Your CI/CD pipeline is now ready!

### How to Deploy

Since we configured the triggers to run on **Push to main**, every time you push code to the `main` branch, Cloud Build will automatically:
1.  Detect changes.
2.  Read the relevant `cloudbuild.yaml`.
3.  Build the Docker image.
4.  Push it to Artifact Registry.
5.  Update your Cloud Run service.

### Check Build Status

1.  Go to **Cloud Build > History** in the Google Cloud Console.
2.  You will see your builds running (Blue = Running, Green = Success, Red = Failed).
3.  Click on a build ID to see the logs and details.

**Congratulations!** You have successfully set up automated deployments. 🚀

### Next Steps

Now that you have configured your deployment pipeline, you can proceed to the bonus section to build an AI Agent.

[**Go to Bonus: Build an AI Agent**](../02-getting-started.md#5-bonus-build-an-ai-agent-)
