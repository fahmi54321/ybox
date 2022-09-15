import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/pages/form/main_form_state.dart';
import 'package:cloud_storage/pages/form/track_form_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_dropdown.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';

class PublishingTrackPage extends StatefulWidget {
  static String tag = '/PublishingTrackPage';

  TrackFormState state;

  PublishingTrackPage({required this.state});

  @override
  PublishingTrackPageState createState() => PublishingTrackPageState();
}

class PublishingTrackPageState extends State<PublishingTrackPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildFormContributor(),
      ],
    );
  }

  Widget buildFormContributor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        buildContributorName(),
        buildRole(),
        buildShare(),
        buildPublishing(),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildPublishing() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Publishing",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        (widget.state.isLoadingPublishing == true)
            ? CircularProgressIndicator(
                color: CPPrimaryColor,
              )
            : VDropDownPublishing(
                value: widget.state.pubPublishings,
                onChanged: (PublishingRes? data) {
                  setState(() {
                    widget.state.pubPublishings = data;
                  });
                },
                items: widget.state.listPublishing
                    .map<DropdownMenuItem<PublishingRes>>(
                        (PublishingRes value) {
                  return DropdownMenuItem<PublishingRes>(
                    value: value,
                    child: Text(value.name),
                  );
                }).toList(),
                borderColor: CPPrimaryColor.withOpacity(0.1),
                icon: Icon(Icons.arrow_drop_down),
              ),
      ],
    );
  }

  Column buildShare() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Share %",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 12,
          keyboardType: TextInputType.number,
          controller: widget.state.tracksInputShare,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildRole() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Role",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        (widget.state.isLoadingRole == true)
            ? CircularProgressIndicator(
                color: CPPrimaryColor,
              )
            : VDropDownRole(
                value: widget.state.pubRoles,
                onChanged: (RolesRes? data) {
                  setState(() {
                    widget.state.pubRoles = data;
                  });
                },
                items: widget.state.listRole
                    .map<DropdownMenuItem<RolesRes>>((RolesRes value) {
                  return DropdownMenuItem<RolesRes>(
                    value: value,
                    child: Text(value.name),
                  );
                }).toList(),
                borderColor: CPPrimaryColor.withOpacity(0.1),
                icon: Icon(Icons.arrow_drop_down),
              ),
      ],
    );
  }

  Column buildContributorName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Contributor Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 12,
          controller: widget.state.tracksInputContributorName,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
