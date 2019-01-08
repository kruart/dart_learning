// If the boolean expression tests for null, consider using ??.
String playerName(String name) => name ?? 'Guest';

// Slightly longer version uses ?: operator.
String playerName2(String name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName3(String name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

