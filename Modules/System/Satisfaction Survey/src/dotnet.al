﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

dotnet
{
    assembly("mscorlib")
    {
        type("System.Globalization.CultureInfo";"CultureInfo")
        {
        }
    }

    assembly("Microsoft.Dynamics.Nav.Client.WebPageViewer")
    {
        type("Microsoft.Dynamics.Nav.Client.WebPageViewer.IWebPageViewer";"Microsoft.Dynamics.Nav.Client.WebPageViewer")
        {
            IsControlAddIn = true;
        }
    }

}