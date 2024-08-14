# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'systemd with remote/upload journal' do
  machinectl = (fact('os.name') == 'Debian') && %w[11 12].include?(fact('os.release.major')) ? '/bin/machinectl' : '/usr/bin/machinectl'

  context 'configure journal remote/upload' do
    let(:manifest) do
      <<~PUPPET
        class { 'systemd':
          manage_journal_upload => true,
          manage_journal_remote => true,
          journal_upload_settings => {
            URL => 'http://127.0.0.1',
          }
          journal_remote_settings => {}
        }
      PUPPET
    end

    it 'works idempotently with no errors' do
      apply_manifest(manifest, catch_failures: true)
      apply_manifest(manifest, catch_changes: true)
    end

    describe file(machinectl) do
      it { is_expected.to be_file }
    end
  end
end
