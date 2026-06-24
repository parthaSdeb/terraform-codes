resource "local_file" "football_worldcup" {
  content         = "The FIFA World Cup is an international football competition"
  filename        = "/tmp/football_worldcup.txt"
  file_permission = "0700"
}

resource "local_file" "cricket_worldcup" {
  content         = "The ICC Cricket World Cup is the international championship of One Day International (ODI) cricket"
  filename        = "/tmp/cricket_worldcup.txt"
  file_permission = "0700"
}

resource "local_file" "olympics" {
  content         = "The Olympic Games are leading international sporting events featuring summer and winter sports competitions"
  filename        = "/tmp/olympics.txt"
  file_permission = "0700"
}