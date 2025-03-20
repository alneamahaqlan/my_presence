import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/status.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../../data/models/member_edit_body.dart';
import '../../data/repositories/member_repository.dart';

part 'member_bloc.freezed.dart';
part 'member_event.dart';
part 'member_state.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
   final MemberRepository _memberRepository;
  StreamSubscription? _membersSubscription;

  MemberBloc(this._memberRepository) : super(MemberState.initial()) {
    on<MemberEvent>((event, emit) async {
      await event.map(
        saveMember: (event) async => _onSaveMember(event, emit),
        loadMembers: (event) async => _onLoadMembers(event, emit),
        deleteMember: (event) async => _onDeleteMember(event, emit),
        editMember: (event) async => _onEditMember(event, emit),
        addEvaluation: (event) async => _onAddEvaluation(event, emit),
        addResearch: (event) async => _onAddResearch(event, emit),
      );
    });
   
  }

  Future<void> _onLoadMembers(
    LoadMembers event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    // Cancel any existing subscription
    _membersSubscription?.cancel();

    try {
      // Use emit.forEach to handle the stream
      await emit.forEach(
        _memberRepository.getMembersStream(),
        onData: (users) {
          return state.copyWith(status: const Status.success(), members: users);
        },
        onError: (error, stackTrace) {
          log('Error loading members: $error', stackTrace: stackTrace);
          return state.copyWith(
            status: const Status.failed(),
            errorMessage: 'Failed to load members: $error',
          );
        },
      );
    } catch (e, stackTrace) {
      log('Error in _onLoadMembers: $e', stackTrace: stackTrace);
      emit(state.copyWith(
        status: const Status.failed(),
        errorMessage: 'Failed to load members: $e',
      ));
    }
  }

  @override
  Future<void> close() {
    _membersSubscription?.cancel();
    return super.close();
  }
  Future<void> _onSaveMember(
    SaveMember event,
    Emitter<MemberState> emit,
  ) async {
    // final mm = await _memberRepository.fetchUsersWithDetails();
    // print(mm);
    emit(state.copyWith(status: const Status.loading()));

    final result = await _memberRepository.createMember(event.user);

    result.when(
      success: (userId) {
        emit(state.copyWith(status: const Status.success()));
      add(const MemberEvent.loadMembers());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }  
  Future<void> _onDeleteMember(
    DeleteMember event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _memberRepository.setMemberStatus(
      userId: event.userId,
      isActive: event.isActive,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(const MemberEvent.loadMembers());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  Future<void> _onEditMember(
    EditMember event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _memberRepository.updateMember(
      documentId: event.userId,
      memberEditBody: event.memberEditBody,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(const MemberEvent.loadMembers());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  Future<void> _onAddEvaluation(
    AddEvaluation event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _memberRepository.addEvaluation(
      event.userId,
      event.evaluation,
    );

    result.when(
      success: (_) {
        add(const MemberEvent.loadMembers());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  Future<void> _onAddResearch(
    AddResearch event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _memberRepository.addResearch(
      event.userId,
      event.research,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
          add(const MemberEvent.loadMembers());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }
}
