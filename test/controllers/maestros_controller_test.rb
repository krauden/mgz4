require 'test_helper'

class MaestrosControllerTest < ActionController::TestCase
  setup do
    @maestro = maestros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maestros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maestro" do
    assert_difference('Maestro.count') do
      post :create, maestro: { ap_materno_m: @maestro.ap_materno_m, ap_paterno_m: @maestro.ap_paterno_m, direccion_m: @maestro.direccion_m, grado_m: @maestro.grado_m, grupo_m: @maestro.grupo_m, nombre_m: @maestro.nombre_m, telefono_m: @maestro.telefono_m }
    end

    assert_redirected_to maestro_path(assigns(:maestro))
  end

  test "should show maestro" do
    get :show, id: @maestro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maestro
    assert_response :success
  end

  test "should update maestro" do
    patch :update, id: @maestro, maestro: { ap_materno_m: @maestro.ap_materno_m, ap_paterno_m: @maestro.ap_paterno_m, direccion_m: @maestro.direccion_m, grado_m: @maestro.grado_m, grupo_m: @maestro.grupo_m, nombre_m: @maestro.nombre_m, telefono_m: @maestro.telefono_m }
    assert_redirected_to maestro_path(assigns(:maestro))
  end

  test "should destroy maestro" do
    assert_difference('Maestro.count', -1) do
      delete :destroy, id: @maestro
    end

    assert_redirected_to maestros_path
  end
end
