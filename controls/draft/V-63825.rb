control "V-63825" do
  title "User Account Control must be configured to detect application
installations and prompt for elevation."
  desc  "User Account Control (UAC) is a security mechanism for limiting the
elevation of privileges, including administrative accounts, unless authorized.
This setting requires Windows to respond to application installation requests
by prompting for credentials."
  impact 0.5
  tag severity: nil
  tag gtitle: "WN10-SO-000260"
  tag gid: "V-63825"
  tag rid: "SV-78315r1_rule"
  tag stig_id: "WN10-SO-000260"
  tag fix_id: "F-69753r1_fix"
  tag cci: ["CCI-001084"]
  tag nist: ["SC-3", "Rev_4"]
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
\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\

Value Name: EnableInstallerDetection

Value Type: REG_DWORD
Value: 1"
  tag fix: "Configure the policy value for Computer Configuration >> Windows
Settings >> Security Settings >> Local Policies >> Security Options >> \"User
Account Control: Detect application installations and prompt for elevation\" to
\"Enabled\"."
end

