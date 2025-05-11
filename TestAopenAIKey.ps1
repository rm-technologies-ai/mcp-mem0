$apiKey = "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"  # Replace with your new key
$headers = @{ "Authorization" = "Bearer $apiKey" }
$response = Invoke-RestMethod -Uri "https://api.openai.com/v1/models" -Headers $headers -Method Get
$response.data | Select-Object id
