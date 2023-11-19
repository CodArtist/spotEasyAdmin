import '/backend/backend.dart';
import '/components/nav_bar_widget.dart';
import '/components/person_card_admin_widget.dart';
import '/components/person_card_operator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nousers/nousers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'people_model.dart';
export 'people_model.dart';

class PeopleWidget extends StatefulWidget {
  const PeopleWidget({super.key});

  @override
  _PeopleWidgetState createState() => _PeopleWidgetState();
}

class _PeopleWidgetState extends State<PeopleWidget>
    with TickerProviderStateMixin {
  late PeopleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(54.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 240.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 62.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 240.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 440.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 62.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 440.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PeopleModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<AdminRecord>(
      stream: AdminRecord.getDocument(FFAppState().User!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final peopleAdminRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.navBarModel,
                      updateCallback: () => setState(() {}),
                      child: const NavBarWidget(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 120.0, 0.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Text(
                                            'Team Members',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Text(
                                            'View All',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: const Alignment(0.0, 0),
                                            child: TabBar(
                                              labelColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              unselectedLabelColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium,
                                              unselectedLabelStyle: const TextStyle(),
                                              indicatorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              tabs: const [
                                                Tab(
                                                  text: 'Admin/Staff',
                                                ),
                                                Tab(
                                                  text: 'Operator',
                                                ),
                                              ],
                                              controller:
                                                  _model.tabBarController,
                                            ),
                                          ),
                                          Expanded(
                                            child: TabBarView(
                                              controller:
                                                  _model.tabBarController,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                '#',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: const Color(
                                                                          0xFF96A5B8),
                                                                      fontSize:
                                                                          13.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'User',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: const Color(
                                                                          0xFF96A5B8),
                                                                      fontSize:
                                                                          13.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 50.0)),
                                                          ),
                                                          Text(
                                                            'Email',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: const Color(
                                                                      0xFF96A5B8),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Role',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: const Color(
                                                                        0xFF96A5B8),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Status',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: const Color(
                                                                        0xFF96A5B8),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Action',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: const Color(
                                                                      0xFF96A5B8),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 200.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<AdminRecord>>(
                                                          stream:
                                                              queryAdminRecord(
                                                            queryBuilder:
                                                                (adminRecord) =>
                                                                    adminRecord
                                                                        .where(
                                                              'UserType',
                                                              isNotEqualTo:
                                                                  'SuperAdmin',
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<AdminRecord>
                                                                listViewAdminRecordList =
                                                                snapshot.data!;
                                                            if (listViewAdminRecordList
                                                                .isEmpty) {
                                                              return const Center(
                                                                child:
                                                                    SizedBox(
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  child:
                                                                      NousersWidget(),
                                                                ),
                                                              );
                                                            }
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewAdminRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewAdminRecord =
                                                                    listViewAdminRecordList[
                                                                        listViewIndex];
                                                                return PersonCardAdminWidget(
                                                                  key: Key(
                                                                      'Keyoxf_${listViewIndex}_of_${listViewAdminRecordList.length}'),
                                                                  name: valueOrDefault<
                                                                      String>(
                                                                    listViewAdminRecord
                                                                        .username,
                                                                    'null',
                                                                  ),
                                                                  role: listViewAdminRecord
                                                                      .userType,
                                                                  photo:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    listViewAdminRecord
                                                                        .photoUrl,
                                                                    'https://i.stack.imgur.com/l60Hf.png',
                                                                  ),
                                                                  email:
                                                                      listViewAdminRecord
                                                                          .email,
                                                                  status: () {
                                                                    if (listViewAdminRecord
                                                                            .status ==
                                                                        'Active') {
                                                                      return 'Verified';
                                                                    } else if (listViewAdminRecord
                                                                            .status ==
                                                                        'Inactive') {
                                                                      return 'Inactive';
                                                                    } else if (listViewAdminRecord
                                                                            .status ==
                                                                        'Pending') {
                                                                      return 'Pending';
                                                                    } else {
                                                                      return 'null';
                                                                    }
                                                                  }(),
                                                                  admin:
                                                                      listViewAdminRecord,
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                '#',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: const Color(
                                                                          0xFF96A5B8),
                                                                      fontSize:
                                                                          13.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'User',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: const Color(
                                                                          0xFF96A5B8),
                                                                      fontSize:
                                                                          13.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 50.0)),
                                                          ),
                                                          Text(
                                                            'Email',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: const Color(
                                                                      0xFF96A5B8),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Role',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: const Color(
                                                                        0xFF96A5B8),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Status',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: const Color(
                                                                        0xFF96A5B8),
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Action',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: const Color(
                                                                      0xFF96A5B8),
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 200.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<
                                                                OperatorRecord>>(
                                                          stream:
                                                              queryOperatorRecord(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<OperatorRecord>
                                                                listViewOperatorRecordList =
                                                                snapshot.data!;
                                                            if (listViewOperatorRecordList
                                                                .isEmpty) {
                                                              return const Center(
                                                                child:
                                                                    SizedBox(
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  child:
                                                                      NousersWidget(),
                                                                ),
                                                              );
                                                            }
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewOperatorRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewOperatorRecord =
                                                                    listViewOperatorRecordList[
                                                                        listViewIndex];
                                                                return PersonCardOperatorWidget(
                                                                  key: Key(
                                                                      'Key0nb_${listViewIndex}_of_${listViewOperatorRecordList.length}'),
                                                                  name: listViewOperatorRecord
                                                                      .username,
                                                                  role:
                                                                      'Operator',
                                                                  photo: listViewOperatorRecord
                                                                      .photoUrl,
                                                                  email:
                                                                      listViewOperatorRecord
                                                                          .email,
                                                                  status:
                                                                      listViewOperatorRecord
                                                                          .status,
                                                                  operator:
                                                                      listViewOperatorRecord,
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
                            ),
                          ].divide(const SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 50.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      peopleAdminRecord.photoUrl,
                                      'https://i.stack.imgur.com/l60Hf.png',
                                    ),
                                    width: 70.0,
                                    height: 70.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      peopleAdminRecord.username,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        peopleAdminRecord.userType,
                                        'null',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                          ),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(width: 20.0)),
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation']!),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 265.0,
                                    height: 368.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 82.0,
                                            height: 82.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFBDBBBB),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Icon(
                                              Icons.verified_user,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 50.0,
                                            ),
                                          ),
                                          Text(
                                            'Add new admin user or staff user',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            'Adding new admin or staff users to your team is an important step in growing and managing your business.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  color: const Color(0xFFA3AED0),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'AddNewAdmin',
                                                queryParameters: {
                                                  'user': serializeParam(
                                                    peopleAdminRecord,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'user': peopleAdminRecord,
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF7C7A7A),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Text(
                                                  'Add',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'DM Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation2']!),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    width: 265.0,
                                    height: 368.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 82.0,
                                            height: 82.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFBDBBBB),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Icon(
                                              Icons.person_add_alt_1,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 50.0,
                                            ),
                                          ),
                                          Text(
                                            'Add new operator or their admin user',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            'Incorporating new operators and admin users is key to network expansion and service enhancement.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  color: const Color(0xFFA3AED0),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'AddOperator',
                                                queryParameters: {
                                                  'user': serializeParam(
                                                    peopleAdminRecord,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'user': peopleAdminRecord,
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF7C7A7A),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Text(
                                                  'Add',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'DM Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation3']!),
                                ),
                              ),
                            ].divide(const SizedBox(width: 20.0)),
                          ),
                        ].divide(const SizedBox(height: 30.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
