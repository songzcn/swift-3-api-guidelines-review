
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func locationManager(_ manager: CLLocationManager, didUpdate locations: [CLLocation])
  @available(iOS 3.0, *)
  optional func locationManager(_ manager: CLLocationManager, didUpdate newHeading: CLHeading)
  @available(iOS 3.0, *)
  optional func locationManagerShouldDisplayHeadingCalibration(_ manager: CLLocationManager) -> Bool
  @available(iOS 7.0, *)
  optional func locationManager(_ manager: CLLocationManager, didDetermineState state: CLRegionState, for region: CLRegion)
  @available(iOS 7.0, *)
  optional func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion)
  @available(iOS 7.0, *)
  optional func locationManager(_ manager: CLLocationManager, rangingBeaconsDidFailFor region: CLBeaconRegion, withError error: NSError)
  @available(iOS 4.0, *)
  optional func locationManager(_ manager: CLLocationManager, didEnter region: CLRegion)
  @available(iOS 4.0, *)
  optional func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion)
  @available(iOS 2.0, *)
  optional func locationManager(_ manager: CLLocationManager, didFailWithError error: NSError)
  @available(iOS 4.0, *)
  optional func locationManager(_ manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: NSError)
  @available(iOS 4.2, *)
  optional func locationManager(_ manager: CLLocationManager, didChange status: CLAuthorizationStatus)
  @available(iOS 5.0, *)
  optional func locationManager(_ manager: CLLocationManager, didStartMonitoringFor region: CLRegion)
  @available(iOS 6.0, *)
  optional func locationManagerDidPauseLocationUpdates(_ manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManagerDidResumeLocationUpdates(_ manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManager(_ manager: CLLocationManager, didFinishDeferredUpdatesWithError error: NSError?)
  @available(iOS 8.0, *)
  optional func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit)
}
