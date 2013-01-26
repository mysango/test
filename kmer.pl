                                             
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

##这里你确定改变最后一个数组的下标后，数组的最后一个元素也被去掉？


@sorted =sort @b;
print "@sorted";

    $countB=0;

for($a=0;$a<=$#b;$a++){
  if(@sorted[$a]==@sorted[$a+1]){
    $countA=$countA+1; 
  }
  else {
    @c[$countB]="$countA@sorted[$a]"
    $countB=$countB+1;
    $countA=1;   ##$countA在统计下一个的时候要初始化

    }

print "@c\n";

print "Press <Enter> to continue...";
<STDIN>
}

##统计数组里面元素的个数可以用一种简单的方法:http://bytes.com/topic/perl/answers/617195-counting-duplicate-array-elements

