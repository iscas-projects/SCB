(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1229 0)
(declare-sort var921 0)
(declare-sort var3712 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var3712) Int)
(declare-fun cast-from-var1229-to-var3712 (var1229) var3712)
(declare-fun end/-403530942 (var1229) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var3712) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var1229) (Array Int Int))
(declare-fun start/-403530942 (var1229) Int)
(declare-fun length/-403530942 (var1229) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var627_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1229 var1229)
(declare-const null-String String)
(declare-const var3669 var1229) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var3669 null-var1229)))
(declare-const var3872 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3872 null-String)))
(define-const var2863 Int 1) ; Statement: i6 = 1 
(define-const var3839 Int 0) ; Statement: i7 = 0 
(define-const var994 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var2489 Int (offset/1287024874 (cast-from-var1229-to-var3712 var3669))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (>= var994 var2489)) ; Cond: i8 >= $i0 
(define-const var2143 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3926 Int (end/-403530942 var3669)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (not (>= var994 var3926))) ; Negate: Cond: i8 >= $i1  
(define-const var237 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $z3 = $z1 & $z2] 
(assert true) ; Non Conditional
(define-const var369 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var2143 1 0)) ((_ int2bv 64) (ite var237 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var369 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3435 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3435)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3435!1 String)
(assert (= var3435!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3872 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var889 String (append/672562846 var3435!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var3435!2 String)
(assert (= var3435!2 (str.++ var3435!1 "offset ")))
(define-const var2424 Int (offset/1287024874 (cast-from-var1229-to-var3712 var3669))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var1910 String (append/-1001720160 var889 var2424)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var889!1 String)
(assert (str.prefixof var889 var889!1))
(assert true)
(define-const var721 String (append/672562846 var1910 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 ", character ")))
(define-const var3521 Int (ch/1287024874 (cast-from-var1229-to-var3712 var3669))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var3100 String (append/-1166366385 var721 var3521)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var721!1 String)
(assert (str.prefixof var721 var721!1))
(assert true)
(define-const var3320 String (append/672562846 var3100 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var3100!1 String)
(assert (= var3100!1 (str.++ var3100 ", line ")))
(assert true)
(define-const var1339 String (append/-1001720160 var3320 var2863)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3320!1 String)
(assert (str.prefixof var3320 var3320!1))
(assert true)
(define-const var1394 String (append/672562846 var1339 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1339!1 String)
(assert (= var1339!1 (str.++ var1339 ", column ")))
(assert true)
(define-const var1462 String (append/-1001720160 var1394 var3839)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var1394!1 String)
(assert (str.prefixof var1394 var1394!1))
(assert true)
(define-const var670 String (append/672562846 var1462 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var1462!1 String)
(assert (= var1462!1 (str.++ var1462 ", fastjson-version ")))
(assert true)
(define-const var3032 String (append/672562846 var670 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (<= var2863 1)) ; Cond: i6 <= 1 
(define-const var515 Int 32) ; Statement: $c11 = 32 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3032 var515)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var3032!1 String)
(assert (str.prefixof var3032 var3032!1))
(define-const var3571 (Array Int Int) (chars/-403530942 var3669)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var2251 Int (start/-403530942 var3669)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var1595 Int (length/-403530942 var3669)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var3971 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2046 Int (var627_min/-1112089438 var1595 var3971)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var3435!2 var3571 var2251 var2046)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var3435!3 String)
(assert (str.prefixof var3435!2 var3435!3))
(assert true)
(define-const var308 String (toString/-2075883882 var3435!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1229-to-var3712=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var627_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1229=com.alibaba.fastjson2.JSONReaderUTF16, var3669=r0, var3872=r2, var921=null_type, var2863=i6, var3839=i7, var994=i8, var3712=com.alibaba.fastjson2.JSONReader, var2489=$i0, var2143=$z1, var3926=$i1, var237=$z2, var369=$z3, var3435=$r17, var889=$r8, var2424=$i9, var1910=$r9, var721=$r10, var3521=$c10, var3100=$r11, var3320=$r12, var1339=$r13, var1394=$r14, var1462=$r15, var670=$r16, var3032=$r3, var515=$c11, var3571=$r4, var2251=$i3, var1595=$i2, var3971=$i14, var627=java.lang.Math, var2046=$i4, var308=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var1229, r0=var3669, r2=var3872, null_type=var921, i6=var2863, i7=var3839, i8=var994, com.alibaba.fastjson2.JSONReader=var3712, $i0=var2489, $z1=var2143, $i1=var3926, $z2=var237, $z3=var369, $r17=var3435, $r8=var889, $i9=var2424, $r9=var1910, $r10=var721, $c10=var3521, $r11=var3100, $r12=var3320, $r13=var1339, $r14=var1394, $r15=var1462, $r16=var670, $r3=var3032, $c11=var515, $r4=var3571, $i3=var2251, $i2=var1595, $i14=var3971, java.lang.Math=var627, $i4=var2046, $r5=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 0;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 1;	goto [?= $z3 = $z1 & $z2];	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 32;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10