import "package:flutter/material.dart";
import "package:url_launcher/url_launcher_string.dart";
import "package:webtoon/models/webtoon_episode_model.dart";

class Episode extends StatelessWidget {
  const Episode({
    Key? key,
    required this.episode,
    required this.webtoonId,
  }) : super(key: key);

  onButtonTap() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
  }

  final String webtoonId;
  final WebtoonEpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Icon(Icons.chevron_right_rounded, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
