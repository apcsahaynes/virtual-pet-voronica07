
public class VirtualPet {
  private String name;
  private int energy;
  private int weight;
  private int happiness;
  private int ageMonths;
  private int ageYears;

  public VirtualPet(String name){
    this.name = name;
    this.energy = 0;
    this.weight = 5;
    this.happiness = 0;
    this.ageMonths = 0;
    this.ageYears = 0;
  }

  public String getName(){
    return name;
  }
  
  public int getEnergyLevel(){
    return energy;
  }

  public int getHappinessLevel(){
    return happiness;
  }
  
  public int getWeight(){
    return weight;
  }

  public int getAgeYears(){
  return ageYears;
}

  public void feed(Food food){
   this.energy += food.getEnergyIncrease();
   this.energy = Math.max(Math.min(this.energy, 100), 0);
   this.weight += food.getWeightGain();
   this.happiness += food.getHappinessIncrease();
   this.weight = Math.max(Math.min(this.weight, 100), 5);
   this.happiness = Math.max(Math.min(this.happiness, 100), 0);
  }

  public void play(Game game){
    if (game.isWinner()) {
      this.happiness += game.getHappinessIncr();
      this.happiness = Math.max(Math.min(this.happiness, 100), 0);
      this.weight -= game.getWeightDecr();
      this.weight = Math.max(this.weight, 5);
    }
  }
  
  public void sleep(Sleep sleep){
    this.energy += sleep.getEnergyIncrease();
  }

  public void updateStatus(){
    if (happiness > 0){
      happiness--;
    }
    if (energy > 0){
      energy--;
    }
    ageMonths++;
    ageConverter();
  }

  private void ageConverter(){
    if (ageMonths >= 12){
      ageYears++;
      ageMonths = 0;
    }
  } 
  
  public String toString(){
    return name + "'s information: \nEnergy: " + energy 
    + "\nWeight: " + weight + "\nHappiness: " + happiness
    + "\nAge: " + ageYears + " years and " + ageMonths + " months.";
  }
}
