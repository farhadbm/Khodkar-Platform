﻿
namespace KS.Core.UI.Setting.Adapters
{
    public interface IDefaultSettingsAdapter
    {
        string Language { get; }

        bool IsDebugMode { get; }

        bool IsMobileMode { get; }


        string ClientSelectedLanguage { get; }

        string Culture { get; }

        string Country { get; }

        bool RightToLeft { get; }
    }
}
