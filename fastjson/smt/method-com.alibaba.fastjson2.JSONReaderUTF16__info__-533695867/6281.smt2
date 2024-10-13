(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort var3885 0)
(declare-sort var2435 0)
(declare-sort var1508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var2435) Int)
(declare-fun cast-from-var1857-to-var2435 (var1857) var2435)
(declare-fun end/-403530942 (var1857) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var2435) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var1857) (Array Int Int))
(declare-fun start/-403530942 (var1857) Int)
(declare-fun length/-403530942 (var1857) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1508_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1857 var1857)
(declare-const null-String String)
(declare-const var192 var1857) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var192 null-var1857)))
(declare-const var436 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var436 null-String)))
(define-const var543 Int 1) ; Statement: i6 = 1 
(define-const var3380 Int 0) ; Statement: i7 = 0 
(define-const var2998 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var3496 Int (offset/1287024874 (cast-from-var1857-to-var2435 var192))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (not (>= var2998 var3496))) ; Negate: Cond: i8 >= $i0  
(define-const var1031 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>] 
(assert true) ; Non Conditional
(define-const var3986 Int (end/-403530942 var192)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (>= var2998 var3986)) ; Cond: i8 >= $i1 
(define-const var3674 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3501 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var1031 1 0)) ((_ int2bv 64) (ite var3674 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var3501 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3572 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3572)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3572!1 String)
(assert (= var3572!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var436 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var944 String (append/672562846 var3572!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var3572!2 String)
(assert (= var3572!2 (str.++ var3572!1 "offset ")))
(define-const var2526 Int (offset/1287024874 (cast-from-var1857-to-var2435 var192))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var3444 String (append/-1001720160 var944 var2526)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var944!1 String)
(assert (str.prefixof var944 var944!1))
(assert true)
(define-const var2734 String (append/672562846 var3444 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var3444!1 String)
(assert (= var3444!1 (str.++ var3444 ", character ")))
(define-const var2917 Int (ch/1287024874 (cast-from-var1857-to-var2435 var192))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var3553 String (append/-1166366385 var2734 var2917)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var2734!1 String)
(assert (str.prefixof var2734 var2734!1))
(assert true)
(define-const var1089 String (append/672562846 var3553 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var3553!1 String)
(assert (= var3553!1 (str.++ var3553 ", line ")))
(assert true)
(define-const var1216 String (append/-1001720160 var1089 var543)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1089!1 String)
(assert (str.prefixof var1089 var1089!1))
(assert true)
(define-const var607 String (append/672562846 var1216 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1216!1 String)
(assert (= var1216!1 (str.++ var1216 ", column ")))
(assert true)
(define-const var1197 String (append/-1001720160 var607 var3380)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var607!1 String)
(assert (str.prefixof var607 var607!1))
(assert true)
(define-const var2387 String (append/672562846 var1197 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var1197!1 String)
(assert (= var1197!1 (str.++ var1197 ", fastjson-version ")))
(assert true)
(define-const var1574 String (append/672562846 var2387 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var2387!1 String)
(assert (= var2387!1 (str.++ var2387 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (<= var543 1)) ; Cond: i6 <= 1 
(define-const var2514 Int 32) ; Statement: $c11 = 32 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1574 var2514)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1574!1 String)
(assert (str.prefixof var1574 var1574!1))
(define-const var1407 (Array Int Int) (chars/-403530942 var192)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var1993 Int (start/-403530942 var192)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var2915 Int (length/-403530942 var192)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var2309 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var1516 Int (var1508_min/-1112089438 var2915 var2309)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var3572!2 var1407 var1993 var1516)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var3572!3 String)
(assert (str.prefixof var3572!2 var3572!3))
(assert true)
(define-const var2201 String (toString/-2075883882 var3572!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1857-to-var2435=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var1508_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1857=com.alibaba.fastjson2.JSONReaderUTF16, var192=r0, var436=r2, var3885=null_type, var543=i6, var3380=i7, var2998=i8, var2435=com.alibaba.fastjson2.JSONReader, var3496=$i0, var1031=$z1, var3986=$i1, var3674=$z2, var3501=$z3, var3572=$r17, var944=$r8, var2526=$i9, var3444=$r9, var2734=$r10, var2917=$c10, var3553=$r11, var1089=$r12, var1216=$r13, var607=$r14, var1197=$r15, var2387=$r16, var1574=$r3, var2514=$c11, var1407=$r4, var1993=$i3, var2915=$i2, var2309=$i14, var1508=java.lang.Math, var1516=$i4, var2201=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var1857, r0=var192, r2=var436, null_type=var3885, i6=var543, i7=var3380, i8=var2998, com.alibaba.fastjson2.JSONReader=var2435, $i0=var3496, $z1=var1031, $i1=var3986, $z2=var3674, $z3=var3501, $r17=var3572, $r8=var944, $i9=var2526, $r9=var3444, $r10=var2734, $c10=var2917, $r11=var3553, $r12=var1089, $r13=var1216, $r14=var607, $r15=var1197, $r16=var2387, $r3=var1574, $c11=var2514, $r4=var1407, $i3=var1993, $i2=var2915, $i14=var2309, java.lang.Math=var1508, $i4=var1516, $r5=var2201}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 1;	goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>];	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 0;	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 32;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10