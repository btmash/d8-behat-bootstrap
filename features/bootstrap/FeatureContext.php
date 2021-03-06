<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Behat\Tester\Exception\PendingException;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
   * @Then I take a screenshot :filename
   */
  public function iTakeAScreenshot($filename)
  {
    $this->saveScreenshot($filename, '/tmp');
  }

  /**
   * @Given I clear the page cache
   */
  public function iClearThePageCache() {
    $cache = \Drupal::cache('page');
    $cache->deleteAll();
  }

  /**
   * @Then I clear the watchdog logs
   */
  public function iClearTheWatchdogLogs() {
    db_truncate('watchdog');
  }

}
