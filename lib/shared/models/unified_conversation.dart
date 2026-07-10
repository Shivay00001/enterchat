enum ConversationType {
  oneToOne,
  group,
}

class UnifiedConversation {
  final String conversationId;
  final String sourceAppId;
  final String displayName;
  final ConversationType type;
  final String? lastMessageContent;
  final DateTime? lastMessageTime;
  final int unreadCount;

  const UnifiedConversation({
    required this.conversationId,
    required this.sourceAppId,
    required this.displayName,
    required this.type,
    this.lastMessageContent,
    this.lastMessageTime,
    this.unreadCount = 0,
  });
}
