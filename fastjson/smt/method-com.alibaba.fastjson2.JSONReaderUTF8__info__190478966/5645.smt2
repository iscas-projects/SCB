(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var862 0)
(declare-sort var1966 0)
(declare-sort var971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var1966) Int)
(declare-fun cast-from-var1055-to-var1966 (var1055) var1966)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var1966) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun bytes/956814203 (var1055) (Array Int Int))
(declare-fun start/956814203 (var1055) Int)
(declare-fun length/956814203 (var1055) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var971_min/-1112089438 (Int Int) Int)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1055 var1055)
(declare-const null-String String)
(declare-const var3393 var1055) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var3393 null-var1055)))
(declare-const var1564 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1564 null-String)))
(define-const var3331 Int 1) ; Statement: i6 = 1 
(define-const var55 Int 0) ; Statement: i7 = 0 
(define-const var1720 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var2020 Int (offset/1287024874 (cast-from-var1055-to-var1966 var3393))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
 ; Statement: if i8 >= $i0 goto $r18 = new java.lang.StringBuilder 
(assert (>= var1720 var2020)) ; Cond: i8 >= $i0 
(define-const var3101 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3101)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3101!1 String)
(assert (= var3101!1 ""))
 ; Statement: if r2 == null goto $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var1564 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var1858 String (append/672562846 var3101!1 "offset ")) ; Statement: $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var3101!2 String)
(assert (= var3101!2 (str.++ var3101!1 "offset ")))
(define-const var680 Int (offset/1287024874 (cast-from-var1055-to-var1966 var3393))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(assert true)
(define-const var740 String (append/-1001720160 var1858 var680)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var1858!1 String)
(assert (str.prefixof var1858 var1858!1))
(assert true)
(define-const var3958 String (append/672562846 var740 ", character ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var740!1 String)
(assert (= var740!1 (str.++ var740 ", character ")))
(define-const var1615 Int (ch/1287024874 (cast-from-var1055-to-var1966 var3393))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch> 
(assert true)
(define-const var3029 String (append/-1166366385 var3958 var1615)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var3958!1 String)
(assert (str.prefixof var3958 var3958!1))
(assert true)
(define-const var3736 String (append/672562846 var3029 ", line ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var3029!1 String)
(assert (= var3029!1 (str.++ var3029 ", line ")))
(assert true)
(define-const var1369 String (append/-1001720160 var3736 var3331)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3736!1 String)
(assert (str.prefixof var3736 var3736!1))
(assert true)
(define-const var1980 String (append/672562846 var1369 ", column ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1369!1 String)
(assert (= var1369!1 (str.++ var1369 ", column ")))
(assert true)
(define-const var788 String (append/-1001720160 var1980 var55)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var1980!1 String)
(assert (str.prefixof var1980 var1980!1))
(assert true)
(define-const var708 String (append/672562846 var788 ", fastjson-version ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var788!1 String)
(assert (= var788!1 (str.++ var788 ", fastjson-version ")))
(assert true)
(define-const var1423 String (append/672562846 var708 "2.0.48")) ; Statement: $r3 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var708!1 String)
(assert (= var708!1 (str.++ var708 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (not (<= var3331 1))) ; Negate: Cond: i6 <= 1  
(define-const var1075 Int 10) ; Statement: $c11 = 10 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1423 var1075)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1423!1 String)
(assert (str.prefixof var1423 var1423!1))
(define-const var1101 String String-init) ; Statement: $r19 = new java.lang.String 
(define-const var979 (Array Int Int) (bytes/956814203 var3393)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var962 Int (start/956814203 var3393)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int start> 
(define-const var3775 Int (length/956814203 var3393)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int length> 
(define-const var2975 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2147 Int (var971_min/-1112089438 var3775 var2975)) ; Statement: $i3 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i14) 
(assert true)
;(assert (<init>/-1380519146 var1101 var979 var962 var2147)) ; Statement: specialinvoke $r19.<java.lang.String: void <init>(byte[],int,int)>($r5, $i2, $i3) 

(declare-const var1101!1 String)
(declare-const var979!1 (Array Int Int))
(declare-const var962!1 Int)
(declare-const var2147!1 Int)
(assert true)
;(assert (append/672562846 var3101!2 var1101!1)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3101!3 String)
(assert (= var3101!3 (str.++ var3101!2 var1101!1)))
(assert true)
(define-const var717 String (toString/-2075883882 var3101!3)) ; Statement: $r6 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1055-to-var1966=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), start/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), length/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), cast-from-Int-to-Int=([int], int), var971_min/-1112089438=([int, int], int), <init>/-1380519146=([java.lang.String, byte[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1055=com.alibaba.fastjson2.JSONReaderUTF8, var3393=r0, var1564=r2, var862=null_type, var3331=i6, var55=i7, var1720=i8, var1966=com.alibaba.fastjson2.JSONReader, var2020=$i0, var3101=$r18, var1858=$r9, var680=$i9, var740=$r10, var3958=$r11, var1615=$c10, var3029=$r12, var3736=$r13, var1369=$r14, var1980=$r15, var788=$r16, var708=$r17, var1423=$r3, var1075=$c11, var1101=$r19, var979=$r5, var962=$i2, var3775=$i1, var2975=$i14, var971=java.lang.Math, var2147=$i3, var717=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var1055, r0=var3393, r2=var1564, null_type=var862, i6=var3331, i7=var55, i8=var1720, com.alibaba.fastjson2.JSONReader=var1966, $i0=var2020, $r18=var3101, $r9=var1858, $i9=var680, $r10=var740, $r11=var3958, $c10=var1615, $r12=var3029, $r13=var3736, $r14=var1369, $r15=var1980, $r16=var788, $r17=var708, $r3=var1423, $c11=var1075, $r19=var1101, $r5=var979, $i2=var962, $i1=var3775, $i14=var2975, java.lang.Math=var971, $i3=var2147, $r6=var717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	if i8 >= $i0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 10;	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r19 = new java.lang.String;	$r5 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int start>;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int length>;	$i14 = (int) 65535;	$i3 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i14);	specialinvoke $r19.<java.lang.String: void <init>(byte[],int,int)>($r5, $i2, $i3);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r6 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6