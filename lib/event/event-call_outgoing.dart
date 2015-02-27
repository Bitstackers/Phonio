part of phonio;

class CallOutgoing implements Event{
  final String callID;
  final String callee;

  String   get eventName => EventJSONKey.callOutgoing;

  CallOutgoing (this.callID, this.callee);

  @override
  Map toJson() => this.asMap;

  Map get asMap =>
      { EventJSONKey.callID : this.callID,
        EventJSONKey.callee : this.callee
      };

  @override
  String toString() => this.toJson().toString();

}