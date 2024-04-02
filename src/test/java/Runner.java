package TestSuite;
import com.intuit.karate.junit5.Karate;
class Runner {
//    @Karate.Test
//    public Karate runGet(){
//        return Karate.run("Pet/pet").relativeTo((getClass()));
//    }
//
//    @Karate.Test
//    public Karate runGetStore(){
//        return Karate.run("Pet/store").relativeTo((getClass()));
//    }

//    @Karate.Test
//    public Karate runGetMealPlan() {
//        return Karate.run("Mealplan/mealplan").relativeTo((getClass()));
//    }
//}
//
//    @Karate.Test
//    public Karate runGetMisc(){
//    return Karate.run("Misc/misc").relativeTo((getClass()));
//}

    @Karate.Test
    public Karate runGetRecipe(){
        return Karate.run("Recipe/recipe").relativeTo((getClass()));
    }
}
