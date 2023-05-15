import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'question': 'Explain about Flutter Language?',
      'answer': 'Flutter is an open source framework by Google for building beautiful,'
          ' natively compiled, multi-platform applications from a single codebase.'
    },
    'mm_My':{
      'question': 'Flutter Language အကြောင်း ရှင်းပြမလား။',
      'answer': 'Flutter သည် codebase တစ်ခုတည်းမှလှပသော၊ မူရင်းစုစည်းထားသော၊ multi-platform applications'
          ' များတည်ဆောက်ရန်အတွက် Google မှ open source framework တစ်ခုဖြစ်သည်။'
    },
  };

}