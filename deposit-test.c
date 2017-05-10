#include "deposit.h"
#include "ctest.h"

CTEST(PenaltyTest,penaltyAppliedTenPercent)
{
   const int result = task (20,10000);
   const int expected = 9000;
   ASSERT_EQUAL (expected,result);
}

CTEST(LessBlockTests, goodDataPass1)
{
    const int result = task (60,10000);
    const int expected = 10200;
    ASSERT_EQUAL (expected,result);
}

CTEST(LessBlockTest, goodDataPass2)
{
    const int result = task (200,10000);
    const int expected = 10600;
    ASSERT_EQUAL (expected,result);
}
CTEST(LessBlockTest, goodDataPass3)
{
    const int result = task (300,10000);
    const int expected = 11200;
    ASSERT_EQUAL (expected,result);
}

CTEST(MoreBlockTest, goodDataPass4)
{
    const int result = task(100,150000);
    const int expected = 154500;
    ASSERT_EQUAL (expected, result);
}

CTEST(MoreBlockTest , goodDataPass5)
{
    const int result = task (200,150000);
    const int expected = 162000;
    ASSERT_EQUAL (expected , result);
}
CTEST(MoreBlockTets, goodDataPass6)
{
    const int result = task (300,150000);
    const int expected =172500;
    ASSERT_EQUAL (expected, result);
}





















