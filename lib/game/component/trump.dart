import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame_svg/flame_svg.dart';

enum TrumpKind {
  heart('heart'),
  diamond('diamond'),
  spade('spade'),
  clover('clover');

  final String kind;
  const TrumpKind(this.kind);
}

class Trump extends SvgComponent {
  // コンストラクタ
  Trump({
    required Vector2 positionIn,
    required this.kind,
    required this.no,
  }) {
    position = positionIn;
    size = Vector2.all(100);
  }

  final TrumpKind kind;
  final int no;

  @override
  Future<void> onLoad() async {
    // SVGの画像データ取得
    svg = await Svg.load('images/${kind.kind}_$no.svg');
    await super.onLoad();
  }
}
