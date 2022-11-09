val localDate1 = LocalTime.parse("12:00:00")
val localDate2 = LocalTime.parse("13:00:00")

// Calculate the difference between the two dates by minutes
val minutes = localDate1.until(localDate2, ChronoUnit.MINUTES)