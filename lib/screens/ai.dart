import 'dart:ui';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class AiBot extends StatefulWidget {
  const AiBot({super.key});

  @override
  State<AiBot> createState() => _AiBotState();
}

class _AiBotState extends State<AiBot> {
  final apiKey = 'AIzaSyDhfHcv_hTZwqM4fiE4-AjyyPCKBXCUFYc';
  late final GenerativeModel _model;
  late final ChatSession _chat;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode(debugLabel: 'TextField');
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: apiKey,
    );
    _chat = _model.startChat();
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final history = _chat.history.toList();
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black.withOpacity(0.4),
        title: Row(
          children: [
            Text(
              'Ask me anything',
              style: TextStyle(fontSize: width * 0.07, color: Colors.white),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Iconify(
              Mdi.robot_happy_outline,
              color: Colors.white,
              size: width * 0.08,
            ),
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_4.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 90, sigmaY: 190),
            child: Container(
              height: height,
              width: width,
              color: Colors.black.withOpacity(0.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (context, idx) {
                        final content = history[idx];
                        final text = content.parts
                            .whereType<TextPart>()
                            .map<String>((e) => e.text)
                            .join('');
                        return MessageWidget(
                          text: text,
                          isFromUser: content.role == 'user',
                        );
                      },
                      itemCount: history.length,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 15,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            autofocus: true,
                            focusNode: _textFieldFocus,
                            decoration: textFieldDecoration(
                                context, 'Enter your question', width),
                            controller: _textController,
                            onSubmitted: (String value) {
                              _sendChatMessage(value);
                            },
                          ),
                        ),
                        const SizedBox.square(dimension: 15),
                        if (!_loading)
                          IconButton(
                            onPressed: () async {
                              _sendChatMessage(_textController.text);
                            },
                            icon: const Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          )
                        else
                          const CircularProgressIndicator(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    setState(() {
      _loading = true;
    });

    try {
      final response = await _chat.sendMessage(
        Content.text(message),
      );
      final text = response.text;

      if (text == null) {
        _showError('Empty response.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState(() {
        _loading = false;
      });
      _textFieldFocus.requestFocus();
    }
  }

  void _showError(String message) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  final String text;
  final bool isFromUser;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            width: width * 0.7,
            decoration: BoxDecoration(
                color: isFromUser
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: isFromUser
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))
                    : const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
                bottom: 8, left: width * 0.02, right: width * 0.02),
            child: MarkdownBody(data: text),
          ),
        ),
      ],
    );
  }
}

InputDecoration textFieldDecoration(
        BuildContext context, String hintText, double width) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(width * 0.1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(width * 0.06),
      ),
    );
