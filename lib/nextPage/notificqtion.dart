import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:googleapis/servicecontrol/v1.dart' as servicecontrol;
class notificqtion extends StatefulWidget {
  const notificqtion({super.key});

  @override
  State<notificqtion> createState() => _notificqtionState();
}

class _notificqtionState extends State<notificqtion> {
  Future<String> getAccessToken() async{
    final serviceAccountJson = {
      
  "type": "service_account",
  "project_id": "flutterapp-7962d",
  "private_key_id": "8e40c75adb2f5a24a95eac7ee38f596c01f509ac",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCzXA8q+oVyIonO\nYdgnQhFypYl1m6duoVY6HDsXnjY5jDNelIZ+g5ZNj5dmUyGed6NqFQZrzbmwNyVq\nWhQkk73YLAlxBstcyyzVE9iMqVGc1LlbijJBNk5HkmbFyGu2hSKAtTdwdXQzVD9t\nQqK7OgzdbGmHrrFPgzbDOhdpXR/iO6Uwt2vu8K8JAyN8llbRVYuJuDVt9wGOfF2h\nRxks37cIN7ZZZlZqOY0xuN97jcP5PVYRrjNk97MdaPvOu3hC0IRQ1NAXHtAADw/y\nV1W6SMr+/GrtC6ocz0k0GRNkcAwdIrJlLKnu4mTwiSYv+20hyxW0eFL9NuqFklUo\n4CpeM6tRAgMBAAECggEAB8qu+ORlHyRf+BlwK03D9fGr0lXbIWAqykpAAdJ9T8iV\nJ2Ezo6lAUNCYuI41axFVzP3ODqlqcLzOVngoGfg9VSKBgH8AWBmyzoHImCQwdg+m\nJ1Njp2Xsf2zreQvMgaqFvrGLVrxLgYHJDLcDMcYDNdcWPBnJbrHoL9jhmEOTyrvA\n7KL44+CFJqCfX2/nGgRrVXkXwsy/4xs3779+PVMMeB/yAPANms5ftB3NraebiPy4\nBdgDCD10OeejCEwm6PNJEevyei7+JC43smnG6MgrJH17IvVRisxHY7J7Rkn7a+hJ\nA8MyB/62pJ2M7dm0j9bEEx1YtV8SlC7JWIfV8QltFwKBgQDn4oizc4Oib6R9S+qR\nrHQlh+drB4m0HvWejDaKIMcubjBSIJM/M73M43ASvaJ0w3MNNY1xBh8P+84fPInP\nQIouoK2DyOJMYClAwHC3gvKP+SJqEMjbQpkTq5QCrgAiD7w4qzGGw7D7JMrsaPin\nbyFEExZixyc4ObHSJOO4N13NgwKBgQDGAyVMABKBO9dJ1aPGIV8ucBNyyQKxiq6S\nLTBZyFZLpFtprW/6U7an/72n7e8y4fG8zD1LUnV3X8e537OEbumVQZBANb8eugQz\n1fUlSreQIWUqCb5GTqftiBJiEtgf6bCBKlV+NUBzuN97LR//kh+sZ8M3BsylwopJ\n0c0EVsc/mwKBgQDU374nH7CEeoFDFWJuASdPHQhx1SWxWYqa1pVrENRJ55YsjwMe\nTl27rj/AtJ5jGtqQEc2bKMdzYPLE8kqBHPq9+3vPM6er/cthSkkv7uLHEStqu6Xo\nw6bLzAPAwgQVQOTGEUMSOKxMomY3ydYbv4WGfQ9b9wAmObDo/jyfbRSMCQKBgAXv\n4DVoJyXi0nCvTCrLo1v0FlExv7ftDZDqc/GtNREti2QexCXATtC4tUoMs0hWR/Y+\nNXRFs6nxoD5te6dz3+MOxTF3qxRTxX58Ys5McDaNGchp5F+dSiGwG8T/BaXnTtiA\nmXGgTR9rIqBB2RzDl9mGfu7ucEJkE9tkw/3mUDETAoGBAMjck+YyjUX3L54u3QDv\nQcYVnm5f44YRJodPV19OkGbKPIWnApxDhCvghF7rMNi/FdEdlMXHGhb11Ykt+wHV\nTm2vMXaVibgINEcul+VEts9YaKJycW60j2JkqQbUJpFCFNVCSQmiUJsUVh8ZyQhP\np6j86xEPBB5mQDRIhG0SBrsr\n-----END PRIVATE KEY-----\n",
  "client_email": "firebase-adminsdk-ao2za@flutterapp-7962d.iam.gserviceaccount.com",
  "client_id": "105354685339299888342",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-ao2za%40flutterapp-7962d.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"

    };
    List<String> scopes = [
      "https://www.googleapis.com/auth/userinfo.email",
      "https://www.googleapis.com/auth/firebase.database",
      "https://www.googleapis.com/auth/firebase.messaging"
    ];
    http.Client client = await auth.clientViaServiceAccount(
               auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
               scopes
    );
    auth.AccessCredentials credentials = await auth.obtainAccessCredentialsViaServiceAccount(
         auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
         scopes,
         client
    );
    client.close();
    return credentials.accessToken.data;
    
  }
     sendNotificatio() async{
     final String serverAccesseToken = await  getAccessToken();
     print("####################################################");
     print(serverAccesseToken);
    
     String CloudMessaging = 'https://fcm.googleapis.com/v1/projects/flutterapp-7962d/messages:send';
     final Map<String, dynamic> message = {
      'message': {
        "token": "fvS4OAWTTH2f07CfkEnPvD:APA91bEmlNp3YxLzelS90kWRmMZ7SGhpZ8_8pYppQvkgCUbsRw6p1EGuRblUVd9Vo1EQkFF55h4BYNiBQRArLwvGrHKKCjNUjQEIfsi2zmoczyZmGzVr_JvphplX-akTXTdIx7lXwuEd",
        'notification' : {
          'title': "Hello",
          'body' :  "Mohamed Essa"
        },
        
      }
     };

     http.Response respone = await http.post(
        Uri.parse(CloudMessaging),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $serverAccesseToken'
        },
        body: jsonEncode(message),
     );
      if (respone.statusCode == 200) {
  print('Message sent successfully');
} else if (respone.statusCode == 403) {
  print('Access forbidden: ${respone.body}');
} else {
  print('Failed to send message: ${respone.body}');
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final accessToken = await getAccessToken();
            print("#################################");
            print(accessToken);
        //await    sendMessage('Hello', "Mohamed Issa");
          
          },
          child: Text('Send Notification'),
        ),
      ),
    );
  }
}
sendMessage(title, message) async{
  var headersList = {
 'Accept': '*/*',
 //'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
 'Content-Type': 'application/json',
 'Authorization': 'Bearer ya29.c.c0ASRK0GaNfKH0iPL-iYGlXp-_2b714BG2koEZbeLVFhOk0OX926rFkFarrsyW8dzqnAkQ2O0WDXgavlCnuKJDhT6YN2MrTcEG2BzLFH9V-ynRuurw9KrTEDsivUj5FWnJAwIyGqSBrjUENEi0TZ9UlMobUDUiEHyJJPeCHyFXEFcCJIg82W1FEnHPBqb0WP4W_l4oYIuusL6YYu2kTavszjDWtn5qvwwJmNKcEeUPM2TfYVWhlTsU8p5iAONFBA6yJDTadSSSw4Mvp-1wGV8rfxzWlX7lGktkz_KREC7VfsfAmimrDQGu8V-rWAo8vBfzQaP6hQIWLpLnW0qGy-DpWW3wTsfVKv2iEQw9svWhAilHogxVMpLjYiNsJkgG388DdFdMwfJ75v4fVYjZ60vh3XhwVnUyd_osmZYxBJkn1Mwqz3Mdwhj96IqzQFkk692iuUilOqZh_iIoYwU0W9WQpeoRYBJVi6bzcjYXF60hW2F2d1ueh-uqpIiOpw8-0qxFYaySph4i-hq09ZMI6SrnR3grphzVvlJ_OBgIl6tec4W8ykfwg1gac7takeeWl-tSWMkJnUJo-kIw1Io_JtX7Yr_giop0Or23B0vJyJruJFw8MskIWa_eFk4MmZy759V3YXXvhj6q-Ucb6VqBaSXxa_hb0jBzWygwRfpWt8fbBhk586Qwetsoyc0YyBBc7f6xFq7kIMy0hzRzbeR1h3Q2JcWjl3Ysox6ws1m0Wp-fpX7Zitf2nYwerdcw8ZWR3gugjyxQyuO9QiSRcFkRJSB_Xz49_S8u3gIM2SqylW-ScI0vOdfY-V4F8xs4cmjbwqVmgrO8onv8_vBl0pof4qdIYulxtonB7Fc70yd0UUwWlBO6W2e-ddXa2Q3tjVqvI7nFF7tgdMa7uJIBvBwQOez6qMmvUBnM-2y7V586aSQq996BOFp8R3whwbMbpu1gbbkwq-krssxoXR1O_ynbfOpo5omq_BoIj1itXfSWsozobIFOeen59SgkMX' 
};
var url = Uri.parse('https://fcm.googleapis.com/v1/projects/appflutter-5db73/messages:send');

var body = {
   "message":{
      "token":"cZAdb9TcR2KpxLOItDBBO-:APA91bG8p1t1LymshmUzYUvLM-VMH9A02FizajFZEfgmgJGmIxVd-DlEBNnr_6LZLyq689sSE_bO64sxd6ybkT3VzelwjUq37C-FUklRjCnkL2VkgypHIWNcGxOHRNhdA0T7Gph-Iizi",
      "notification":{
        "body":message,
        "title":title
      }
   }
};

var req = http.Request('POST', url);
req.headers.addAll(headersList);
req.body = json.encode(body);


var res = await req.send();
final resBody = await res.stream.bytesToString();

if (res.statusCode >= 200 && res.statusCode < 300) {
  print(resBody);
}
else {
  print(res.reasonPhrase);
}
}