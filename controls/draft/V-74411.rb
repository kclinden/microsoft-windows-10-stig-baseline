control "V-74411" do
  title "Windows 10 must be configured to audit Object Access - Other Object
Access Events successes."
  desc  "Maintaining an audit trail of system activity logs can help identify
configuration errors, troubleshoot service disruptions, and analyze compromises
that have occurred, as well as detect attacks. Audit logs are necessary to
provide a trail of evidence in case the system or network is compromised.
Collecting this data is essential for analyzing the security of information
assets and detecting signs of suspicious and unexpected behavior.

    Auditing for other object access records events related to the management
of task scheduler jobs and COM+ objects.
  "
  impact 0.5
  tag severity: nil
  tag gtitle: "WN10-AU-000083"
  tag gid: "V-74411"
  tag rid: "SV-89085r1_rule"
  tag stig_id: "WN10-AU-000083"
  tag fix_id: "F-80953r2_fix"
  tag cci: ["CCI-000172"]
  tag nist: ["AU-12 c", "Rev_4"]
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
  tag check: "Security Option \"Audit: Force audit policy subcategory settings
(Windows Vista or later) to override audit policy category settings\" must be
set to \"Enabled\" (WN10-SO-000030) for the detailed auditing subcategories to
be effective.

Use the AuditPol tool to review the current Audit Policy configuration:

Open PowerShell or a Command Prompt with elevated privileges (\"Run as
Administrator\").

Enter \"AuditPol /get /category:*\"

Compare the AuditPol settings with the following:

Object Access >> Other Object Access Events - Success

If the system does not audit the above, this is a finding."
  tag fix: "Configure the policy value for Computer Configuration >> Windows
Settings >> Security Settings >> Advanced Audit Policy Configuration >> System
Audit Policies >> Object Access >> \"Audit Other Object Access Events\" with
\"Success\" selected."
end

