# Specify the file name and extension to search for
$fileToFind = "example.txt"

# Specify the root directory to start the search from (e.g. C:\)
$searchPath = "C:\"

# Search recursively for the file and output the results to the console
Get-ChildItem $searchPath -Recurse -Filter $fileToFind | Select-Object FullName
