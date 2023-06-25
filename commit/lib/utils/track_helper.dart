enum Track {
  yearly('Start a Yearly \nChallenge', ''),
  custom('Create Custom', ''),
  monthly('Start a Monthly \nChallenge', '');

  const Track(this.title, this.assetName);

  final String title;
  final String assetName;
}
