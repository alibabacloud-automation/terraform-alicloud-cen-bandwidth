package test

import (
	"fmt"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/stretchr/testify/assert"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
func TestTerraformBasicExample(t *testing.T) {
	t.Parallel()
	uniqueId := random.UniqueId()
	uniqueName := fmt.Sprintf("tf-testAcc%s", uniqueId)
	name := uniqueName
	bandwidth := "5"
	geographicRegionIds := []string{"China", "Europe"}
	chargeType := "PostPaid"
	newBandwidthPackage := "true"
	attachBandwidthPackage := "true"
	regionIds := []string{"eu-central-1", "cn-shanghai"}
	bandwidthLimit := "2"
	setBandwidthLimit := "true"

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name":                     name,
			"bandwidth":                bandwidth,
			"geographic_region_ids":    geographicRegionIds,
			"charge_type":              chargeType,
			"new_bandwidth_package":    newBandwidthPackage,
			"attach_bandwidth_package": attachBandwidthPackage,
			"region_ids":               regionIds,
			"bandwidth_limit":          bandwidthLimit,
			"set_bandwidth_limit":      setBandwidthLimit,

			// We also can see how lists and maps translate between terratest and terraform.
		},

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: true,
	}
	// At the end of the test, run `terraform destroy` to clean up any resources that were created

	//defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the values of output variables
	actualName := terraform.Output(t, terraformOptions, "this_name")
	actualBandwidth := terraform.Output(t, terraformOptions, "this_bandwidth")
	actualGeographicRegionIds := terraform.OutputList(t, terraformOptions, "this_geographic_region_ids")
	actualChargeType := terraform.Output(t, terraformOptions, "this_charge_type")
	actualRegionIds := terraform.OutputList(t, terraformOptions, "this_region_ids")
	actualBandwidthLimit := terraform.Output(t, terraformOptions, "this_bandwidth_limit")

	// Verify we're getting back the outputs we expect
	assert.Equal(t, name, actualName)
	assert.Equal(t, bandwidth, actualBandwidth)
	assert.Equal(t, geographicRegionIds, actualGeographicRegionIds)
	assert.Equal(t, chargeType, actualChargeType)
	assert.Equal(t, regionIds, actualRegionIds)
	assert.Equal(t, bandwidthLimit, actualBandwidthLimit)
}
