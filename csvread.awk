#Set delimiter as comma. Load the first line into a fields array, and iterate through each subsequent lines appending each word with the associated field array element. 
BEGIN{
          FS=","
}
NR==1{
         split($0,fields,",");
}
{
         if (NR > 1){
         for(i = 1; i <=NF; i++) {
             printf("%-20s %-30s \n", fields[i], $i);
             }
         }
         print "\n"
}
END{
         print "DONE"
}

