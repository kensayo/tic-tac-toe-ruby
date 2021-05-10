require_relative '../bin/main'

RSpec.describe 'Main' do
  describe '#verify_empty' do
    it 'Verify empty input name' do
      expect(verify_empty('')).to be(true)
    end
    it 'Verify non-empty input name' do
      expect(verify_empty('Test')).to be(false)
    end
  end
end
