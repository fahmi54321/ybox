import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/pages/form/main_form_state.dart';
import 'package:cloud_storage/pages/form/track_form_state.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArgsTrackFormPage {
  DataTrackRes? dataTrackRes;

  ArgsTrackFormPage({
    this.dataTrackRes,
  });
}

class TrackFormPage extends StatefulWidget {
  ArgsTrackFormPage args;
  static const ROUTE = 'track_form_page';

  TrackFormPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<TrackFormPage> createState() => _TrackFormPageState();
}

class _TrackFormPageState extends State<TrackFormPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TrackFormState(
        context: context,
        dataTrackRes: widget.args.dataTrackRes,
      ),
      child: Consumer(
        builder: (BuildContext context, TrackFormState state, _) {
          return Scaffold(
            appBar: AppBar(
              title: vText(
                'Track',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: (state.isCompleted == true)
                ? SuksesInput(context: context, message: 'Berhasil')
                : Stepper(
                    type: StepperType.horizontal,
                    steps: state.listSteps(),
                    currentStep: state.currentStep,
                    onStepContinue: () {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      if (isLastStep) {
                        state.cekValidasiAlbumForm();
                      } else {
                        setState(() {
                          state.currentStep += 1;
                        });
                      }
                    },
                    onStepCancel: state.currentStep == 0
                        ? null
                        : () {
                            setState(() {
                              state.currentStep -= 1;
                            });
                          },
                    onStepTapped: (step) {
                      setState(() {
                        state.currentStep = step;
                      });
                    },
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      return Row(
                        children: <Widget>[
                          if (state.currentStep != 0)
                            Expanded(
                              child: VButton(
                                text: 'Sebelumnya',
                                radius: 55,
                                paddingHorizontal: 10,
                                paddingVertical: 10,
                                width: MediaQuery.of(context).size.width,
                                height: 46,
                                color: Theme.of(context).colorScheme.onPrimary,
                                borderColor:
                                    Theme.of(context).colorScheme.primary,
                                textColor:
                                    Theme.of(context).colorScheme.primary,
                                onTap: details.onStepCancel,
                              ),
                            ),
                          if (state.currentStep != 0) const SizedBox(width: 20),
                          Expanded(
                            child: VButtonRectangle(
                              state.setTextButton(
                                isLastStep: isLastStep,
                                isLoading: state.isLoading,
                                dataTrack: state.dataTrackRes,
                              ),
                              radius: 55,
                              width: MediaQuery.of(context).size.width,
                              height: 46,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              borderColor:
                                  Theme.of(context).colorScheme.primary,
                              colorText:
                                  Theme.of(context).colorScheme.onPrimary,
                              onTap: (state.isLoading == true)
                                  ? null
                                  : details.onStepContinue,
                              trailing: (state.isLoading == true)
                                  ? SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          );
        },
      ),
    );
  }

  Widget SuksesInput({required BuildContext context, required String message}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            width: 139,
            height: 190,
            child: Image.asset('images/success.png'),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: vText('Berhasil', fontSize: 24),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: vText(message, fontSize: 14),
          ),
        ),
        const SizedBox(height: 60),
        VButtonRectangle(
          'Selesai',
          width: MediaQuery.of(context).size.width / 3,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
