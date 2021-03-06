control "V-63353" do
  title "Local volumes must be formatted using NTFS."
  desc  "The ability to set access permissions and auditing is critical to
maintaining the security and proper access controls of a system.  To support
this, volumes must be formatted using the NTFS file system."
  impact 0.7
  tag severity: nil
  tag gtitle: "WN10-00-000050"
  tag gid: "V-63353"
  tag rid: "SV-77843r2_rule"
  tag stig_id: "WN10-00-000050"
  tag fix_id: "F-69273r1_fix"
  tag cci: ["CCI-000213"]
  tag nist: ["AC-3", "Rev_4"]
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
  tag check: "Run \"Computer Management\".
Navigate to Storage >> Disk Management.

If the \"File System\" column does not indicate \"NTFS\" for each volume
assigned a drive letter, this is a finding.

This does not apply to system partitions such the Recovery and EFI System
Partition."
  tag fix: "Format all local volumes to use NTFS."

describe filesystem('c:') do
  its('type') { should cmp 'NTFS' }
end

end

