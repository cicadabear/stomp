//Copyright (C) 2013 Potix Corporation. All Rights Reserved.
//History: Wed, Aug 07, 2013  6:51:51 PM
// Author: tomyeh
part of stomp;

typedef void _DisconnectCallback();
typedef void _ErrorCallback(error);

class _StompClient implements StompClient {
  final StompConnector _connector;
  final _DisconnectCallback _onDisconnect;
  final _ErrorCallback _onError;

  /** A session identifier that uniquely identifies the session.
   * It is null if the server doesn't support it.
   */
  final String session;
  ///The information about the STOMP server, such as `messa/1.0.0`.
  final String server;
  /** The heart beat. A two-element array. The first element is
   * the smallest number of milliseconds that the server can do.
   * The second element is the desired number of milliseconds the
   * server would like to get.
   */
  final List<int> heartbeat;

  _StompClient(this._connector, this.server, this.session, this.heartbeat,
      this._onDisconnect, this._onError);

  @override
  Future disconnect({String receipt}) {

  }

  @override
  Future sendBytes(String destination, List<int> message,
      {Map<String, String> headers}) {

  }
  @override
  Future sendString(String destination, String message,
      {Map<String, String> headers}) {

  }
  @override
  Future sendJson(String destination, message,
      {Map<String, String> headers}) {

  }
  @override
  Future sendBlob(String destination, Stream<List<int>> message,
      {Map<String, String> headers}) {

  }

  @override
  Future subscribeBytes(String destination,
      void onMessage(Map<String, String> headers, List<int> message),
      {Ack ack: AUTO}) {

  }
  @override
  Future subscribeString(String destination,
      void onMessage(Map<String, String> headers, String message),
      {Ack ack: AUTO}) {

  }
  @override
  Future subscribeJson(String destination,
      void onMessage(Map<String, String> headers, message),
      {Ack ack: AUTO}) {

  }
  @override
  Future subscribeBlob(String destination,
      void onMessage(Map<String, String> headers, Stream<List<int>> message),
      {Ack ack: AUTO}) {

  }
}
