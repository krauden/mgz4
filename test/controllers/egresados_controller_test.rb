require 'test_helper'

class EgresadosControllerTest < ActionController::TestCase
  setup do
    @egresado = egresados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egresados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egresado" do
    assert_difference('Egresado.count') do
      post :create, egresado: { ap_materno: @egresado.ap_materno, ap_materno_tutor: @egresado.ap_materno_tutor, ap_paterno: @egresado.ap_paterno, ap_paterno_tutor: @egresado.ap_paterno_tutor, curp: @egresado.curp, direccion: @egresado.direccion, fecha_nacimiento: @egresado.fecha_nacimiento, grado: @egresado.grado, grupo: @egresado.grupo, nombre: @egresado.nombre, nombre_tutor: @egresado.nombre_tutor, sexo: @egresado.sexo, telefono: @egresado.telefono }
    end

    assert_redirected_to egresado_path(assigns(:egresado))
  end

  test "should show egresado" do
    get :show, id: @egresado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egresado
    assert_response :success
  end

  test "should update egresado" do
    patch :update, id: @egresado, egresado: { ap_materno: @egresado.ap_materno, ap_materno_tutor: @egresado.ap_materno_tutor, ap_paterno: @egresado.ap_paterno, ap_paterno_tutor: @egresado.ap_paterno_tutor, curp: @egresado.curp, direccion: @egresado.direccion, fecha_nacimiento: @egresado.fecha_nacimiento, grado: @egresado.grado, grupo: @egresado.grupo, nombre: @egresado.nombre, nombre_tutor: @egresado.nombre_tutor, sexo: @egresado.sexo, telefono: @egresado.telefono }
    assert_redirected_to egresado_path(assigns(:egresado))
  end

  test "should destroy egresado" do
    assert_difference('Egresado.count', -1) do
      delete :destroy, id: @egresado
    end

    assert_redirected_to egresados_path
  end
end
