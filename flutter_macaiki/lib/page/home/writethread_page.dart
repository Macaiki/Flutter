import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteThreadPage extends StatefulWidget {
  const WriteThreadPage({Key? key}) : super(key: key);

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
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        backgroundColor: const Color(0xff181818),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Write thread',
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 14,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Publish',
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F7FC),
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 22,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.play_arrow),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton(
                  dropdownColor: const Color(0xff181818),
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
                          const Icon(
                            Icons.public,
                            color: Color(0xffF6F7FC),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Public',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
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
                          const Icon(
                            Icons.lock,
                            color: Color(0xffF6F7FC),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Private',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
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
            const SizedBox(
              height: 15,
            ),
            TextField(
              cursorColor: const Color(0xff181818),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                hintText: "Write headline on your thread!",
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0xffA5A5A5),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextField(
              maxLines: 5,
              cursorColor: const Color(0xff181818),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                hintText: "Tulis sesuati atau tambah hastag",
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0xffA5A5A5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 350,
            ),
            Container(
              color: const Color(0xff262626),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickerFile();
                    },
                    icon: const Icon(
                      Icons.broken_image_outlined,
                      color: Color(0xffF6F7FC),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
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
