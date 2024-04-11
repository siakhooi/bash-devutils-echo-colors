setup(){
    load '../common-setup'
    common_setup

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
    outputActual="$TEST_TEMP_DIR/$(basename "$BATS_TEST_FILENAME").$BATS_TEST_DESCRIPTION.actual"

    testLine="Hello World!"
}
echo_test(){
    command=$1

    run bash -c "$command $testLine | tee $outputActual"
    assert_output - <$outputExpected
}
@test "echo.blue" {
    echo_test echo.blue
}
@test "echo.cyan" {
    echo_test echo.cyan
}
@test "echo.green" {
    echo_test echo.green
}
@test "echo.grey" {
    echo_test echo.grey
}
@test "echo.magenta" {
    echo_test echo.magenta
}
@test "echo.red" {
    echo_test echo.red
}
@test "echo.yellow" {
    echo_test echo.yellow
}
