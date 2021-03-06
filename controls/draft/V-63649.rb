control "V-63649" do
  title "The user must be prompted for a password on resume from sleep (plugged
in)."
  desc  "Authentication must always be required when accessing a system.  This
setting ensures the user is prompted for a password on resume from sleep
(plugged in)."
  impact 0.5
  tag severity: nil
  tag gtitle: "WN10-CC-000150"
  tag gid: "V-63649"
  tag rid: "SV-78139r1_rule"
  tag stig_id: "WN10-CC-000150"
  tag fix_id: "F-69579r1_fix"
  tag cci: ["CCI-002038"]
  tag nist: ["IA-11", "Rev_4"]
  tag false_negatives: nil
  tag false_positives: nil
  tag documentable: false
  tag mitigations: nil
  tag severity_override_guidance: false
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "If the following registry value does not exist or is not
configured as specified, this is a finding:

Registry Hive: HKEY_LOCAL_MACHINE
Registry Path:
\\SOFTWARE\\Policies\\Microsoft\\Power\\PowerSettings\\0e796bdb-100d-47d6-a2d5-f7d2daa51f51\\

Value Name: ACSettingIndex

Value Type: REG_DWORD
Value: 1"
  tag fix: "Configure the policy value for Computer Configuration >>
Administrative Templates >> System >> Power Management >> Sleep Settings >>
\"Require a password when a computer wakes (plugged in)\" to \"Enabled\"."
end

