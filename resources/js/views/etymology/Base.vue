<template>
  <v-container>
    <span class="title">汉字基础字源</span>
    <br>
    <br>
    <span class="title">人形 ({{this.nRenXin}}个)</span>
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
    </div>
  </v-container>
</template>

<script>
import Zi from '../../components/Zi'
export default {
  components: { Zi },
  data () {
    return {  
      renXin: [
        { text: "人", url: "人" },
        { text: "卩", url: "卩"  },
        { text: "尸", url: "尸"  },
        { text: "勹", url: "勹"  },
        { text: "儿", url: "儿"  },
        { text: "亡", url: "亡"  },
        { text: "欠", url: "欠"  },
        { text: "旡", url: "旡"  },
        { text: "匕", url: "匕"  },
        { text: "方", url: "方"  },
        { text: "頁", url: "頁"  },

        { text: "大", url: "大"  },
        { text: "屰", url: "屰"  },
        { text: "立", url: "立"  },
        { text: "天", url: "天"  },
        { text: "辛", url: "辛"  },
        { text: "夭", url: "夭"  },
        { text: "交", url: "交"  },        
        { text: "文", url: "文"  },

        { text: "子", url: "子"  },
        { text: "巳", url: "巳"  },
        { text: "𠫓", url: "tu"  },
        { text: "老", url: "老"  },

        { text: "女", url: "女"  },
        { text: "母", url: "母"  },
        { text: "身", url: "身"  },

        // { text: "夫", url: "夫" },
        // { text: "妻", url: "妻" },
        
      ],

      shenTi: [
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
        { text: "而", url: "而" },
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

      fangWei: [
        { text: "𠂇", url: "zuo" },
        { text: "又", url: "又" },
        { text: "上", url: "上" },
        { text: "下", url: "下" },
      ],

    }
  },
  computed: {
    nRenXin: function () {
      return this.renXin.length
    },
    nShenTi: function () {
      return this.shenTi.length
    },
    nfangwei: function () {
      return this.fangWei.length
    },
  },
}
</script>