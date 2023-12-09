#include "Unity/unity.h"
#include "library.h"

void setUp(){};

void tearDown(){};

void test_example()
/*< A test example >*/
{
	TEST_ASSERT_EQUAL(2,soma(1,1));
}

int main(void){

        UNITY_BEGIN();
        RUN_TEST(test_example);
        return UNITY_END();
}

