# 1. 别名定义（你的 VS Code 路径）
function code { & "D:\0-program\vscode\bin\code.cmd" $args }
$env:EDITOR = "D:\0-program\vscode\bin\code.cmd"

# 2. 每次启动自动加载OMP
oh-my-posh init pwsh --config "$HOME\mytheme.omp.json" | Invoke-Expression

# 3. 增强功能（预测和补全）
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# 4. 自定义缩写
# Set-Alias -Name kmc -Value komorebic

# 5. ComfyUI 全局快速启动
function comfy {
    $comfyDir = "D:\0-program\ComfyUI_windows_portable"
    if (Test-Path $comfyDir) {
        Write-Host "正在启动 ComfyUI..." -ForegroundColor Green
        Start-Process -FilePath "$comfyDir\run_nvidia_gpu.bat" -WorkingDirectory $comfyDir
    } else {
        Write-Warning "未找到 ComfyUI 目录: $comfyDir"
    }
}
