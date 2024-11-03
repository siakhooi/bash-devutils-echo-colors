setup() {
    load '../common-setup'
    common_setup

    testDatafile=$BATS_TEST_DIRNAME/cat_test_data
    testDatafile_NoEndingNewLine=$BATS_TEST_DIRNAME/cat_test_data_no_ending_newline
    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
}

cat_test(){
    command=$1
    run bash -c "cat $testDatafile | $command"
    assert_output - < $outputExpected
}
cat_test_no_ending_newline(){
    command=$1
    run bash -c "cat $testDatafile_NoEndingNewLine | $command"
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

@test "no_ending_newline.cat.blue" {
    cat_test_no_ending_newline cat.blue
}
@test "no_ending_newline.cat.cyan" {
    cat_test_no_ending_newline cat.cyan
}
@test "no_ending_newline.cat.green" {
    cat_test_no_ending_newline cat.green
}
@test "no_ending_newline.cat.grey" {
    cat_test_no_ending_newline cat.grey
}
@test "no_ending_newline.cat.magenta" {
    cat_test_no_ending_newline cat.magenta
}
@test "no_ending_newline.cat.red" {
    cat_test_no_ending_newline cat.red
}
@test "no_ending_newline.cat.yellow" {
    cat_test_no_ending_newline cat.yellow
}
