import '../../common/constants/colors.dart';
import '../../common/utils/export_packages.dart';
import '../appointment_page/appointment_page.dart';
import '../chat_page/chat_page.dart';
import '../home_page/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pageList = [];
  int _currentIndex = 0;

  @override
  void initState() {
    pageList.add(const HomePage());
    pageList.add(const AppointmentPage());
    pageList.add(const ChatPage());
    pageList.add(const AppointmentPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteShade800,
      body: IndexedStack(
        index: _currentIndex,
        children: pageList,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: BottomNavigationBar(
            backgroundColor: black,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.homeOutline,
                  color: white,
                ),
                activeIcon: Icon(
                  MdiIcons.home,
                ),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.calendarMonthOutline,
                  color: white,
                ),
                activeIcon: Icon(
                  MdiIcons.calendarMonth,
                ),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.chatOutline,
                  color: white,
                ),
                activeIcon: Icon(
                  MdiIcons.chat,
                ),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.accountCircleOutline,
                  color: white,
                ),
                activeIcon: Icon(
                  MdiIcons.accountCircle,
                ),
                label: '•',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
