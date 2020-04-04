<template>
  <v-container>
    <span class="title">汉字基础字源({{this.totalNum}})个</span>
    <br>
    <br>
    <div v-for="category in categories" :key="category.text">
      <span class="title">{{category.text}}({{category.content.length}}个)</span>
      <div class="d-flex flex-wrap">
        <Zi v-for="item in category.content" :key="item.text" :name="item.text" :nameKey="item.url">
        </Zi>
      </div>
    </div>
    <!-- <span class="title">人形 ({{this.nRenXin}}个)</span>
    <div class="d-flex flex-wrap">
      <Zi v-for="item in renXin" :key="item.text" :name="item.text" :nameKey="item.url">
      </Zi>
    </div>
    <br>
    <span class="title">身体 ({{this.nShenTi}}个)</span>
    <div class="d-flex flex-wrap">
      <Zi v-for="item in shenTi" :key="item.text" :name="item.text" :nameKey="item.url">
      </Zi>
    </div>
    <span class="title">方位 ({{this.nfangwei}}个)</span>
    <div class="d-flex flex-wrap">
      <Zi v-for="item in fangWei" :key="item.text" :name="item.text" :nameKey="item.url">
      </Zi>
    </div> -->
  </v-container>
</template>

<script>
import Zi from '../../components/Zi'
export default {
  components: { Zi },
  data () {
    return {  
      humanForm: [
        { text: "人", url: "人" },
        { text: "卩", url: "卩" },
        { text: "尸", url: "尸" },
        { text: "勹", url: "勹" },
        { text: "儿", url: "儿" },
        { text: "亡", url: "亡" },
        { text: "欠", url: "欠" },
        { text: "旡", url: "旡" },
        { text: "匕", url: "匕" },
        { text: "方", url: "方" },
        { text: "頁", url: "頁" },

        { text: "大", url: "大" },
        { text: "屰", url: "屰" },
        { text: "立", url: "立" },
        { text: "天", url: "天" },
        { text: "辛", url: "辛" },
        { text: "夭", url: "夭" },
        { text: "交", url: "交" },        
        { text: "文", url: "文" },
        { text: "而", url: "而" },

        { text: "子", url: "子" },
        { text: "巳", url: "巳" },
        { text: "𠫓", url: "tu" },
        { text: "老", url: "老" },

        { text: "女", url: "女" },
        { text: "母", url: "母" },
        { text: "身", url: "身" },

        { text: "夫", url: "夫" },
        { text: "妻", url: "妻" },
        
      ],

      body: [
        { text: "肉", url: "肉" },
        { text: "心", url: "心" },
        { text: "囟", url: "囟" },
        { text: "甶", url: "甶" },
        { text: "自", url: "自" },
        
        { text: "目", url: "目" },
        { text: "耳", url: "耳" },
        { text: "口", url: "口" },
        { text: "牙", url: "牙" },
        { text: "齒", url: "齒" },
        { text: "舌", url: "舌" },
        { text: "乃", url: "乃" },
        
        // { text: "厶", url: "厶" },        
        // { text: "吅", url: "吅" },
        // { text: "甘", url: "甘" },
        { text: "手", url: "手" },
        { text: "爪", url: "爪" },
        { text: "丑", url: "丑" },

        { text: "寸", url: "寸" },
        { text: "尺", url: "尺" },
        
        { text: "攵", url: "攵" },
        { text: "殳", url: "殳" },
        { text: "聿", url: "聿" },
        { text: "力", url: "力" },         
        
        // { text: "九", url: "九" },       

        { text: "止", url: "止" },
        { text: "夂", url: "夂" },
        { text: "之", url: "之" },
        { text: "正", url: "正" },
        { text: "足", url: "足" },
        { text: "疋", url: "疋" },
        { text: "癶", url: "癶" },
        { text: "舛", url: "舛" },
        { text: "行", url: "行" },
        { text: "辵", url: "辵" }, 
      ],

      direction: [
        { text: "𠂇", url: "zuo" },
        { text: "又", url: "又" },
        { text: "上", url: "上" },
        { text: "下", url: "下" },
      ],

      plant: [
        { text: "屮", url: "屮" },
        { text: "不", url: "不" },
        { text: "屯", url: "屯" },
        { text: "艸", url: "艸" },
        { text: "卉", url: "卉" },
        { text: "丰", url: "丰" },
        { text: "生", url: "生" },
        { text: "朩", url: "朩" },
        { text: "竹", url: "竹" },
        { text: "耑", url: "耑" },
        { text: "木", url: "木" },
        { text: "本", url: "本" },
        { text: "末", url: "末" },
        { text: "丕", url: "丕" },
        { text: "朱", url: "朱" },
        { text: "未", url: "未" },
        { text: "果", url: "果" },        
        { text: "咅", url: "咅" },
        { text: "耒", url: "耒" },
        { text: "才", url: "才" },
        { text: "干", url: "干" },
        { text: "于", url: "于" },
        { text: "爿", url: "爿" },
        { text: "片", url: "片" },
        { text: "束", url: "束" },
        { text: "柬", url: "柬" },
        { text: "禾", url: "禾" },
        { text: "來", url: "來" },
        { text: "朿", url: "朿" },
        { text: "帚", url: "帚" },
        { text: "糸", url: "糸" },
        { text: "玄", url: "玄" },
        { text: "幺", url: "幺" },
        { text: "玆", url: "玆" },
        { text: "絲", url: "絲" },
        { text: "己", url: "己" },
        { text: "弗", url: "弗" },
        { text: "夷", url: "夷" },
      ],

      animals: [
        { text: "虫", url: "虫" },
        { text: "它", url: "它" },
        { text: "也", url: "也" },
        { text: "龍", url: "龍" },
        { text: "乙", url: "乙" },
        { text: "蟲", url: "蟲" },
        { text: "風", url: "風" },
        { text: "魚", url: "魚" },
        { text: "竹", url: "竹" },
        { text: "冉", url: "冉" },
        { text: "龜", url: "龜" },
        { text: "黽", url: "黽" },
        { text: "隹", url: "隹" },
        { text: "鳥", url: "鳥" },
        { text: "羽", url: "羽" },
        { text: "非", url: "非" },
        { text: "升", url: "升" },
        { text: "卂", url: "卂" },       
        { text: "羊", url: "羊" },
        { text: "牛", url: "牛" },
        { text: "虎", url: "虎" },
        { text: "豕", url: "豕" },
        { text: "犬", url: "犬" },
        { text: "豸", url: "豸" },
        { text: "馬", url: "馬" },
        { text: "象", url: "象" },
        { text: "能", url: "能" },
        { text: "兔", url: "兔" },
        { text: "鹿", url: "鹿" },
        { text: "鼠", url: "鼠" },
      ],

      building: [
        { text: "亠", url: "亠" },
        { text: "高", url: "高" },
        { text: "京", url: "京" },
        { text: "㐭", url: "㐭" },
        { text: "向", url: "向" },
        { text: "宀", url: "宀" },
        { text: "广", url: "广" },
        { text: "穴", url: "穴" },
        { text: "囪", url: "囪" },
        { text: "凡", url: "凡" },
        { text: "井", url: "井" },
        { text: "囗", url: "囗" },
        { text: "用", url: "用" },
        { text: "㕣", url: "㕣" },
        { text: "門", url: "門" },
        { text: "戶", url: "戶" },
        { text: "冖", url: "冖" },        
        { text: "冂", url: "冂" },        
        { text: "内", url: "内" },
        { text: "入", url: "入" },
        { text: "丙", url: "丙" },
        { text: "网", url: "网" },
        { text: "凵", url: "凵" },
      ],

      utensils: [        
        { text: "皿", url: "皿" },
        { text: "皀", url: "皀" },
        { text: "豆", url: "豆" },
        { text: "臼", url: "臼" },
        { text: "缶", url: "缶" },
        { text: "壴", url: "壴" },
        { text: "畐", url: "畐" },
        { text: "酉", url: "酉" },
        { text: "龜", url: "龜" },
        { text: "亯", url: "亯" },
        { text: "鼎", url: "鼎" },
        { text: "鬲", url: "鬲" },
        { text: "由", url: "由" },
        { text: "其", url: "其" },
        { text: "南", url: "南" },
        { text: "亼", url: "亼" },
        { text: "西", url: "西" },
        { text: "鹵", url: "鹵" },
        { text: "匚", url: "匚" },        
        { text: "勺", url: "勺" },
      ],
      nature: [
        { text: "雨", url: "雨" },
      ],
   }
 },
  computed: {
    categories: function() {
      return [
        { text:"人形", content:this.humanForm },
        { text:"身体", content:this.body },
        { text:"方位", content:this.direction },
        { text:"天地万象", content:this.nature }, 
        { text:"植物", content:this.plant },
        { text:"动物", content:this.animals },
        { text:"建筑", content:this.building },
        { text:"器皿", content:this.utensils },              
      ]
   },
    totalNum: function() {
      return this.humanForm.length + this.body.length + this.direction.length +
      this.plant.length + this.animals.length + this.nature.length + 
      this.building.length + this.utensils.length
   },
 },
}
</script>