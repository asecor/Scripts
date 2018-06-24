#Return a value without the table column header
(get-ciminstance win32_operatingsystem).caption
instead of 
get-ciminstance win32_operatingsystem | Select-Object caption

