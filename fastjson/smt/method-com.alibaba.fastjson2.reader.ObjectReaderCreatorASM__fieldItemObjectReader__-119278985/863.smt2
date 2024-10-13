(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var3634 0)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1347_stringSize/-1233370881 (Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1347_getChars/-942248452 (Int Int (Array Int Int)) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var1199-fieldItemObjectReader (Array Int String))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1093 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1093 null-Int)))
(define-const var2835 (Array Int String) var1199-fieldItemObjectReader) ; Statement: $r0 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String[] fieldItemObjectReader> 
(define-const var3166 String (select var2835 var1093)) ; Statement: r5 = $r0[i0] 
 ; Statement: if r5 == null goto r1 = "itemReader" 
(assert (= var3166 null-String)) ; Cond: r5 == null 
(define-const var3680 String "itemReader") ; Statement: r1 = "itemReader" 
(define-const var1813 String "itemReader") ; Statement: r8 = "itemReader" 
(define-const var2447 String "itemReader") ; Statement: r7 = "itemReader" 
(define-const var1568 String "itemReader") ; Statement: r6 = "itemReader" 
(define-const var3188 Int (var1347_stringSize/-1233370881 var1093)) ; Statement: i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0) 
(assert true)
(define-const var537 Int (length/-134980193 var1568)) ; Statement: $i2 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var3261 Int (+ var537 var3188)) ; Statement: $i3 = $i2 + i1 
(define-const var1122 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[$i3] 
(assert true)
(define-const var1658 Int (length/-134980193 var2447)) ; Statement: $i4 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert true)
;(assert (getChars/1306883398 var1813 0 var1658 var1122 0)) ; Statement: virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r2, 0) 

(declare-const var1813!1 String)
(declare-const var3431 Int)
(declare-const var1658!1 Int)
(declare-const var1122!1 (Array Int Int))
(declare-const var3431!1 Int)
(define-const var550 Int (getLength-Arr-Int-1 var1122!1)) ; Statement: $i5 = lengthof r2 
;(assert (var1347_getChars/-942248452 var1093 var550 var1122!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r2) 

(declare-const var1093!1 Int)
(declare-const var550!1 Int)
(declare-const var1122!2 (Array Int Int))
(define-const var2807 (Array Int String) var1199-fieldItemObjectReader) ; Statement: $r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String[] fieldItemObjectReader> 
(define-const var851 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var851 var1122!2)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var851!1 String)
(declare-const var1122!3 (Array Int Int))
(declare-const var2807!1 (Array Int String))
(assert (not (= var2807!1 null-__Array__Int__String__)))
(assert (= (select var2807!1 var1093!1) var851!1)) ; Statement: $r4[i0] = $r3 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1347_stringSize/-1233370881=([int], int), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), getLength-Arr-Int-1=([char[]], int), var1347_getChars/-942248452=([int, int, char[]], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1093=i0, var1199=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, var2835=$r0, var3166=r5, var3634=null_type, var3680=r1, var1813=r8, var2447=r7, var1568=r6, var1347=com.alibaba.fastjson2.util.IOUtils, var3188=i1, var537=$i2, var3261=$i3, var1122=r2, var1658=$i4, var3431=0, var550=$i5, var2807=$r4, var851=$r3}
; {i0=var1093, com.alibaba.fastjson2.reader.ObjectReaderCreatorASM=var1199, $r0=var2835, r5=var3166, null_type=var3634, r1=var3680, r8=var1813, r7=var2447, r6=var1568, com.alibaba.fastjson2.util.IOUtils=var1347, i1=var3188, $i2=var537, $i3=var3261, r2=var1122, $i4=var1658, 0=var3431, $i5=var550, $r4=var2807, $r3=var851}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: void getChars(int,int,char[],int)>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	$r0 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String[] fieldItemObjectReader>;	r5 = $r0[i0];	if r5 == null goto r1 = "itemReader";	r1 = "itemReader";	r8 = "itemReader";	r7 = "itemReader";	r6 = "itemReader";	i1 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>(i0);	$i2 = virtualinvoke r6.<java.lang.String: int length()>();	$i3 = $i2 + i1;	r2 = newarray (char)[$i3];	$i4 = virtualinvoke r7.<java.lang.String: int length()>();	virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(0, $i4, r2, 0);	$i5 = lengthof r2;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,char[])>(i0, $i5, r2);	$r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String[] fieldItemObjectReader>;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2);	$r4[i0] = $r3;	return $r3
;block_num 2