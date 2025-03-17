import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/routes/app_pages.dart';
import '../models/app_data_model.dart';
import '../models/category_model.dart';
import '../models/item_model.dart';
import '../models/transaction_model.dart';

class RootRepository {
  RootRepository();

  // Fetch all needed data
  Future<ApiResult<AppData>> all() async {
    try {
      // Define categories with colors
      final categories = [
        Category(
          id: 1,
          name: {"en": "Food", "ar": "طعام"},
          type: CategoryType.expense,
          color: "#FF5733",
        ),
        Category(
          id: 2,
          name: {"en": "Salary", "ar": "راتب"},
          type: CategoryType.income,
          color: "#33FF57",
        ),
        Category(
          id: 3,
          name: {"en": "Rent", "ar": "إيجار"},
          type: CategoryType.expense,
          color: "#3357FF",
        ),
        Category(
          id: 4,
          name: {"en": "Investment", "ar": "استثمار"},
          type: CategoryType.saving,
          color: "#FF33A1",
        ),
        Category(
          id: 5,
          name: {"en": "Entertainment", "ar": "ترفيه"},
          type: CategoryType.expense,
          color: "#FFC300",
        ),
        Category(
          id: 6,
          name: {"en": "Freelance", "ar": "عمل حر"},
          type: CategoryType.income,
          color: "#DAF7A6",
        ),
        Category(
          id: 7,
          name: {"en": "Emergency Fund", "ar": "صندوق الطوارئ"},
          type: CategoryType.saving,
          color: "#C70039",
        ),
        Category(
          id: 8,
          name: {"en": "Transportation", "ar": "المواصلات"},
          type: CategoryType.expense,
          color: "#900C3F",
        ),
        Category(
          id: 9,
          name: {"en": "Groceries", "ar": "البقالة"},
          type: CategoryType.expense,
          color: "#581845",
        ),
        Category(
          id: 10,
          name: {"en": "Utilities", "ar": "المرافق"},
          type: CategoryType.expense,
          color: "#FF5733",
        ),
        Category(
          id: 11,
          name: {"en": "Insurance", "ar": "تأمين"},
          type: CategoryType.expense,
          color: "#33FF57",
        ),
        Category(
          id: 12,
          name: {"en": "Gifts", "ar": "هدايا"},
          type: CategoryType.expense,
          color: "#3357FF",
        ),
        Category(
          id: 13,
          name: {"en": "Dining Out", "ar": "تناول الطعام بالخارج"},
          type: CategoryType.expense,
          color: "#FF33A1",
        ),
        Category(
          id: 14,
          name: {"en": "Healthcare", "ar": "الرعاية الصحية"},
          type: CategoryType.expense,
          color: "#FFC300",
        ),
        Category(
          id: 15,
          name: {"en": "Subscriptions", "ar": "الاشتراكات"},
          type: CategoryType.expense,
          color: "#DAF7A6",
        ),
        Category(
          id: 16,
          name: {"en": "Pet Care", "ar": "رعاية الحيوانات الأليفة"},
          type: CategoryType.expense,
          color: "#C70039",
        ),
        Category(
          id: 17,
          name: {"en": "Clothing", "ar": "الملابس"},
          type: CategoryType.expense,
          color: "#900C3F",
        ),
        Category(
          id: 18,
          name: {"en": "Household Supplies", "ar": "مستلزمات المنزل"},
          type: CategoryType.expense,
          color: "#581845",
        ),
        Category(
          id: 19,
          name: {"en": "Gym Membership", "ar": "عضوية النادي الرياضي"},
          type: CategoryType.expense,
          color: "#FF5733",
        ),
        Category(
          id: 20,
          name: {"en": "Vacation", "ar": "إجازة"},
          type: CategoryType.expense,
          color: "#33FF57",
        ),
        Category(
          id: 21,
          name: {"en": "Car Maintenance", "ar": "صيانة السيارة"},
          type: CategoryType.expense,
          color: "#3357FF",
        ),
        Category(
          id: 22,
          name: {"en": "Education", "ar": "التعليم"},
          type: CategoryType.expense,
          color: "#FF33A1",
        ),
        Category(
          id: 23,
          name: {"en": "Charity", "ar": "التبرعات"},
          type: CategoryType.expense,
          color: "#FFC300",
        ),
        Category(
          id: 24,
          name: {"en": "Loan Repayment", "ar": "سداد القرض"},
          type: CategoryType.expense,
          color: "#DAF7A6",
        ),
        Category(
          id: 25,
          name: {"en": "Bonus", "ar": "علاوة"},
          type: CategoryType.income,
          color: "#C70039",
        ),
        Category(
          id: 26,
          name: {"en": "Stocks", "ar": "الأسهم"},
          type: CategoryType.income,
          color: "#900C3F",
        ),
        Category(
          id: 27,
          name: {"en": "Side Business", "ar": "عمل جانبي"},
          type: CategoryType.income,
          color: "#581845",
        ),
        Category(
          id: 28,
          name: {"en": "Pension", "ar": "المعاش"},
          type: CategoryType.income,
          color: "#FF5733",
        ),
        Category(
          id: 29,
          name: {"en": "Rent Income", "ar": "إيراد الإيجار"},
          type: CategoryType.income,
          color: "#33FF57",
        ),
        Category(
          id: 30,
          name: {"en": "Dividends", "ar": "الأرباح"},
          type: CategoryType.income,
          color: "#3357FF",
        ),
        Category(
          id: 31,
          name: {"en": "Royalties", "ar": "الإتاوات"},
          type: CategoryType.income,
          color: "#FF33A1",
        ),
        Category(
          id: 32,
          name: {"en": "Interest", "ar": "الفائدة"},
          type: CategoryType.income,
          color: "#FFC300",
        ),
        Category(
          id: 33,
          name: {"en": "Social Security", "ar": "الضمان الاجتماعي"},
          type: CategoryType.income,
          color: "#DAF7A6",
        ),
        Category(
          id: 34,
          name: {"en": "Savings Account", "ar": "حساب التوفير"},
          type: CategoryType.saving,
          color: "#C70039",
        ),
        Category(
          id: 35,
          name: {"en": "Retirement Fund", "ar": "صندوق التقاعد"},
          type: CategoryType.saving,
          color: "#900C3F",
        ),
        Category(
          id: 36,
          name: {"en": "College Fund", "ar": "صندوق الكلية"},
          type: CategoryType.saving,
          color: "#581845",
        ),
        Category(
          id: 37,
          name: {"en": "Real Estate Investment", "ar": "استثمار عقاري"},
          type: CategoryType.saving,
          color: "#FF5733",
        ),
        Category(
          id: 38,
          name: {"en": "Gold Investment", "ar": "استثمار الذهب"},
          type: CategoryType.saving,
          color: "#33FF57",
        ),
        Category(
          id: 39,
          name: {"en": "Cryptocurrency", "ar": "العملات الرقمية"},
          type: CategoryType.saving,
          color: "#3357FF",
        ),
        Category(
          id: 40,
          name: {"en": "Fixed Deposits", "ar": "الودائع الثابتة"},
          type: CategoryType.saving,
          color: "#FF33A1",
        ),
        Category(
          id: 41,
          name: {"en": "Mutual Funds", "ar": "صناديق الاستثمار"},
          type: CategoryType.saving,
          color: "#FFC300",
        ),
        Category(
          id: 42,
          name: {"en": "Debt Funds", "ar": "صناديق الديون"},
          type: CategoryType.saving,
          color: "#DAF7A6",
        ),
        Category(
          id: 43,
          name: {"en": "Emergency Savings", "ar": "مدخرات الطوارئ"},
          type: CategoryType.saving,
          color: "#C70039",
        ),
        Category(
          id: 44,
          name: {"en": "Child Education Savings", "ar": "مدخرات تعليم الطفل"},
          type: CategoryType.saving,
          color: "#900C3F",
        ),
        Category(
          id: 45,
          name: {"en": "Travel Fund", "ar": "صندوق السفر"},
          type: CategoryType.saving,
          color: "#581845",
        ),
        Category(
          id: 46,
          name: {"en": "Wedding Fund", "ar": "صندوق الزواج"},
          type: CategoryType.saving,
          color: "#FF5733",
        ),
        Category(
          id: 47,
          name: {"en": "Business Savings", "ar": "مدخرات الأعمال"},
          type: CategoryType.saving,
          color: "#33FF57",
        ),
        Category(
          id: 48,
          name: {"en": "Tax Savings", "ar": "مدخرات الضرائب"},
          type: CategoryType.saving,
          color: "#3357FF",
        ),
        Category(
          id: 49,
          name: {"en": "Medical Savings", "ar": "مدخرات طبية"},
          type: CategoryType.saving,
          color: "#FF33A1",
        ),
        Category(
          id: 50,
          name: {"en": "Home Renovation Savings", "ar": "مدخرات تجديد المنزل"},
          type: CategoryType.saving,
          color: "#FFC300",
        ),
      ];

      // Define transactions
      final transactions = [
        TransactionModel(
          title: "Send money 60",
          amount: "-500.5",
          date: "20 day",
          time: "5:00 PM",
          isIncome: false,
        ),
        TransactionModel(
          title: "Receive money form",
          amount: "+1000.0",
          date: "10 day",
          time: "8:00 PM",
          isIncome: true,
        ),
      ];

      // Define items
      final items = [
        const Item(
          title: "incomes",
          icon: "📊",
          route: AppRoutes.reports,
          addRoute: AppRoutes.addReport,
        ),
        const Item(
          title: "expenses",
          icon: "📉",
          route: AppRoutes.members,
          addRoute: AppRoutes.addMember,
        ),
        const Item(
          title: "saving_goals",
          icon: "💼",
          route: AppRoutes.reports,
          addRoute: AppRoutes.addReport,
        ),
        const Item(
          title: "reports",
          icon: "📄",
          route: AppRoutes.reports,
          addRoute: AppRoutes.addReport,
        ),
      ];
      final currencies = ['SAR', 'USD', 'EUR'];

      // Create an instance of AppData
      final appData = AppData(
        categories: categories,
        transactions: transactions,
        items: items,
        currencies: currencies,
      );

      // Return the AppData wrapped in ApiResult.success
      return ApiResult.success(appData);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
