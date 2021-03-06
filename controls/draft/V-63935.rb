control "V-63935" do
  title "The Profile single process user right must only be assigned to the
Administrators group."
  desc  "Inappropriate granting of user rights can provide system,
administrative, and other high level capabilities.

    Accounts with the \"Profile single process\" user right can monitor
non-system processes performance. An attacker could potentially use this to
identify processes to attack.
  "
  impact 0.5
  tag severity: nil
  tag gtitle: "WN10-UR-000150"
  tag gid: "V-63935"
  tag rid: "SV-78425r1_rule"
  tag stig_id: "WN10-UR-000150"
  tag fix_id: "F-69863r1_fix"
  tag cci: ["CCI-002235"]
  tag nist: ["AC-6 (10)", "Rev_4"]
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
  tag check: "Verify the effective setting in Local Group Policy Editor.
Run \"gpedit.msc\".

Navigate to Local Computer Policy >> Computer Configuration >> Windows Settings
>> Security Settings >> Local Policies >> User Rights Assignment.

If any groups or accounts other than the following are granted the \"Profile
single process\" user right, this is a finding:

Administrators"
  tag fix: "Configure the policy value for Computer Configuration >> Windows
Settings >> Security Settings >> Local Policies >> User Rights Assignment >>
\"Profile single process\" to only include the following groups or accounts:

Administrators"
end

