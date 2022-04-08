import 'package:app_setting/utils/functions/api_base_helper.dart';
import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  final String url;
  final String? auth;
  // final int? currentPage;
  final ValueChanged<dynamic>? onchange;
  const Pagination({
    Key? key,
    required this.url,
    required this.onchange,
    this.auth,
    // this.currentPage = 1,
  }) : super(key: key);

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  final _controller = ScrollController();
  final apibaseHelper = ApiBaseHelper();
  var data = [];
  var loading = true;

  Future<List> getData() async {
    loading = true;
    apibaseHelper
        .onNetworkRequesting(
            url: widget.url, methode: METHODE.get, isAuthorize: false)
        .then((value) {
      debugPrint("Function Work ${value[0]["name"]}");
      setState(() {
        data.clear();
        data.addAll(value);
        widget.onchange!(value);
        loading = false;
      });
    }).onError(
      (ErrorModel error, stackTrace) {
        debugPrint("PageNation Status Code : ${error.statusCode}");
      },
    );

    return data;
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  int page = 0;
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    // var heigh = MediaQuery.of(context).size.height;

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const Text(
              "Pagination",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (page > 0) {
                        page = page - 20;
                        currentPage -= 1;
                        debugPrint("$page");
                      }
                    });
                  },
                  icon: const Icon(Icons.fast_rewind_rounded),
                ),
                Text("Page ${data.length != page ? currentPage : "End"}"),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (data.length > page) {
                        page = page + 20;
                        currentPage += 1;
                      }
                    });
                  },
                  icon: const Icon(Icons.fast_forward_rounded),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: loading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      controller: _controller,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return index >= page && index < page + 20
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "Pagination email item ${index + 1} : ${data[index]["email"]}",
                                  style: TextStyle(
                                    color: index % 2 == 0
                                        ? Colors.black
                                        : Colors.red,
                                  ),
                                ),
                              )
                            : Container();
                      },
                    ),
            ),
          ],
        )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: loading
        //       ? [const CircularProgressIndicator()]
        //       : data.map(
        //           (e) {
        //             return const Text("data");
        //           },
        //         ).toList(),
        // ),
        );
  }
}
