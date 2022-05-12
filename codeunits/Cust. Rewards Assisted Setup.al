codeunit 50102 "Cust. Rewards Assisted Setup"
{
    trigger OnRun()
    begin

    end;


    //[EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', false, false)]
    // local procedure AddRegisterSetupWizard()
    // var
    //     GuidedExperience: Codeunit "Guided Experience";
    //     Language: Codeunit Language;
    //     CurrentGlobalLanguage: Integer;
    //     AssistedSetupGroup: Enum "Assisted Setup Group";
    //     VideoUrlSetupTxt: Label 'https://www.youtube.com/embed/hRLjl2u4I0w', Locked = true;
    //     HelpSetupTxt: Label 'https://plur-e.com/', Locked = true;
    //     VideoCategory: Enum "Video Category";
    //     GuidedExperienceType: Enum "Guided Experience Type";
    // begin
    //     CurrentGlobalLanguage := GlobalLanguage;

    //     GuidedExperience.InsertAssistedSetup('Setup Plur-E ', 'Setup Plur-E ', 'Plur-E ', 0, ObjectType::Page, PAGE::"PLU Wizard",
    //           AssistedSetupGroup::GettingStarted, VideoUrlSetupTxt, VideoCategory::GettingStarted, HelpSetupTxt);
    //     GLOBALLANGUAGE(Language.GetDefaultApplicationLanguageId());

    //     GuidedExperience.AddTranslationForSetupObjectTitle(GuidedExperienceType::"Assisted Setup", ObjectType::Page,
    //        PAGE::"PLU Wizard", Language.GetDefaultApplicationLanguageId(), 'Setup Plur-E ');

    //     GLOBALLANGUAGE(CurrentGlobalLanguage);
    // end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure AddRegisterSetupWizard();
    var
        //AssistedSetup: Codeunit "Assisted Setup";
        GuidedExperience: Codeunit "Guided Experience";
        CurrentGlobalLanguage: Integer;
        myAppInfo: ModuleInfo;
        WizardTxt: Label 'Customer Rewards assisted setup guide';
        VideoUrlSetupTxt: Label 'https://www.youtube.com/embed/hRLjl2u4I0w', Locked = true;
        HelpSetupTxt: Label 'https://plur-e.com/', Locked = true;
        VideoCategory: Enum "Video Category";
        Language: Codeunit Language;
    begin
        NavApp.GetCurrentModuleInfo(myAppInfo);
        CurrentGlobalLanguage := GlobalLanguage();
        // AssistedSetup.Add(myAppInfo.Id, Page::"Customer Rewards Wizard", WizardTxt, "Assisted Setup Group"::Extensions);
        // GLOBALLANGUAGE(1033);
        //AssistedSetup.AddTranslation(myAppInfo.Id, Page::"Customer Rewards Wizard", 1033, WizardTxt);

        GuidedExperience.InsertAssistedSetup('Customer Rewards Wizard', 'Customer Rewards Wizard ', 'Ivan Labrador', 0, ObjectType::Page, PAGE::"Customer Rewards Wizard",
              "Assisted Setup Group"::GettingStarted, VideoUrlSetupTxt, VideoCategory::GettingStarted, HelpSetupTxt);
        GLOBALLANGUAGE(Language.GetDefaultApplicationLanguageId());
    end;
}