package com.stepChangeRem.remediation.test.StepDefinition.Online;

import com.stepChangeRem.remediation.pages.helper.online.OnlineDashBoardHelper;
import com.stepChangeRem.remediation.pages.helper.online.OnlineDebtHelper;
import com.stepChangeRem.remediation.pages.helper.online.OnlineIncomeHelper;
import com.stepChangeRem.remediation.pages.helper.vo.IncomeFields;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

import java.util.List;

public class OnlineIncomeStepdefs {
    OnlineIncomeHelper helper=new OnlineIncomeHelper();
    OnlineDebtHelper debtHelper=new OnlineDebtHelper();
    OnlineDashBoardHelper houseHolds=new OnlineDashBoardHelper();
    OnlineDebtHelper  helper1 = new OnlineDebtHelper();
    @And("Navigate to the Online Income page and enter the data as below Assert Total Income as \"([^\"]*)\"$")
    public void navigateToTheOnlineIncomePageAndEnterTheDataAsBelowAssertTotalIncomeAs(String total, DataTable incomeDetails) {
        List<IncomeFields> incomeFields = incomeDetails.asList(IncomeFields.class);
        helper.fillTheIncomeDetails(incomeFields);
    }


    @Then("User Navigates to Income Page")
    public void userNavigatesToIncomePage() {
        houseHolds.getCreateYourIncome().click();
    }

    @Then("User Navigates to Have You Forgotten Any Item and selects I dont have this and continues")
    public void userNavigatesToHaveYouForgottenAnyItemAndSelectsIDontHaveThisAndContinues() {
        helper.getPageHeader().waitForElementIdDisplayed();
        helper.selectAllAsiDontHave();
        debtHelper.getContinueButton().click();
    }
}
