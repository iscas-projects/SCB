(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort var3407 0)
(declare-sort var338 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var338) Int)
(declare-fun cast-from-var3947-to-var338 (var3947) var338)
(declare-fun end/-403530942 (var3947) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var338) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var3947) (Array Int Int))
(declare-fun start/-403530942 (var3947) Int)
(declare-fun length/-403530942 (var3947) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3819_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3947 var3947)
(declare-const null-String String)
(declare-const var3391 var3947) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var3391 null-var3947)))
(declare-const var3892 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3892 null-String)))
(define-const var2901 Int 1) ; Statement: i6 = 1 
(define-const var3037 Int 0) ; Statement: i7 = 0 
(define-const var1008 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var1508 Int (offset/1287024874 (cast-from-var3947-to-var338 var3391))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (not (>= var1008 var1508))) ; Negate: Cond: i8 >= $i0  
(define-const var2461 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>] 
(assert true) ; Non Conditional
(define-const var1118 Int (end/-403530942 var3391)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (not (>= var1008 var1118))) ; Negate: Cond: i8 >= $i1  
(define-const var251 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $z3 = $z1 & $z2] 
(assert true) ; Non Conditional
(define-const var2802 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var2461 1 0)) ((_ int2bv 64) (ite var251 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var2802 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3841 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3841)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3841!1 String)
(assert (= var3841!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3892 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var2578 String (append/672562846 var3841!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var3841!2 String)
(assert (= var3841!2 (str.++ var3841!1 "offset ")))
(define-const var1645 Int (offset/1287024874 (cast-from-var3947-to-var338 var3391))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var2845 String (append/-1001720160 var2578 var1645)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var2578!1 String)
(assert (str.prefixof var2578 var2578!1))
(assert true)
(define-const var1852 String (append/672562846 var2845 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var2845!1 String)
(assert (= var2845!1 (str.++ var2845 ", character ")))
(define-const var1767 Int (ch/1287024874 (cast-from-var3947-to-var338 var3391))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var80 String (append/-1166366385 var1852 var1767)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var1852!1 String)
(assert (str.prefixof var1852 var1852!1))
(assert true)
(define-const var3620 String (append/672562846 var80 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var80!1 String)
(assert (= var80!1 (str.++ var80 ", line ")))
(assert true)
(define-const var2311 String (append/-1001720160 var3620 var2901)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3620!1 String)
(assert (str.prefixof var3620 var3620!1))
(assert true)
(define-const var2241 String (append/672562846 var2311 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2311!1 String)
(assert (= var2311!1 (str.++ var2311 ", column ")))
(assert true)
(define-const var444 String (append/-1001720160 var2241 var3037)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var2241!1 String)
(assert (str.prefixof var2241 var2241!1))
(assert true)
(define-const var894 String (append/672562846 var444 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var444!1 String)
(assert (= var444!1 (str.++ var444 ", fastjson-version ")))
(assert true)
(define-const var1613 String (append/672562846 var894 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (<= var2901 1)) ; Cond: i6 <= 1 
(define-const var3381 Int 32) ; Statement: $c11 = 32 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1613 var3381)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1613!1 String)
(assert (str.prefixof var1613 var1613!1))
(define-const var1018 (Array Int Int) (chars/-403530942 var3391)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var2236 Int (start/-403530942 var3391)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var1970 Int (length/-403530942 var3391)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var1700 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2506 Int (var3819_min/-1112089438 var1970 var1700)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var3841!2 var1018 var2236 var2506)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var3841!3 String)
(assert (str.prefixof var3841!2 var3841!3))
(assert true)
(define-const var3758 String (toString/-2075883882 var3841!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var3947-to-var338=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var3819_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3947=com.alibaba.fastjson2.JSONReaderUTF16, var3391=r0, var3892=r2, var3407=null_type, var2901=i6, var3037=i7, var1008=i8, var338=com.alibaba.fastjson2.JSONReader, var1508=$i0, var2461=$z1, var1118=$i1, var251=$z2, var2802=$z3, var3841=$r17, var2578=$r8, var1645=$i9, var2845=$r9, var1852=$r10, var1767=$c10, var80=$r11, var3620=$r12, var2311=$r13, var2241=$r14, var444=$r15, var894=$r16, var1613=$r3, var3381=$c11, var1018=$r4, var2236=$i3, var1970=$i2, var1700=$i14, var3819=java.lang.Math, var2506=$i4, var3758=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var3947, r0=var3391, r2=var3892, null_type=var3407, i6=var2901, i7=var3037, i8=var1008, com.alibaba.fastjson2.JSONReader=var338, $i0=var1508, $z1=var2461, $i1=var1118, $z2=var251, $z3=var2802, $r17=var3841, $r8=var2578, $i9=var1645, $r9=var2845, $r10=var1852, $c10=var1767, $r11=var80, $r12=var3620, $r13=var2311, $r14=var2241, $r15=var444, $r16=var894, $r3=var1613, $c11=var3381, $r4=var1018, $i3=var2236, $i2=var1970, $i14=var1700, java.lang.Math=var3819, $i4=var2506, $r5=var3758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 1;	goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>];	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 1;	goto [?= $z3 = $z1 & $z2];	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 32;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10