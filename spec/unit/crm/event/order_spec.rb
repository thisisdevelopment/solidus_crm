describe SolidusCrm::Event::Order do
  let!(:order) { create(:order_ready_to_ship) }
  let(:event) { 'complete' }
  let(:connection) { double('SolidusCrm::Connection') }

  subject { described_class.new(order, event) }

  context 'when the order event is emitted' do
    before do
      expect(connection).to receive(:post)
      stub_const('SolidusCrm::Connection', connection)
    end

    it 'should update the CRM when events are emitted' do
      subject.emit
    end
  end
end
