import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/ui.dart';
import '../../../../dependency_injection.dart';
import '../bloc/member_bloc.dart';
import '../screens/edit_member_screen.dart';
import '../widgets/member_card.dart';

class SearchPage extends StatefulWidget {
  final MemberState state;

  const SearchPage({super.key, required this.state});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildSearchBar(),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue), // Back button color
      ),
      body: _buildBody(),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        const SizedBox(width: 8),
        const Icon(Icons.search, color: Colors.blue),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search by name, email, role, etc...',
              border: InputBorder.none, // Remove the default border
              enabledBorder: InputBorder.none, // Remove the border when enabled
              focusedBorder: InputBorder.none, // Remove the border when focused
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
        ),
        if (_searchQuery.isNotEmpty)
          IconButton(
            icon: const Icon(Icons.close, color: Colors.grey),
            onPressed: () {
              setState(() {
                _searchController.clear();
                _searchQuery = '';
              });
            },
          ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(child: _buildSearchResults()),
        ],
      ),
    );
  }

  Widget _buildSearchResults() {
    final filteredMembers = widget.state.members.where((member) {
      final queryLower = _searchQuery.toLowerCase();

      return member.name.toLowerCase().contains(queryLower) ||
          member.email.toLowerCase().contains(queryLower) ||
          member.role.name.toLowerCase().contains(queryLower) ||
          member.activityStatus.name.toLowerCase().contains(queryLower) ||
          member.specialization?.toLowerCase().contains(queryLower) == true ||
          member.academicRank?.toLowerCase().contains(queryLower) == true ||
          member.id.toString().toLowerCase().contains(queryLower) ||
          member.createdAt.toString().toLowerCase().contains(queryLower) ||
          member.updatedAt.toString().toLowerCase().contains(queryLower);
    }).toList();

    if (filteredMembers.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.search_off, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'No matching members found.',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: filteredMembers.length,
      itemBuilder: (context, index) {
        final member = filteredMembers[index];
        return MemberCard(
          name: member.name,
          email: member.email,
          role: member.role.name,
          activityStatus: member.activityStatus.name,
          onEdit: () {
            Ui.showDialogWidget(
              context,
              BlocProvider(
                create: (context) => getIt<MemberBloc>(),
                child: EditMemberScreen(member: member),
              ),
            );
          },
        );
      },
    );
  }
}