FROM mcr.microsoft.com/azure-cli
RUN wget  https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/powershell-7.2.6-linux-alpine-x64.tar.gz
RUN tar xzvf powershell-7.2.6-linux-alpine-x64.tar.gz
RUN git clone https://github.com/microsoft/ARI.git
SHELL ["./pwsh", "-Command"]
RUN Install-Module -Name ImportExcel -Force
CMD ["./pwsh", "-File", "./ARI/AzureResourceInventory.ps1"]

