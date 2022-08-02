import 'package:delta_to_html/delta_to_html.dart';
import 'package:test/test.dart';

void main() {
  const delta = r'['
      r'{"insert":"啦啦啦路UK"},{"insert":"啊啊啊哦哦","attributes":{"italic":true}},'
      r'{"insert":"来来来","attributes":{"italic":true,"bold":true}},{"insert":"\n"},'
      r'{"insert":{"image":"/data/user/0/com.qjyx.tapp/app_flutter/image_picker1600364725.jpg"}},'
      r'{"insert":"\n"},{"insert":{"video":"https://www.runoob.com/try/demo_source/movie.mp4"}},'
      r'{"insert":"\n\n\n\n\n"}'
      r']';

  test("video", () {
    print(delta);
    print(DeltaToHTML.encodeJson(delta));
  });
}
