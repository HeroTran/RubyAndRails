/*
 * play audio for example( text to speak) JA
 * author :manh quoc
 * since 15/05/2014
 */
function playExampleJa(text) {
    var audio = new Audio();
    audio.src = 'http://translate.google.com/translate_tts?ie=utf-8&tl=ja&q=%E4%B8%AD%E5%B3%B6%E3%81%95%E3%82%93%E3%81%AF%E8%8B%B1%E8%AA%9E%E3%81%AB%E5%8A%A0%E3%81%88%E3%81%A6%E3%80%81%E3%83%89%E3%82%A4%E3%83%84%E8%AA%9E%E3%82%82%E6%B5%81%E6%9A%A2%E3%81%AB%E8%A9%B1%E3%81%9B%E3%82%8B%E3%80%82';
    audio.play();
}
/*
 * play audio for example( text to speak) VI
 * author :manh quoc
 * since 15/05/2014
 */
function playExampleVi(text) {
    var audio = new Audio();
    audio.src = 'http://www.vnspeak.com/speakit.php?txt=' + text;
    audio.play();
}
/*
 * play audio for vocabulary VI
 * author :manh quoc
 * since 15/05/2014
 */
function playSound(link_sound) {
    var audio = new Audio();
    audio.src = link_sound;
    audio.play();
}
/*
 * ajax get vocabulary by id VI
 * author :manh quoc
 * since 16/05/2014
 */
function get_word_vi(id){
    $.ajax({
         url: '/get_word_vi.json',
         contentType: "application/json; charset=utf-8",
         data:{id:id},
         dataType:'json',
         success: function(data) {
             length = data.length;
             var text="";
             var word = data[0];
             text +='<div class="vocabulary">'+word.word_vietnamese+'</div>';
             if(word.sound_word && word.sound_word!=""){
                text +='<a href="javascript:void(0)" onclick="playSound(\'/vietnamese/'+word.sound_word+'\');">';
                text +='<img src="/images/icon_sound.ico" class="img_sound">';
                text +='</a>';
             }
             text +='<br>';
             text+='<ul>';
             var translates = data[1];
             var ts_length= translates.length;
             for (var i = 0; i<ts_length; i++){
                 text+='<li>'+translates[i]+'</li>';
             }
             text+='</ul>';
             $("#word").html(text);
             set_tbdy_ex(data[2]);
         }
    });
}
/*
 * ajax get vocabulary by id JA
 * author :manh quoc
 * since 16/05/2014
 */
function get_word_ja(id){
    $.ajax({
        url: '/get_word_ja.json',
        contentType: "application/json; charset=utf-8",
        data:{id:id},
        dataType:'json',
        success: function(data) {
            length = data.length;
            var text="";
            var word = data[0];
            text +='<div class="vocabulary">'+word.word_japanese+'</div>';
            if(word.sound_word && word.sound_word!=""){
               text +='<a href="javascript:void(0)" onclick="playSound(\'/vietnamese/'+word.sound_word+'\');">';
               text +='<img src="/images/icon_sound.ico" class="img_sound">';
               text +='</a>';
            }
            text +='<br>';
            text+='<ul>';
            var translates = data[1];
            var ts_length= translates.length;
            for (var i = 0; i<ts_length; i++){
                text+='<li>'+translates[i]+'</li>';
            }
            text+='</ul>';
            $("#word").html(text);
            set_tbdy_ex(data[2]);
        }
        });
}
/*
 * set data for table example
 * author :manh quoc
 * since 16/05/2014
 */
function set_tbdy_ex(ex){
    var length = ex.length;
    var text = '';
    if (length>0){
        for(var i = 0; i<length; i++){
            text+='<tr>';
            text+='<td>'+ex[i].ex_japanese+'<a onclick="playExampleJa(\''+ex[i].ex_japanese+'\');" href="javascript:void(0)"><img class="img_sound" src="/images/sound-on.png" ></a></td>';
            text+='<td>'+ex[i].ex_vietnamese+'<a onclick="playExampleVi(\''+ex[i].ex_vietnamese+'\');" href="javascript:void(0)"><img class="img_sound" src="/images/sound-on.png" ></a></td>';
            text+='</tr>';
        }
    }
    $("#body_example").html(text);
}