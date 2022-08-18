import 'package:flame/components.dart';
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
    required bool reverse,
  }) {
    position = positionIn;
    size = Vector2.all(100);
    _reverse = reverse;
  }

  final TrumpKind kind;
  final int no;
  bool _reverse = false;

  @override
  Future<void> onLoad() async {
    // SVGの画像データ取得
    await _loadSvgImage();
    await super.onLoad();
  }

  void reverseCard() {
    _reverse = !_reverse;
    _loadSvgImage();
  }

  Future<void> _loadSvgImage() async {
    if (_reverse) {
      svg = await Svg.load('images/${kind.kind}_$no.svg');
    } else {
      svg = await Svg.load('images/${kind.kind}_$no.svg');
    }
  }
}
