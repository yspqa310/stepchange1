package com.stepChangeRem.remediation.pages.onlinePages;

import com.stepchange.atf.controls.Button;
import com.stepchange.atf.controls.Control;
import com.stepchange.atf.genericMethods.GenericMethodsRemediation;
import org.openqa.selenium.By;

public class YourBudgetSummaryPage extends Control {
    GenericMethodsRemediation GenericMethods_cvp = new GenericMethodsRemediation();
    private Button ContinueButton;
    private Button ReviewSpendingConfirm;
    public Button getContinueButton() {
        return ContinueButton;
    }
public Button getReviewSpendingConfirm(){

        return ReviewSpendingConfirm = new Button(By.xpath("//button[text()='Confrim']"));
}
    public  YourBudgetSummaryPage(){

        ContinueButton = new Button(By.xpath("//button[text()='Continue']"));
    }

}
