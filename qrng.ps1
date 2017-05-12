Invoke-WebRequest -UseBasicParsing "https://qrng.anu.edu.au/API/jsonI.php?length=1&type=hex16&size=32" -Method GET |

ConvertFrom-Json |

Select data |

Out-File -FilePath C:\Users\marswh\Desktop\qrng.txt -Append