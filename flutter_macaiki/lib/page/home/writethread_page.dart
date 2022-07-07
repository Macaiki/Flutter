import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteThreadPage extends StatefulWidget {
  WriteThreadPage({Key? key}) : super(key: key);

  @override
  State<WriteThreadPage> createState() => _WritePageState();
}

class _WritePageState extends State<WriteThreadPage> {
  var dropdownValue = 0;
  void _pickerFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        backgroundColor: Color(0xff181818),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Write thread',
              style: GoogleFonts.poppins(
                color: Color(0xffF6F7FC),
                fontSize: 14,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Publish',
                style: GoogleFonts.poppins(
                  color: Color(0xffF6F7FC),
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(20, 30, 10, 15),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.play_arrow),
                    SizedBox(
                      width: 8,
                    ),
                    DropdownButton(
                      dropdownColor: Color(0xff181818),
                      borderRadius: BorderRadius.circular(10),
                      value: dropdownValue,
                      onChanged: (int? value) {
                        setState(() {
                          dropdownValue = value ?? 0;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.public,
                                color: Color(0xffF6F7FC),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Public',
                                style: GoogleFonts.poppins(
                                  color: Color(0xffF6F7FC),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: 1,
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock,
                                color: Color(0xffF6F7FC),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Private',
                                style: GoogleFonts.poppins(
                                  color: Color(0xffF6F7FC),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 10,
              child: TextField(
                maxLines: 5,
                cursorColor: Color(0xff181818),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  hintText: "Tulis sesuati atau tambah hastag",
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xffF6F7FC),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xff262626),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickerFile();
                    },
                    icon: Icon(
                      Icons.broken_image_outlined,
                      color: Color(0xffF6F7FC),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.link_rounded,
                      color: Color(0xffF6F7FC),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
