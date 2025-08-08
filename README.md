# MQL5 Robot Testing Tool for macOS + Wine

An AI-assisted MQL5 compilation and testing script designed for MetaTrader 5 Expert Advisors (robots) running on macOS with Wine. Perfect for use with AI coding assistants like Claude Code, Gemini Code, Qwen, and other CLI-based AI tools.

## Overview

This tool enables seamless testing and debugging of MQL5 Expert Advisors on macOS by providing a simple compilation script that works with Wine-based MetaTrader 5 installations. The output logs are designed to be easily readable by AI coding assistants, allowing them to quickly identify and fix compiler errors in your trading robots.

## Prerequisites

- macOS with Wine installed
- MetaTrader 5 installed and configured in Wine
- AI coding assistant (Claude Code, Gemini Code, Qwen, etc.)
- Basic MQL5 Expert Advisor files to test

## Quick Start

1. **Ensure MetaTrader 5 is installed via Wine**
2. **Make the script executable**:
   ```bash
   chmod +x compile_mql5.sh
   ```
3. **Test your MQL5 robot**:
   ```bash
   ./compile_mql5.sh Experts/YourRobot.mq5
   ```

## AI-Assisted Testing Workflow

This tool is specifically designed to work with AI coding assistants for rapid MQL5 robot development and debugging.

### Basic Testing
```bash
./compile_mql5.sh Experts/MyTradingRobot.mq5
```

### AI Integration Examples

**With Claude Code:**
```bash
# Ask Claude to test your robot
claude "Please test this MQL5 robot using ./compile_mql5.sh Experts/ScalpingBot.mq5"
```

**With Gemini Code:**
```bash
# Ask Gemini to analyze compilation results
gemini "Run ./compile_mql5.sh Experts/TrendFollower.mq5 and fix any compiler errors"
```

**With Qwen or other AI CLI tools:**
```bash
# General AI assistant usage
qwen "Test my MQL5 robot and debug: ./compile_mql5.sh Experts/GridTrader.mq5"
```

### AI-Readable Output

The script provides clear, structured output that AI assistants can easily parse:

- **Visual Status**: Emoji indicators (⌛ 🍷 ✅ ⚠️) for quick status recognition
- **Detailed Logs**: Comprehensive compilation logs for error analysis
- **Structured Output**: Consistent format for AI parsing and debugging

### Script Features

- **Wine Integration**: Seamless compilation through Wine/MetaTrader 5
- **Path Handling**: Automatic Unix-to-Windows path conversion
- **Error Logging**: Detailed compilation logs saved for AI analysis
- **Status Feedback**: Clear success/failure indicators
- **AI-Friendly**: Output designed for AI coding assistant consumption

## Project Structure

```
├── compile_mql5.sh          # AI-friendly MQL5 testing script
├── .github/
│   └── copilot-instructions.md  # AI coding agent guidelines
└── README.md                # This file

# Your MQL5 robots should be organized as:
# Experts/         # Expert Advisors/Trading Robots (.mq5)
```

## AI-Assisted Development Workflow

1. **Create/Modify Robot**: Write or update your MQL5 Expert Advisor
2. **Test with AI**: Ask your AI assistant to run the compilation script
3. **Review Output**: AI analyzes compilation logs and identifies issues
4. **Fix Errors**: AI suggests fixes based on compiler output
5. **Iterate**: Repeat until successful compilation
6. **Deploy**: Load compiled `.ex5` file in MetaTrader 5

### Example AI Workflow

```bash
# Step 1: AI tests your robot
AI: "I'll test your robot: ./compile_mql5.sh Experts/ScalpingBot.mq5"

# Step 2: AI reads the output log and identifies errors
AI: "I found 3 compilation errors in the log. Let me fix them..."

# Step 3: AI makes corrections and retests
AI: "Fixed the errors. Testing again: ./compile_mql5.sh Experts/ScalpingBot.mq5"

# Step 4: Success!
AI: "✅ Compilation successful! Your robot is ready for testing."
```

## Reading Compilation Logs

AI assistants can easily read and analyze the compilation output:

```bash
# View the latest compilation log
cat "/Users/besi/Library/Application Support/net.metaquotes.wine.metatrader5/drive_c/MT5/MQL5/winepath_compilation.log"
```

### Log Analysis for AI

The compilation log contains:
- **Error Messages**: Specific line numbers and error descriptions
- **Warning Details**: Code optimization suggestions
- **Success Confirmations**: Successful compilation status
- **File Paths**: Exact locations of issues in your code

AI assistants can parse this information to:
- Identify syntax errors
- Suggest code fixes
- Recommend optimizations
- Verify successful compilation

## Troubleshooting with AI

### Common Issues AI Can Fix

1. **Syntax Errors**: AI reads compiler output and suggests corrections
2. **Missing Includes**: AI identifies missing header files
3. **Function Declarations**: AI fixes function signature mismatches
4. **Variable Issues**: AI resolves undeclared or type mismatch errors

### AI Commands for Debugging

```bash
# Ask AI to analyze and fix compilation errors
claude "Read the compilation log and fix the MQL5 errors"
gemini "Debug this MQL5 robot compilation issue"
qwen "Fix the compiler errors in my trading robot"
```

### Manual Troubleshooting

If AI assistance isn't available:

1. **Check Script Permissions**:
   ```bash
   chmod +x compile_mql5.sh
   ```

2. **Verify File Path**: Use relative paths from MQL5 root
   ```bash
   # Correct
   ./compile_mql5.sh Experts/MyRobot.mq5
   
   # Incorrect
   ./compile_mql5.sh /full/path/to/MyRobot.mq5
   ```

3. **Check Wine Installation**: Ensure MetaTrader 5 is properly installed

## Supported AI Coding Assistants

This tool works with various AI CLI interfaces:

- **Claude Code**: Advanced MQL5 debugging and optimization
- **Gemini Code**: Quick error identification and fixes
- **Qwen**: Comprehensive code analysis and suggestions
- **GitHub Copilot CLI**: Integrated development assistance
- **OpenAI Codex**: Code completion and error resolution
- **Any AI with CLI access**: Can parse output and suggest fixes

## Contributing

Help improve AI-assisted MQL5 development:

1. Fork the repository
2. Enhance AI compatibility features
3. Add better error parsing for AI consumption
4. Submit Pull Request with improvements

## MQL5 Trading Robot Resources

- [MQL5 Documentation](https://www.mql5.com/en/docs)
- [Expert Advisor Programming](https://www.mql5.com/en/articles/experts)
- [MQL5 Community](https://www.mql5.com/en/forum)
- [Free Trading Robots](https://www.mql5.com/en/code/ea)

## License

MIT License - Use freely for AI-assisted MQL5 robot development.

## ⚠️ Trading Risk Warning

**This tool is for development and testing only**. Always thoroughly test your Expert Advisors in demo accounts before risking real money. Automated trading involves substantial risk of loss.

---

**Perfect for**: AI-assisted MQL5 development, rapid prototyping of trading robots, automated debugging workflows with AI coding assistants.
