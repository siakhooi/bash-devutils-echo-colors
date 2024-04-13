setup() {
    load '../common-setup'
    common_setup

    testDatafile=$BATS_TEST_DIRNAME/cat_test_data
    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
}

cat_test(){
    command=$1
    run bash -c "cat $testDatafile | $command"
    assert_output - < $outputExpected
}
@test "cat.blue" {
    cat_test cat.blue
}
@test "cat.cyan" {
    cat_test cat.cyan
}
@test "cat.green" {
    cat_test cat.green
}
@test "cat.grey" {
    cat_test cat.grey
}
@test "cat.magenta" {
    cat_test cat.magenta
}
@test "cat.red" {
    cat_test cat.red
}
@test "cat.yellow" {
    cat_test cat.yellow
}
