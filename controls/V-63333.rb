control "V-63333" do
  title "Automatically signing in the last interactive user after a
system-initiated restart must be disabled."
  desc  "Windows can be configured to automatically sign the user back in after
a Windows Update restart.  Some protections are in place to help ensure this is
done in a secure fashion; however, disabling this will prevent the caching of
credentials for this purpose and also ensure the user is aware of the restart."
  impact 0.5
  tag severity: nil
  tag gtitle: "WN10-CC-000325"
  tag gid: "V-63333"
  tag rid: "SV-77823r1_rule"
  tag stig_id: "WN10-CC-000325"
  tag fix_id: "F-69251r1_fix"
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b", "Rev_4"]
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
configured as specified, this is a finding.

Registry Hive: HKEY_LOCAL_MACHINE
Registry Path:
\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\

Value Name: DisableAutomaticRestartSignOn

Value Type: REG_DWORD
Value: 1"
  tag fix: "Configure the policy value for Computer Configuration >>
Administrative Templates >> Windows Components >> Windows Logon Options >>
\"Sign-in last interactive user automatically after a system-initiated
restart\" to \"Disabled\"."

describe registry_key('HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System') do
  its('DisableAutomaticRestartSignOn') { should eq 1 }
end

end

