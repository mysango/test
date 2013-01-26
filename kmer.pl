                                             
open(IN, "F:/mitochondrion/1.fasta") or die "can not open";
while(<IN>){
chomp;
next if />/;
$line.=$_;
}
@array=split(//,$line);
@b=@array;#这个纯属于无意义，只是为了让数组b能含有数组array的那么多个元素的位置。
for($i=0;$i<=$#array;$i++){
@b[$i]="@array[$i]@array[$i+1]";
}
$#b=$#array-1;#让数组b去掉多余的元素（通过改变数组b最后一位），几目便+1减几。
print "@b\n";
print "$#b\n";

@sorted =sort @b;
print "@sorted";

$countA=1;
$countB=0;

for($a=0;$a<=$#b;$a++){
  if(@sorted[$a]==@sorted[$a+1]){
    $countA=$countA+1;
  }
  else {
    @c[$countB]="$countA@sorted[$a]"
    $countB=$countB+1;
    }
}
print "@c\n";

print "Press <Enter> to continue...";
<STDIN>