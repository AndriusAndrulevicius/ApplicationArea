codeunit 50100 Subsribers
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", 'OnSetExperienceTier', '', false, false)]
    local procedure Cod9179_OnSetExperienceTier(var TempApplicationAreaSetup: Record "Application Area Setup"; var ApplicationAreasSet: Boolean; ExperienceTierSetup: Record "Experience Tier Setup")
    begin
        if ExperienceTierSetup.Extv2Experience then begin
            TempApplicationAreaSetup.Basic := true;
            TempApplicationAreaSetup.Ext2Experience := true;
            ApplicationAreasSet := true;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", 'OnGetEssentialExperienceAppAreas', '', false, false)]
    local procedure MyProcedure(var TempApplicationAreaSetup: Record "Application Area Setup")
    begin
        TempApplicationAreaSetup.Ext2Experience := true;
    end;
}