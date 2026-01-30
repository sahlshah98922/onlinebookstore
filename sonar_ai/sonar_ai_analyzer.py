import json
import os
from google import genai
# import google.generativeai as genai


# Init Gemini client
client = genai.Client(api_key="AIzaSyCBAfJkl3unDwTRy4Mo8BWVH7NdEmBb6wo")

# Load Sonar report
with open("sonar_report.json", "r") as f:
    data = json.load(f)

issues = data.get("issues", [])
print(f"Total issues found: {len(issues)}")

for i, issue in enumerate(issues, start=1):
    prompt = f"""
You are a software security expert.

SonarQube Issue:
Rule: {issue.get('rule')}
Severity: {issue.get('severity')}
File: {issue.get('component')}
Line: {issue.get('line')}
Message: {issue.get('message')}

Explain strictly in this format:
Reason:
Why this severity:
Fix:
"""

    print(f"\nIssue {i} → Sending to Gemini...\n")

    response = client.models.generate_content(
        model="models/gemini-flash-latest",
        contents=prompt
    )

    print(response.text)
    print("=" * 50)
