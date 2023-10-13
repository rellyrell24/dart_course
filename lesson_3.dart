// Handling Request and Responses
// Online Lesson
// Lecture: Tuesdays and Thursdays
// Instructor: JLG Technology
// www.jlg.technology/#/students

// Objectives:
// - Understand the fundamentals of HTTP.
// - Explain the structure of an HTTP request and response.
// - Demonstrate how to send HTTP requests and
// process HTTP responses using a Dart.

// HTTP Fundamentals
// Foundation of the internet
// application  layer protocol
// server-client communication

// Stateless: each request form a client to a server is independent
// Client-Server Model
// Text-based

// Structure

// Client: Craft request message
// Request Line: first line, Request Method (GET,POST),
//  request url, and http version
// Headers: user agent, content type, and more
// Body (optional): data in key:value pair

// Server: Response to request
// Status Line: HTTP version, status code, reason phrase
// Header: similar to request header
// Body (optional): data

// HTTP Requests 7:46

// GET: retrieve data from server
// POST: send data to server
// PUT: update an existing resource
// DELETE: request removal

// Scheme: protocol ("http/https")
// Host: servers address
// Port (Optional): default 80
// Path: path to resource
// Query Parameter (Optional): search query

// User-Agent: client application info
// Content-Type: request body data type
// Authorization: provides authentication
// Accept: types of acceptable types of resources

// HTTP Response 7:56

// 200 OK: success
// 404 Not Found: request resource not found
// 500 Internal Error: server side error

// Demo 8:01
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  final uri = "https://jsonplaceholder.typicode.com/posts/";
  fetchData(uri + "1");
  postData(uri);
}

Future<void> fetchData(String uri) async {
  final response = await http.get(Uri.parse(uri));
  if (response.statusCode == 200) {
    print('response data: ${response.body}');
  } else {
    print('request failed with status: ${response.statusCode}');
  }
}

Future<void> postData(String uri) async {
  final response = await http.post(Uri.parse(uri),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'title': 'New Post',
        'body': 'This is the body of the new post.'
      }));

  if (response.statusCode == 201) {
    print('Response data: ${response.body}');
  } else {
    print("Request failed with stats: ${response.statusCode}");
  }
}

// Wrap Up


