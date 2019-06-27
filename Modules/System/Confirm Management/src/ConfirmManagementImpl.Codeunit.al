﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

codeunit 26 "Confirm Management Impl."
{
    Access = Internal;
    SingleInstance = true;

    [Scope('OnPrem')]
    procedure GetResponseOrDefault(ConfirmQuestion: Text; DefaultButton: Boolean): Boolean
    begin
        if not IsGuiAllowed() then
            exit(DefaultButton);
        exit(Confirm(ConfirmQuestion, DefaultButton));
    end;

    [Scope('OnPrem')]
    procedure GetResponse(ConfirmQuestion: Text; DefaultButton: Boolean): Boolean
    begin
        if not IsGuiAllowed() then
            exit(false);
        exit(Confirm(ConfirmQuestion, DefaultButton));
    end;

    local procedure IsGuiAllowed() GuiIsAllowed: Boolean
    var
        ConfirmManagement: Codeunit "Confirm Management";
        Handled: Boolean;
    begin
        ConfirmManagement.OnBeforeGuiAllowed(GuiIsAllowed, Handled);
        if Handled then
            exit;
        exit(GuiAllowed());
    end;
}
