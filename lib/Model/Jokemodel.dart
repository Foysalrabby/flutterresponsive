
class Jokemodel{
  final int  id;
  final String type;
  final String setup;
  final String punchline;

  Jokemodel({required this.id, required this.type, required this.setup, required this.punchline});
}

final List<Jokemodel> jokeModel = <Jokemodel>[
  Jokemodel(
      id: 1,
      type: "general",
      setup: "Why did the scarecrow win an award?",
      punchline: "Because he was outstanding in his field!"
  ),
  Jokemodel(
      id: 2,
      type: "programming",
      setup: "Why do programmers prefer dark mode?",
      punchline: "Because light attracts bugs!"
  ),
  Jokemodel(
      id: 3,
      type: "general",
      setup: "What do you call fake spaghetti?",
      punchline: "An impasta!"
  ),
  Jokemodel(
      id: 4,
      type: "programming",
      setup: "How many programmers does it take to change a light bulb?",
      punchline: "None. It's a hardware problem."
  ),
  Jokemodel(
      id: 5,
      type: "knock-knock",
      setup: "Knock knock. Who's there? Lettuce.",
      punchline: "Lettuce in, it's cold out here!"
  ),
  Jokemodel(
      id: 6,
      type: "general",
      setup: "Why don't scientists trust atoms?",
      punchline: "Because they make up everything!"
  ),
  Jokemodel(
      id: 7,
      type: "animal",
      setup: "What do you call an alligator in a vest?",
      punchline: "An investigator!"
  ),
  Jokemodel(
      id: 8,
      type: "general",
      setup: "Why did the bicycle fall over?",
      punchline: "Because it was two-tired!"
  ),
  Jokemodel(
      id: 9,
      type: "programming",
      setup: "Why do Java developers wear glasses?",
      punchline: "Because they don’t see sharp."
  ),
  Jokemodel(
      id: 10,
      type: "general",
      setup: "How does a penguin build its house?",
      punchline: "Igloos it together!"
  )
];