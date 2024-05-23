//+------------------------------------------------------------------+
//|                                                  DeployEAs.mq4   |
//|                        Script to deploy multiple EAs at startup  |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, Vladimir Zhbanko"
#property link      "https://vladdsm.github.io/myblog_attempt/"
#property version   "1.00"
#property strict

/* 
Instructions:
1. First launch robots on charts, save robot pre-set files to the folder MQL4/Presets
2. Save templates of each chart to MQL4/Files
3. Update this script with desired settings (arrays templates[], symbols[], timeframes[]
4. Update *.ini file to include this script Script=DeployRobots
5. Robots should start at platform start

DeployRobots: 
# v 1.00
Initial Version
*/

// Define the list of templates and their corresponding symbols and timeframes
string templates[] = {"FalconDGBPUSD.tpl", 
                      "FalconDEURUSD.tpl",
                      "WatchDogEURUSD.tpl"}; // Replace with your template names
string symbols[]   = {"GBPUSD",
                      "EURUSD",
                      "EURUSD"}; // Replace with your desired symbols
int timeframes[]   = {PERIOD_H1,
                      PERIOD_H1,
                      PERIOD_M1}; // Replace with your desired timeframes


// Function to open a chart and apply a template
void OpenChartWithTemplate(string symbol, int timeframe, string templateName)
{
    long chartID = ChartOpen(symbol, timeframe);
    if (chartID < 0)
    {
        Print("Failed to open chart for symbol: ", symbol);
        return;
    }

    // Path to the template file in \MQL4\Files
    string templateFilePath = "\\Files\\" + templateName;
    Print("Attempting to apply template from path: ", templateFilePath);

    // Check if template file exists
    if (FileIsExist(templateName))
    {
        Print("The file ", templateFilePath, " found in Files.");
        if (ChartApplyTemplate(chartID,"\\Files\\" + templateName))
        {
            Print("The template '", templateName, "' applied successfully.");
        }
        else
        {
            Print("Failed to apply '", templateName, "', error code ", GetLastError());
            ChartClose(chartID);
        }
    }
    else
    {
        Print("File '", templateFilePath, "' not found in ", TerminalInfoString(TERMINAL_PATH), "\\MQL4\\Files.");
        ChartClose(chartID);
    }
}

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
    int totalTemplates = ArraySize(templates);
    for (int i = 0; i < totalTemplates; i++)
    {
        OpenChartWithTemplate(symbols[i], timeframes[i], templates[i]);
    }
}
//+------------------------------------------------------------------+
