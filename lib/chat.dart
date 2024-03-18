
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  TextEditingController _messageController = TextEditingController();
  List<ChatMessage> _messages = [];

  final String apiKey = "sk-5Rt0NCe8euaSOxzHCkqjT3BlbkFJwrcRG9E4OVIgo7Dkxqjoa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessage(ChatMessage message) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: message.isBot ? Colors.blue : Colors.green,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message.text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type your message...',
              ),
            ),
          ),
          SizedBox(width: 8.0),
          ElevatedButton(
            onPressed: () {
              _sendMessage(_messageController.text);
            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String userMessage) async {
    setState(() {
      _messages.add(ChatMessage(text: userMessage, isBot: false));
    });

    final botResponse = await getBotResponse(userMessage);

    setState(() {
      _messages.add(ChatMessage(text: botResponse, isBot: true));
    });
  }

  Future<String> getBotResponse(String userMessage) async {
    final apiUrl = 'https://api.openai.com/v1/engines/davinci-codex/completions'; 

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        'model': 'text-davinci-003', 
        'prompt': userMessage,
        'temperature': 0.7,
        'max_tokens': 150,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return responseData['choices'][0]['text'];
    } else {
      return 'Error communicating with the bot';
    }
  }
}

class ChatMessage {
  final String text;
  final bool isBot;

  ChatMessage({required this.text, required this.isBot});
}
