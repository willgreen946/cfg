# A one liner to suspend to memory 
# See https://www.netbsd.org/docs/guide/en/chap-power.html for more details
sysctl -w hw.acpi.sleep.state=3
