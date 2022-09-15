import 'package:cloud_storage/pages/upload/pop_up_pilih_foto.dart';
import 'package:cloud_storage/pages/upload/upload_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class UploadAlbumPage extends StatefulWidget {
  static const ROUTE = 'upload_album_page';

  const UploadAlbumPage({Key? key}) : super(key: key);

  @override
  _UploadAlbumPageState createState() => _UploadAlbumPageState();
}

class _UploadAlbumPageState extends State<UploadAlbumPage> {
  late UploadState state;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UploadState(context),
      child: Consumer(
        builder: (BuildContext context, UploadState state, Widget? child) {
          this.state = state;
          return body(context);
        },
      ),
    );
  }

  body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: vText(
            "Upload Album",
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          Icon(
            Icons.save,
            color: sh_colorPrimary,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              state.listFoto.isEmpty ? emptyData() : listPhoto(),
              const SizedBox(height: 50),
              VCustomBoxWidget(
                  onTap: () async {
                    final pilihFoto = await showPilihFoto(context);
                    if (pilihFoto != null) {
                      // ambil file
                      final file = await VUtils.getBase64Photo(flag: pilihFoto);
                      if (file != null && file != '') {
                        setState(() {
                          state.listFoto.add(file);
                        });
                      }
                    }
                  },
                  widget: vText(
                    "Tambah Foto",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: sh_colorPrimary,
                    align: TextAlign.center,
                  ),
                  radius: 12,
                  color: sh_colorPrimary.withOpacity(0.2),
                  borderColor: sh_colorPrimary.withOpacity(0.2),
                  fontColor: sh_colorPrimary.withOpacity(0.2),
                  paddingHorizontal: 8,
                  paddingVertical: 8)
            ],
          ),
        ),
      ),
    );
  }

  emptyData() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          SvgPicture.asset("images/ic_empty_data.svg"),
          const SizedBox(height: 12),
          vText(
            "Belum ada foto dokumentasi",
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CPGreyColor,
          ),
          vText(
            "Silahkan menambah foto dokumentasi dengan tap tombol dibawah",
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: CPGreyColor,
            align: TextAlign.center,
          ),
        ],
      ),
    );
  }

  listPhoto() {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        shrinkWrap: true,
        itemCount: state.listFoto.length,
        itemBuilder: (c, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                      image: FileImage(state.listFoto[i])),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        state.listFoto.removeAt(i);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: CPRedColor,
                      radius: 15,
                      child: Icon(
                        Icons.close,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
