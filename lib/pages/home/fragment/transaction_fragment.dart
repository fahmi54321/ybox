import 'package:cloud_storage/models/transaction/transaction_res.dart';
import 'package:cloud_storage/pages/form/add_transaction_page.dart';
import 'package:cloud_storage/pages/home/fragment/transaction_fragment_state.dart';
import 'package:cloud_storage/pages/listener_navigation.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class TransactionFragment extends StatefulWidget {
  @override
  _TransactionFragment createState() => _TransactionFragment();
}

class _TransactionFragment extends State<TransactionFragment> {
  late TransactionState state;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  void isKeluarPage({
    required bool isDidPushNext,
    required bool isDidPop,
    required bool isDidPopNext,
  }) {
    print(
        'Nav isDidPushNext : $isDidPushNext , isDidPop : $isDidPop, isDidPopNext : $isDidPopNext');

    if (isDidPopNext == true) {
      state.pullRefresh();
    }
  }

  void isMasukPage({
    required bool isDidPush,
  }) {
    print('Nav isDidPush : $isDidPush');
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => TransactionState(context: context),
      child: Consumer(
        builder: (BuildContext context, TransactionState state, _) {
          this.state = state;
          return ListenerNavigation(
            onKeluarPage: isKeluarPage,
            onMasukPage: isMasukPage,
            routeName: 'TransactionFragment',
            child: Scaffold(
              body: RefreshIndicator(
                onRefresh: state.pullRefresh,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    buildBalance(theme: theme),

                    Expanded(
                      child: PagedListView(
                        padding: EdgeInsets.only(bottom: spacing_xxxLarge),
                        pagingController: state.pagingController,
                        builderDelegate:
                            PagedChildBuilderDelegate<DataTransactionRes>(
                                itemBuilder: (context, item, index) {
                          return Container(
                            color: theme.colorScheme.onPrimary,
                            margin: EdgeInsets.only(
                              left: spacing_standard_new,
                              right: spacing_standard_new,
                              top: spacing_standard_new,
                            ),
                            padding: EdgeInsets.all(5),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:state.statusIconColorTrans(item.status),
                                    child: state.statusIconItemTrans(item.status),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16),
                                              child: vText(
                                                'Member name',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16.0),
                                              child: vText(
                                                (item.member.isEmpty)
                                                    ? '-'
                                                    : item.member,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16),
                                              child: vText(
                                                'Account name',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16.0),
                                              child: vText(
                                                (item?.nameOnBank.isEmpty ?? false)
                                                    ? '-'
                                                    : item.nameOnBank ?? '-',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16),
                                              child: vText(
                                                'Request date',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 16.0),
                                              child: vText(
                                                (item?.requestDate.isEmpty ?? false)
                                                    ? '-'
                                                    : item.requestDate ?? '-',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: (state.getAmount.jmlAmount=='0') ? null : Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: FloatingActionButton.small(
                  onPressed: () {
                    Navigator.pushNamed(context, AddTransactionPage.ROUTE,);
                  },
                  backgroundColor: sh_colorPrimary,
                  child: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildBalance({required ThemeData theme}) {
    return Container(
      color: theme.colorScheme.onPrimary,
      margin: EdgeInsets.only(
        left: spacing_standard_new,
        right: spacing_standard_new,
        top: spacing_standard_new,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                vText(
                  'Your balance',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 8),
                vText(
                  state.getAmount.jmlAmount,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
