package pages;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.By;

public class PaymentPage extends BasePage {

    private AppiumDriver driver;
    private By cardNo = By.xpath("//android.view.View[@index=2]/android.widget.EditText");
    private By monthTab = By.xpath("//android.view.View[@index=3]/android.widget.Button");
    private By month = By.xpath("//android.widget.ListView/android.widget.CheckedTextView[@index=3]");
    private By yearTab = By.xpath("//android.view.View[@index=4]/android.widget.Button");
    private By year = By.xpath("//android.widget.ListView/android.widget.CheckedTextView[@index=7]");
    private By cvv = By.xpath("//android.view.View[@index=5]/android.widget.EditText");
    private By payNow = By.xpath("//android.view.View[@index=8]/android.widget.Button");

    public PaymentPage(AppiumDriver driver) {
        super(driver);
        this.driver = driver;
    }

    public void enterCardNo(String cardNum) {
        waitForElementToBeVisible(cardNo);
        sendKeys(cardNo,cardNum);
    }

    public void enterCVV(String cvv) {
        waitForElementToBeVisible(this.cvv);
        sendKeys(this.cvv,cvv);
    }

    public void selectMonth() {
        waitForElementToBeVisible(monthTab);
        clickBy(monthTab);
        waitForElementToBeClickable(month);
        clickBy(month);
    }

    public void selectYear() {
        waitForElementToBeVisible(yearTab);
        clickBy(yearTab);
        waitForElementToBeClickable(year);
        clickBy(year);
    }

    public void selectPayNow(){
        waitForElementToBeClickable(payNow);
        clickBy(payNow);
    }
}
