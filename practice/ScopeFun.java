class ScopeFun{
    public static void main(String args[]){
        Start S =  new Start();
        System.out.println(S.getMyString());
    }   
}


class Start {

    String myString = "Hello";

    public String getMyString(){
        return myString;
    }

}

