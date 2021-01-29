 public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      if(palindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }

  public boolean palindrome(String sWord)
  {
    String word2 = letterOnly(sWord);
    boolean ans = false;
    if(word2.equals(reverse(word2)) == true){
      ans = true;
    }
    else{
      ans = false;
    }
    return ans; 
    
  }

  public String reverse(String str)
  {
      String sNew = new String();
      for(int i = str.length(); i > 0; i--){ 
        sNew = sNew + str.substring(i-1, i);
      }
      return sNew;
  }
  public String noCap(String sWord){
    String str = new String ("");
    str = sWord.toLowerCase();
    return str;
  }

  public String letterOnly(String sWord){
  String ans = new String("");
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true ){
      ans = ans + sWord.charAt(i);
    }
  }
    return noCap(ans);
  }
