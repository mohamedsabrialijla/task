<template>
    <div>


       <div class="container-box" style="margin-top:50px;">
        


        <div class="form-group form-md-line-input fixed">
            <div class="box-top">
                <p class="name total" style="font-weight:100">messages</p>
                <p class="date price"><img :src="'./return.png'" width="10px" onclick="getTaskSMS()" /></p>
            </div>


            <input type="text" class="form-control input-search" id="form_control_1" placeholder="Search here..." v-model="keywords" >
        </div>


       <div class="box" v-for="(item,key,index) in items"  >
                <p class="pmonth">{{key}} </p>

          <div class="c" v-for="(item2,key2) in item" >
              <input type="checkbox" :id="'faq-'+ item2.id" class="input">
                    <h5>
                        <label :for="'faq-'+ item2.id">
                           <div class="cont-box">
                                <div class="name"> {{item2.user.name}} </div>
                                <div class="date"> {{item2.date}} </div>
                            </div>

                            <div class="cont-box">
                                <div class="name"> AED {{item2.price}} </div>
                                <div class="date"> click to show </div>
                            </div>


                        </label>
                        
                    </h5>

              <div class="p">
                <p class="message">{{item2.message}}</p>
              </div>
            </div> 

            <div class="box-subtotal">
                <p class="name sub-total">Total of the month</p>
                <p class="date sub-price">AED {{sum['month_' + index]}}</p>
            </div>


        </div>



        <div class="box-total">
            <p class="name total">Total</p>
            <p class="date price">AED {{sum_all}}</p>
        </div>


        </div>

       
    </div>
  </div>

</template>

<script>
    export default {
       name : 'App',
       components:{
       },
       data(){
          return {

            items:[],
            sum:[],
            sum_all:0.00,
            keywords:'',
            
        }
       },
       methods:{

         getTaskSMS(){
            var search = this.keywords
            axios.get('Task/getAllItems?search='+ search).then(response => {
                if(response.data){
                  let data = response.data.items
                   this.items = data;
                    const array = [];
                   for(var i in data) {
                        array.push(data[i]);
                    }
                    // console.log(array);
                    var $r;
                    var sum_all = 0.00;
                    array.forEach((element,key) => { 
                        var sum = 0.00;
                        element.forEach((element2,key2) => { 
                            sum= parseFloat(sum) + parseFloat(element2.price);
                            sum_all+=parseFloat(element2.price); 
                        });
                            this.sum['month_'+ key ] = sum.toFixed(2);
                        });

                    this.sum_all = sum_all.toFixed(2)
                }else{
                     alert('Error happens')
                }
            }).catch((error)=>{
                    alert('Error happens')      
            });
        },

       },

        watch: {
        keywords(after, before) {
            this.getTaskSMS();
        }
    },


       created(){
        this.getTaskSMS()
       },



      
    }
</script>
<style>
@import url("https://fonts.googleapis.com/css?family=Poppins:400,400i,700");
*, *::after, *::before{
  margin: 0;
  padding: 0;
  box-sizing:border-box;
}
body{
  font-family: "Poppins", sans-serif;
}
div.c{
  position: relative;
  margin-top: 6px;
    margin-left: 10px;
}
.input{
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 100%;
  opacity:0;
  visibility: 0;
}

label{
  cursor: pointer;
  position: relative;
  display: grid;
  align-items: center;
}
div.p{
  max-height:0px;
  overflow: hidden;
  transition:max-height 0.5s;
  background-color: #f7f6f6;
  box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.2);
  width: 99%;
}
div.p p {
  padding:11px;
}
.input:checked ~ h5 label::before{
  border-left:15px solid transparent;
  border-top:20px solid white;
  margin-top:12px;
  margin-right:10px;
}
.input:checked ~ h5 ~ div.p{
  max-height:100px;
}
a{
  color:steelblue;
}

.box{
  background: #dfdbdb6e;
  padding-bottom: 10px;
  margin-top: 115px;
}
.container-box{
    width: 80%;
    margin: auto;
}

.contant{
    display:flex;
}
.cont-box{
    margin-top: 5px;
    font-size: 11px;
    color: #000;
    width:98%;
}

.name{
    float: left;
    display: inline-block;
}

.date{
    float: right;
    display: inline-block;
}

.input-search{
    border-top: none;
    border-right: none;
    border-bottom: 2px solid rgb(23 136 203);
    border-left: none;
    border-radius: 0px;
    box-shadow: none !important;
}

.message{
    font-size:10px;
}

.box-total{
    position: fixed;
    width: 80%;
    height: 28px;
    background: #a7e1e7;
    z-index: 9999999999999999999;
    bottom: 0;

}

.price{
    padding: 15px;
    font-weight: 900;
    line-height: 1px;
}

.sub-price{
    padding: 10px;
}


.total{
    padding: 15px;
    font-weight: 900;
    line-height: 1px;
}

.sub-total{
    padding: 10px;
}

.pmonth{
    background-color: var(--bs-body-bg);
    text-align: center;
    height: 26px;
    margin-top: 50px !important;
}

.fixed{
    position: fixed;
    z-index: 99999999999999999;
    top: 54px;
    width: 80%;
}

.box-top{
    background: #57bde5 !important;
    z-index: 99999999999999999;
    width: 80%;
    position: fixed;
    top: 0px;
}

</style>
