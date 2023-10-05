part of '../home_screen.dart';
class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _BottomCard(),
            Expanded(
                child: _Image()),
            Row(
              children: [
                Column(
                  children: [
                    Text('Wayne'),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: '9.5',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700) )
                    ]))
                  ],
                ),
                Spacer(),
                Text('d')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/img/wayne.png');
  }
}

class _BottomCard extends StatelessWidget {
  const _BottomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Wayne'),
        Spacer(),
        Card(  
          child: IconButton.filled(
            onPressed: () {},
            icon:
                Icon(Icons.favorite, color: Colors.red),
          ),
        )
      ],
    );
  }
}
