Feature: Validation of E2E scenario 89955
  @Online_89955
  @OnlineBatchE2E_All_Scenario
  Scenario: Validation of E2E scenario 89955Online
    Given User is on Your debt advice journey starts here page
    #And User Navigates to Online Welcome Page
    When User enters the client details and click on continue
    And On Step Change Account Registration continue without registration
    And Navigate to household from dashboard and enter the details
    #And Navigate to debt page from dashboard and enter the details
    Then User fills the Debt Details Online for Client and assert Total Amount "7200"
      | creditor      | debttype             |      amountOwed  | liability | areYouBehindWithPayments |ongoingMobileService|furtherAction |furtherActionType                 |originalReGularPayment|originalReGularPaymentForEvery|isthedebtsubjecttoaguarantor|isDebtTypeMortagage|whatTypeOfMortgageIsIt|isItOnaStandardVariableRate|mortagagePaymentAmount|mortagagePaymentFrequency|linkAssets|assetWorth|ownerOfTheAsset|isClientLiableForAllPayments|arrangementRepayInsurance|reasonForSpending               |spentAmount|
      | HSBC          |  Credit card         |      3600        | You       |  No                      |false               |       No     |   false                          |  false               |4                             |No                          |false              |0                     |false                      |0                     |0                        |false     |false     |false          |false                       |false                    |false                           |false      |
      | Littlewoods   |  Catalogue           |      3600        | You       |  Yes                     |false               |      Yes     |   Default notice                 |  false               |4                             |No                          |false              |0                     |false                      |0                     |0                        |false     |false     |false          |false                       |false                    |false                           |false      |
    And User Clicks On Continue Button and Marks the Debt completion as "Yes, I have added everything"
    And Action on Additional questions about your debts page
    And From dashboard navigate to creating your Budget page
    And Navigate to the Online Income page and enter the data as below Assert Total Income as "1336.48"
      |header                  | field                    | amount |      index  |
      |Earnings                | Wage                     | 800    |        4    |
      |Benefits and Tax Credits| Child Benefit            | 139.94 |        2    |
      |Other income            | Student loans            | 683    |        1    |
      |Other income            | Child support/maintenance| 197.66 |        3    |
    #Then Enter the details on your income page
    And User Clicks On Continue Button and Marks the Debt completion as "Yes, I have finished"
#    And From dashboard navigate to your Spending
    And Navigate to the Online Spendings Fixed page and enter the data as below Assert Total Income as "1336.48"
     |header                 | field                          | amount|index|arrears|whoPays|
     |Home and contents      |Rent                            |526.70 |4    |No     |false |
      |Home and contents      |Rates                           |100    |4    |No     |false |
      |Home and contents      |TV licence                      |13.12  |3    |No     |false |
      |Utilities              |Electricity                     |50     |4    |No     |false |
      |Utilities              |Gas                             |50     |4    |No     |false |
      |Utilities              |Water supply                    |50     |4    |No     |false |
      |Food and housekeeping  |Groceries                       |300    |5    |false  |false |
      |Personal costs         |Clothing and footwear           |60     |4    |false  |false |
      |Care and health costs  |Childcare                       |50     |4    |No     |false |
      |Pensions and insurances|Buildings and contents insurance|20     |4    |No     |false |
      |School costs           |School uniform                  |20     |4    |false  |false |
    And User Clicks On Continue Button and Marks the Debt completion as "No, I have spending to add later"
#    Then Enter the details on your spending
    And From dashboard navigate to advice on your budget as Your current budget page
#    And Action on Your budget looks good page
#    And Action on Now On Your budget summary page
    And From dashboard click on final question navigate to Your assets
    And Action on final question future changes page
    Then Select No as answer for final question page
    And From dashboard navigate to your priority payments and do action
#    And Action on Consider saving a small amount Page
    And From dashboard select review your option navigate to Our approach to giving you advice
    Then Verify Individual voluntary arrangement is one of the recommended solution
    And Click on close and select I don’t want to save my progress Link
    And close Browser    