module SolidusCrm
  module ShipmentStatemachine
    extend ActiveSupport::Concern

    included do
      state_machine do
        after_transition to: :shipped, do: :update_crm
      end
    end

    def update_crm(transition)
      Spree::CrmConfig.crm_shipment_emitter_class.new(order, state, transition.from_name, transition.to_name).emit
    end
  end
end
