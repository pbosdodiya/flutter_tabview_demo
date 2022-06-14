class CalData {

  // variable 
    double dno;    
    double dres;
    String snumoptr;
    int currActionCount;

  // default value setup
   CalData({
     this.dno=0,
     this.dres=0,
     this.snumoptr="",
     this.currActionCount=0
   });

  // calculate input 
   startCalculation(){
     switch(snumoptr){
        case '+':
        dres+=dno;
        break;
        case '-':
        dres-=dno;
        break;
        case '*':
        dres*=dno;
        break;      
        case '/':
        dres/=dno;
        break; 
        case '%':
        dres/=100;
        break;         
        case 'mod':
        dres%=dno;                                                                        
    }      
   }

  // cleare all 
   calclear(){
    dno = 0;
    dres = 0;
    snumoptr = "";
    currActionCount=0;
   }
}