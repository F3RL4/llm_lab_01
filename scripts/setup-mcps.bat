@echo off
echo ========================================
echo Installing MCP Servers for LLM Lab 01
echo ========================================
echo.

REM Add Node.js to PATH if not already set
if not defined Path (
    echo ERROR: PATH not defined
    exit /b 1
)

echo Checking Node.js...
node --version
npm --version
echo.

echo Installing MCP packages globally...
echo.

REM Install Context7 MCP (RAG/Context search)
echo [1/4] Installing @upstash/context7-mcp...
npx -y @upstash/context7-mcp@latest --api-key ctx7sk-27b7a1c3-0e8b-4cfa-986c-e7bd900ff720
if errorlevel 1 (
    echo WARNING: Context7 MCP installation failed
) else (
    echo SUCCESS: Context7 MCP installed
)
echo.

REM Install shadcn MCP (UI components)
echo [2/4] Installing shadcn-mcp...
npx -y shadcn-mcp@latest
if errorlevel 1 (
    echo WARNING: shadcn MCP installation failed
) else (
    echo SUCCESS: shadcn MCP installed
)
echo.

REM Install Aceternity UI MCP
echo [3/4] Installing aceternityui-mcp...
npx -y aceternityui-mcp@latest
if errorlevel 1 (
    echo WARNING: Aceternity MCP installation failed
) else (
    echo SUCCESS: Aceternity MCP installed
)
echo.

REM Install Playwright MCP (Web automation)
echo [4/4] Installing @playwright/mcp...
npx -y @playwright/mcp@latest --vision
if errorlevel 1 (
    echo WARNING: Playwright MCP installation failed
) else (
    echo SUCCESS: Playwright MCP installed
)
echo.

echo ========================================
echo MCP Installation Complete!
echo ========================================
echo.
echo To verify the setup, run:
echo   npx @playwright/mcp --version
echo.
echo Next steps:
echo 1. Commit these changes to git
echo 2. Push to GitHub
echo 3. The MCPs will be available for Claude Code
echo ========================================
