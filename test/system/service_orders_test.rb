require "application_system_test_case"

class ServiceOrdersTest < ApplicationSystemTestCase
  setup do
    @service_order = service_orders(:one)
  end

  test "visiting the index" do
    visit service_orders_url
    assert_selector "h1", text: "Service Orders"
  end

  test "creating a Service order" do
    visit service_orders_url
    click_on "New Service Order"

    fill_in "Description", with: @service_order.description
    fill_in "Final Term", with: @service_order.final_term
    fill_in "Service Type", with: @service_order.service_type
    fill_in "User", with: @service_order.user_id
    fill_in "User Type", with: @service_order.user_type
    click_on "Create Service order"

    assert_text "Service order was successfully created"
    click_on "Back"
  end

  test "updating a Service order" do
    visit service_orders_url
    click_on "Edit", match: :first

    fill_in "Description", with: @service_order.description
    fill_in "Final Term", with: @service_order.final_term
    fill_in "Service Type", with: @service_order.service_type
    fill_in "User", with: @service_order.user_id
    fill_in "User Type", with: @service_order.user_type
    click_on "Update Service order"

    assert_text "Service order was successfully updated"
    click_on "Back"
  end

  test "destroying a Service order" do
    visit service_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service order was successfully destroyed"
  end
end
