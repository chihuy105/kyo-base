import 'package:base_component/imports/base_component_import.dart';
import 'package:base_component/core/utils/file_utils.dart';
import 'package:base_component/widgets/file/file_item.dart';

class FileItemDownloadAbleBrowser extends StatelessWidget {
  const FileItemDownloadAbleBrowser({Key? key, required this.url, this.alignLeft = true}) : super(key: key);

  final String url;
  final bool alignLeft;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => LauncherUtils.showURL(context, url),
      child: Container(
        color: context.themeColor.gray6,
        child: FileDemo(
          extension: FileUtils.getExtensionFormPath(url),
          name: FileUtils.getNameFormPath(url),
          fileSize: null,
          // alignLeft: alignLeft,
          indicator: SizedBox.square(
            dimension: 22,
            child: FittedBox(
              child: Btn(
                btnType: BtnType.TEXT,
                padding: Dimens.edge_zero,
                child: Icon(
                  Icons.file_download,
                  color: context.themeColorText.text,
                ),
              ),
            ),
          ),
        ).p8(),
      ).cornerRadius(Dimens.rad),
    );
  }
}
