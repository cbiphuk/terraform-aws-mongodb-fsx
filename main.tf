resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name                = "fsx-scons-cache-free-space"
  comparison_operator       = "LessThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "FreeStorageCapacity"
  namespace                 = "AWS/FSx"
  period                    = "60"
  statistic                 = "Average"
  threshold                 = "200000000000"
  alarm_description         = "This metric monitors FSx free space for Windows SCons cache"
  insufficient_data_actions = []

  dimensions {
    FileSystemId = "fs-0cf4f5de98420ad9d"
  }
}
