class FoodItem:
    def __init__(self,name,calories,proteins,carbs,fats):
        self.__name = name
        self.__calories = calories
        self.__proteins = proteins
        self.__carbs = carbs
        self.__fats = fats

    def getName(self):
        return self.__name

    def getCalories(self):
        return self.__calories

    def getProteins(self):
        return self.__proteins

    def getCarbs(self):
        return self.__carbs

    def getFats(self):
        return self.__fats

    def display(self):
        print(f'Food Item: {self.__name}, Calories: {self.__calories}, Proteins: {self.__proteins}g, Carbs: {self.__carbs}g, Fat: {self.__fats}g')

class DailyLog:
    def __init__(self, date):
        self.__date = date
        self.__food_items = []

    def getDate(self):
        return self.__date

    def add_food_item(self, food_item):
        self.__food_items.append(food_item)

    def get_total_calories(self):
        sum = 0
        for item in self.__food_items:
            sum += item.getCalories()
        return sum

    def get_total_nutrients(self):
        sumProtein, sumCarb, sumFat, = 0,0,0
        for item in self.__food_items:
            sumProtein += item.getProteins()
            sumCarb += item.getCarbs()
            sumFat += item.getFats()
        return sumProtein, sumCarb, sumFat

    def display(self):
        print(f'Daily Log: {self.__date}')
        for item in self.__food_items:
            item.display()

class NutritionProfile:
    def __init__(self, user_id):
        self.__user_id = user_id
        self.__daily_logs = {}

    def add_daily_log(self, daily_log):
        self.__daily_logs[daily_log.getDate()] = daily_log

    def get_log_by_date(self, date):
        return self.__daily_logs.get(date)

    def display(self):
        print(f'\nNutrition Profile: {self.__user_id}')
        for log in self.__daily_logs:
            self.__daily_logs[log].display()