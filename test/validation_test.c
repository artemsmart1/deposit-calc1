#include "deposit.h"
#include "ctest.h"

CTEST(Inputdation, CheckPassLeft)
{
    const int result = check (0,0);
    const int expected = 1;
    ASSERT_EQUAL(expected,result);
}

CTEST(Inputdation, CheckPassRight)
{
    const int result = check (365,0);
    const int expected = 1;
    ASSERT_EQUAL (expected,result);
} 

CTEST(Inputdation,CheckUnderZero)
{
    const int result = check (-10,0);
    const int expected = 1;
    ASSERT_EQUAL (expected, result);
}

CTEST(Inputdation,CheckUnderZero)
{
    const int result = check (10,-100)
    const int expected = 1;
    ASSERT_EQUAL (expected,result);
}

CTEST(InputValidation,DaysAndCashTestPass)
{
    const int result = check (40,15000)
    const int expected = 0;
    ASSERT_EQUAL (expected,result);
}




