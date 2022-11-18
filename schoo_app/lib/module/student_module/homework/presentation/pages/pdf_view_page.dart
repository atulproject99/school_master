import 'package:flutter/material.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewerPage extends StatefulWidget {
  const MyPdfViewerPage({Key? key, required this.pdfUrl, this.title = ""})
      : super(key: key);
  final String pdfUrl;
  final String title;

  @override
  State<MyPdfViewerPage> createState() => _MyPdfViewerPageState();
}

class _MyPdfViewerPageState extends State<MyPdfViewerPage> {
  //late PDFDocument doc;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    // initPdf();
    print(widget.pdfUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title.isEmpty ? "Read Pdf" : widget.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: Container(
          child: widget.pdfUrl.isEmpty
              ? const Center(
                  child: Text("Data not found"),
                )
              : SfPdfViewer.network(
                  "https://login.vidyaan.in/" + widget.pdfUrl),
        ));
  }

  initPdf() async {
    setState(() {
      isLoading = true;
    });

    /*  await PDFDocument.fromURL(
            'https://www.tutorialspoint.com/java/java_tutorial.pdf')
        .then((value) {
      doc = value;
      setState(() {
        isLoading = false;
      });
    }); */
  }
}
