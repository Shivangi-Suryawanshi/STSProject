package com.NHMP.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.NHMP.AdminEntity.IngredientEntity;
import com.NHMP.AdminEntity.MealPlanTypeDetailEntity;
import com.NHMP.AdminEntity.MealPlanTypeEntity;
import com.NHMP.AdminEntity.RecipeEntity;
import com.NHMP.AdminEntity.RecipeIngredientEntity;
import com.NHMP.AdminEntity.RecipePrescriptionEntity;
import com.NHMP.AdminService.IngredientService;
import com.NHMP.AdminService.MealPlanTypeDetailService;
import com.NHMP.AdminService.MealPlanTypeService;
import com.NHMP.AdminService.RecipeIngredientService;
import com.NHMP.AdminService.RecipePrescriptionService;
import com.NHMP.AdminService.RecipeService;
import com.NHMP.UserEntity.UserEntity;
import com.NHMP.UserService.UserService;

@Controller
public class AdminController {

	@Autowired
	IngredientService ingredientService;
	@Autowired
	RecipeService recipeService;
	@Autowired
	RecipeIngredientService recipeIngredientService;
	@Autowired
	RecipePrescriptionService recipePrescriptionService;
	@Autowired
	MealPlanTypeService mealPlanTypeService;
	@Autowired
	MealPlanTypeDetailService mealPlanTypeDetailService;
	@Autowired
	UserService userService;
	 UserEntity oldUserEntity=new UserEntity();
	int recipeid;

	String mptname;
	int mptprice;
	int mealplanid;
	int day;
	int meal;
	int save;

	RecipeEntity recipeentity = new RecipeEntity();
	UserEntity userEntity=new UserEntity();
	
	ArrayList<String> ingredientsname = new ArrayList<>();
	ArrayList<String> recipeprescriptions = new ArrayList<>();

	public final String UPLOAD_DIR = new ClassPathResource("static/img").getFile().getAbsolutePath();

	public AdminController() throws IOException {

	}
	
	@RequestMapping("/loginverification")
	public String verification(@RequestParam("email")String email,@RequestParam("pass")String password) {
			if(email.equals("admin@gmail.com") && password.equals("admin")){
	    	 return "adminHome";    	
	      }else {
	    	 oldUserEntity=userService.getUser(email, password);
	    	  if(userEntity==null) {
	    	   return "login";
	    	  }else {
	    	   return "userHome";
	    	  }
	      } 		
	}
	
	@RequestMapping("/adminhome")
	public ModelAndView test1() {

		return new ModelAndView("adminHome");
	}
	
	
	@RequestMapping("/login")
	public ModelAndView login() {
		
		return new ModelAndView("login");
		 
	}

	@RequestMapping("/ingredienthome")
	public ModelAndView test4() {

		return new ModelAndView("ingredientHome");
	}

	@RequestMapping("/addingredient")
	public ModelAndView test2() {

		return new ModelAndView("addIngredient");
	}

	@RequestMapping("/allingredient")
	public String test5(Model model) {
		ArrayList<IngredientEntity> al = ingredientService.getIngredient();
		model.addAttribute("ingredient", al);
		return "allIngredient";
	}

	@RequestMapping("/removeingredient")
	public ModelAndView test3() {

		return new ModelAndView("deleteIngredient");
	}

	@RequestMapping("/recipehome")
	public ModelAndView test6() {

		return new ModelAndView("recipeHome");
	}

	@RequestMapping("/makerecipe")
	public ModelAndView test7() {

		return new ModelAndView("makeRecipe");
	}

	@RequestMapping("/removerecipe")
	public ModelAndView test8() {

		return new ModelAndView("removeRecipe");
	}

	@RequestMapping("/showrecipe")
	public String test9(Model model) {
		ArrayList<RecipeEntity> recipeEntity = recipeService.getallrecipe();
		model.addAttribute("recipes", recipeEntity);
		return "showRecipe";
	}

	@RequestMapping("/createmeal")
	public ModelAndView test10() {

		return new ModelAndView("createMealPlan");
	}
	
	@RequestMapping("/mealplanhomenew")
	public ModelAndView mealplanhome() {

		return new ModelAndView("mealplanTypeHome");
	}
	
	@RequestMapping("/showmealplans")
	public String showmealplans(Model model) {
		ArrayList<MealPlanTypeEntity> mealPlanTypeEntity=mealPlanTypeService.getAllPlan();
		model.addAttribute("mealplan", mealPlanTypeEntity);
		return "allMealPlans";
	}
//**********************************************************	
	@RequestMapping("/signup")
	public ModelAndView test21() {

		return new ModelAndView("signup");
	}
	
	@RequestMapping("/createprofile")
	public ModelAndView test22() {

		return new ModelAndView("createProfile");
	}
	
	@RequestMapping("/savesignupdetails")
	public ModelAndView test23(@RequestParam("email")String email,@RequestParam("password")String password) {
		userEntity.setEmail(email);
		userEntity.setPassword(password);
		System.out.println(userEntity);
		return new ModelAndView("createProfile");
	}
	
	//save profile details after signup
	
	@RequestMapping("/buy")
	public ModelAndView test24(@ModelAttribute UserEntity tempuserentity,Model model) {
		ArrayList<MealPlanTypeEntity> e=(ArrayList<MealPlanTypeEntity>) mealPlanTypeService.getAllPlan();		
		model.addAttribute("allplans", e);
		
		userEntity.setName(tempuserentity.getName());
		userEntity.setAge(tempuserentity.getAge());
		userEntity.setGender(tempuserentity.getGender());
		userEntity.setWeight(tempuserentity.getWeight());
		userEntity.setBmi(tempuserentity.getBmi());
		userEntity.setHeight(tempuserentity.getHeight());
		
		System.out.println("  =>  "+userEntity);
		return new ModelAndView("buyplan");
	}

	@RequestMapping("/getday")
    public String getday(@RequestParam("day")int val,Model model) {
	     for(int i=1;i<=6;i++){
	    	if(i==1){
	    		ArrayList<RecipeEntity> breakfast=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		model.addAttribute("breakfast",breakfast);
	    	}
	    	if(i==2){
	    		ArrayList<RecipeEntity> ms=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		
	    		model.addAttribute("MS",ms);
	    	}
	    	if(i==3){
	    		ArrayList<RecipeEntity> l=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		
	    		model.addAttribute("lunch",l);
	    	}
	    	if(i==4){
	    		ArrayList<RecipeEntity> es=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		
	    		model.addAttribute("AS",es);
	    	}
	    	if(i==5){
	    		ArrayList<RecipeEntity> d=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		
	    		model.addAttribute("dinner",d);
	    	}
	    	if(i==6){
	    		ArrayList<RecipeEntity> h=mealPlanTypeDetailService.getRecipeDetail(val,i,oldUserEntity.getPlanid());
	    		
	    		model.addAttribute("H",h);
	    		}
	    }
	    
	    return "planDetail";
    }
	
    @RequestMapping("/saveuser")
    public String saveUser() {
	    
	    return "buyplan";
    }
    
    @RequestMapping("/userprofile")
    public String userprofile(Model model) {
    	model.addAttribute("data",oldUserEntity);
	    return "userProfile";
    }
    
    @RequestMapping("/usermealplan")
    public String usermealplan(Model model) {
    	model.addAttribute("day",oldUserEntity.getDay());
	    return "viewPlan";
    }

    @RequestMapping("/billdata")
    public String billdata(@RequestParam("data")String val) {
    	int i=Integer.parseInt(val);
	    System.out.println("*********************"+val);
	  //  userEntity.set
	   if(i==7 || i==14 || i==21) {
		   userEntity.setDay(i); 
	   }else {
		   userEntity.setPlanid(i);
	   }

		System.out.println("  `````>  "+userEntity);
		
		if(userEntity.getPlanid() !=0 && userEntity.getDay() !=0){
			System.out.println("%%%%%%%%%%%%"+i);
			userService.saveUser(userEntity);
		}
	    return "buyplan";
    }
   
    
 //************************************************************billdata   
    
	@RequestMapping("/saveingredient")
	public String saveIngredient(@RequestParam("ingredientname") String ingredientname) {

		IngredientEntity ie = new IngredientEntity();
		ie.setIngredient(ingredientname);
		ingredientService.saveIngredient(ie);
		return "addIngredient";
	}

	@RequestMapping("/checkingredient")
	public ResponseEntity<Boolean> checkIngredient(@RequestParam("ingredientname") String ingredientname) {
		Boolean b = false;
		System.out.println("~~~~~~~~~~~~~~" + ingredientname);
		IngredientEntity ingredientEntity = ingredientService.checkIngredient(ingredientname);
		if (ingredientEntity == null) {
			b = false;
		} else {
			ingredientService.removeIngredient(ingredientEntity);
			b = true;
		}
		System.out.println(b);
		return ResponseEntity.ok(b);
	}
//"checkrecipe?recipename="

	@RequestMapping("/checkrecipe")
	public ResponseEntity<Boolean> checkRecipe(@RequestParam("recipename") String recipename) {
		Boolean b = false;
		RecipeEntity recipeEntity = recipeService.checkrecipe(recipename);
		if (recipeEntity == null) {
			b = false;
		} else {
			recipeService.removerecipe(recipeEntity);
			b = true;
		}
		System.out.println(b);
		return ResponseEntity.ok(b);
	}

	@RequestMapping("/ingredientforrecipe")
	public ResponseEntity<IngredientEntity> ingredientforrecipe(@RequestParam("ingredientname") String ingredientname) {
		IngredientEntity ingredientEntity = ingredientService.checkIngredient(ingredientname);
		System.out.println("~~~~~~~ingredientname~~~~~~~" + ingredientEntity);
		return ResponseEntity.ok(ingredientEntity);
	}

//recipedata
	@RequestMapping("/recipedata")
	public String recipedata(@RequestParam("recipename") String recipename, @RequestParam("img") MultipartFile file) {

		if (file.isEmpty()) {

		} else {
			String filename = file.getOriginalFilename();
			System.out.println(filename + "DONE");

			try {
				InputStream is = file.getInputStream();
				byte data[] = new byte[is.available()];
				is.read(data);
				// write
				FileOutputStream fos = new FileOutputStream(UPLOAD_DIR + File.separator + file.getOriginalFilename());
				fos.write(data);

				RecipeEntity recipeentity = new RecipeEntity();
				recipeentity.setRecipen(recipename);
				recipeentity.setImage(file.getOriginalFilename());
				RecipeEntity recipeentitynew = recipeService.saverecipe(recipeentity);
				System.out.println("lets take recipe id" + recipeentitynew);
				recipeid = recipeentitynew.getId();
				System.out.println("@@@@@@@@@@@@@@@@@" + recipeid);
				saveingredientdetail();
				saveprescriptiondetail();
				// ingredientsname.
				fos.flush();
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		System.out.println(recipename + ".............." + file.getOriginalFilename());

		return "makeRecipe";
	}

	@RequestMapping("/recipeingredient")
	public String recipeingredientdetail(@RequestParam("ingredient") String ingredientname) {

		ingredientsname.add(ingredientname);

		System.out.println("list = " + ingredientname);
		return "makeRecipe";
	}

	@RequestMapping("/recipeprescription")
	public String recipeprescriptiondetail(@RequestParam("prescription") String recipeprescription) {

		recipeprescriptions.add(recipeprescription);

		System.out.println("one = " + recipeprescription);
		return "makeRecipe";
	}

	public void saveingredientdetail() {

		for (String name : ingredientsname) {
			System.out.println("$$$$$$$$$$$" + recipeid);
			recipeIngredientService.saveRecipeIngredient(recipeid, Integer.parseInt(name));
		}
		ingredientsname.clear();

	}

	public void saveprescriptiondetail() {
//recipePrescriptionService	
		for (String str : recipeprescriptions) {
			recipePrescriptionService.saveRecipePrescription(recipeid, str);
		}
		recipeprescriptions.clear();
	}

	@RequestMapping("/getrecipe")
	public ResponseEntity<RecipeEntity> getRecipe(@RequestParam("recipeid") String recipeid) {
		RecipeEntity recipeentity = recipeService.getrecipe(Integer.parseInt(recipeid));
		return ResponseEntity.ok(recipeentity);
	}

	@RequestMapping("/getrecipeingredient")
	public ResponseEntity<ArrayList<IngredientEntity>> getrecipeingredient(@RequestParam("recipeid") String recipeid) {
		ArrayList<RecipeIngredientEntity> al = recipeIngredientService.getRecipeIngredient(recipeid);
		System.out.println("ingredient ids 1 " + al);
		ArrayList<IngredientEntity> alnew = recipeIngredientService.getIngredientName(al);
		System.out.println(alnew);
		return ResponseEntity.ok(alnew);
	}

	@RequestMapping("/getrecipeprescription")
	public ResponseEntity<ArrayList<RecipePrescriptionEntity>> getrecipeprescription(
			@RequestParam("recipeid") String recipeid) {
		ArrayList<RecipePrescriptionEntity> recipePrescription = recipePrescriptionService
				.getRecipePrescription(Integer.parseInt(recipeid));
		return ResponseEntity.ok(recipePrescription);
	}

	@RequestMapping("/recipeformeal")
	public ResponseEntity<RecipeEntity> recipeformeal(@RequestParam("recipename") String recipename) {
		RecipeEntity recipeEntity = recipeService.getrecipeByName(recipename);
		System.out.println(">>>>>>" + recipeEntity);
		return ResponseEntity.ok(recipeEntity);
	}

	@RequestMapping("/mealplantypename")
	public String mealplantypename(@RequestParam("name") String name) {
		mptname = name;
		save = 1;
		System.out.println(mptname + "*****1****" + mptprice);

		return "createMealPlan";
	}

	@RequestMapping("/mealplantypeprice")
	public String mealplantypeprice(@RequestParam("price") int price) {
		mptprice = price;
		System.out.println(mptname + "*****2****" + mptprice);

		// mealplantypecreated=true;

		return "createMealPlan";
	}

	@RequestMapping("/day")
	public String day(@RequestParam("day") int dayn) {

		day = dayn;

		System.out.println("Day => " + day);
		

		if (save == 1) {
			save = 0;
			MealPlanTypeEntity mealPlanTypeEntity = mealPlanTypeService.savemealplan(mptname, mptprice);
			mealplanid = mealPlanTypeEntity.getId();
			System.out.println(" Enter ---> " + day);
			System.out.println(" testing => " + mealplanid);
		} else {
			System.out.println(" created ");
		}
		
		return "createMealPlan";
	}

	@RequestMapping("/meal")
	public String meal(@RequestParam("meal") int mealn) {
		meal = mealn;
		System.out.println("meal => " + meal);
		return "createMealPlan";
	}

	@RequestMapping("/recipeformealplantype")
	public String recipeformealplantype(@RequestParam("recipeid") int recipeid) {

		System.out.println("recipeid => " + recipeid);

         MealPlanTypeDetailEntity mealPlanTypeDetailEntity=new MealPlanTypeDetailEntity();
		 mealPlanTypeDetailEntity.setForDay(day);
		 mealPlanTypeDetailEntity.setForMealType(meal);
		 mealPlanTypeDetailEntity.setMealPlanTypeId(mealplanid);
		 mealPlanTypeDetailEntity.setRecipeId(recipeid);
		 System.out.println(" Detail  => "+mealPlanTypeDetailEntity);
	     mealPlanTypeDetailService.saveMealPlanTypeDetail(mealPlanTypeDetailEntity);

		return "createMealPlan";
	}

}
