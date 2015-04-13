Feature: Detecting hex codes
When a file contains hex codes

  Scenario:
    Given a file named "main.scss" with:
    """
      body: {
        background-color: #ffffff;
      }
    """
    And a file named "more-colors.scss" with:
    """
      .container: {
        color: #000000;
      }
    """
    When I run `color-cop`
    Then the output should contain "main.scss"
    And the output should contain "more-colors.scss"