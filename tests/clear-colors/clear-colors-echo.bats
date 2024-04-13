setup() {
    load '../common-setup'
    common_setup

    outputExpected=$BATS_TEST_FILENAME.expected

    testLine="Hello World!"
}
clear-colors-echo-test(){
    command=$1

    run bash -c "$command $testLine | clear-colors"
    assert_output - <$outputExpected
}
@test "clear-colors_echo.blue" {
    clear-colors-echo-test echo.blue
}
@test "clear-colors_echo.cyan" {
    clear-colors-echo-test echo.cyan
}
@test "clear-colors_echo.green" {
    clear-colors-echo-test echo.green
}
@test "clear-colors_echo.grey" {
    clear-colors-echo-test echo.grey
}
@test "clear-colors_echo.magenta" {
    clear-colors-echo-test echo.magenta
}
@test "clear-colors_echo.red" {
    clear-colors-echo-test echo.red
}
@test "clear-colors_echo.yellow" {
    clear-colors-echo-test echo.yellow
}

