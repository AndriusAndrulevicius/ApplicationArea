codeunit 50101 "Application Area Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        ApplicationAreaSetup: Record "Application Area Setup";
        ExperienceTierSetup: Record "Experience Tier Setup";
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
    begin
        if ExperienceTierSetup.Get(CompanyName()) then;
        if not ExperienceTierSetup.Essential then
            exit;

        if ApplicationAreaMgmtFacade.GetApplicationAreaSetupRecFromCompany(ApplicationAreaSetup, CompanyName()) then begin
            ApplicationAreaSetup.Ext2Experience := true;
            ApplicationAreaSetup.Modify();
            ApplicationAreaMgmtFacade.SetupApplicationArea();
        end;
    end;
}