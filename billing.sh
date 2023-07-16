#!/bin/bash

# Get the AWS billing information
billing=$(aws --profile default ce get-cost-and-usage)

# Print the billing information
echo "Billing information:"
echo "  Total cost: $billing.TotalCost"
echo "  Usage: $billing.Usage"
echo "  Costs by service:"
for service in "${billing.ResultsByTime.GroupsByDimension.Dimensions[0].Values[@]}"; do
  echo "    $service: $billing.ResultsByTime.GroupsByDimension.Metrics[0].Values['${service}']"
done
