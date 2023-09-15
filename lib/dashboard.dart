import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDashboard(),
    );
  }
}

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}


class _StudentDashboardState extends State<StudentDashboard> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTap(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          HomeTab(),
          CoursesTab(),
          GradesTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        backgroundColor: Colors.black, // Set background color
        selectedItemColor: Theme.of(context).primaryColor, // Use the custom primary color
        unselectedItemColor: Colors.grey, // Set unselected tab text color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Grades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome, Student!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('View Announcements'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('View Schedule'),
          ),
        ],
      ),
    );
  }
}

class CoursesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CourseCard('Math', Icons.book),
        CourseCard('Science', Icons.book),
        CourseCard('History', Icons.book),
        CourseCard('English', Icons.book),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final IconData icon;

  CourseCard(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          // Handle course selection
        },
      ),
    );
  }
}


class GradesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GradeItem('Math', 'A+'),
        GradeItem('Science', 'B'),
        GradeItem('History', 'A'),
        GradeItem('English', 'A-'),
      ],
    );
  }
}

class GradeItem extends StatelessWidget {
  final String course;
  final String grade;

  GradeItem(this.course, this.grade);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(course),
      subtitle: Text('Grade: $grade'),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Navigate to detailed grade view
      },
    );
  }
}


class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/john.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'John Carter',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Class: 10th Grade'),
          SizedBox(height: 10),
          Text('Email: student@example.com'),
        ],
      ),
    );
  }
}
