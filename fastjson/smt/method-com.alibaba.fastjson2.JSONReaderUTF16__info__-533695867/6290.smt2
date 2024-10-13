(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var781 0)
(declare-sort var2791 0)
(declare-sort var3848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var2791) Int)
(declare-fun cast-from-var937-to-var2791 (var937) var2791)
(declare-fun end/-403530942 (var937) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var2791) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var937) (Array Int Int))
(declare-fun start/-403530942 (var937) Int)
(declare-fun length/-403530942 (var937) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3848_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var937 var937)
(declare-const null-String String)
(declare-const var1508 var937) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var1508 null-var937)))
(declare-const var3239 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3239 null-String)))
(define-const var3763 Int 1) ; Statement: i6 = 1 
(define-const var1527 Int 0) ; Statement: i7 = 0 
(define-const var1908 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var3622 Int (offset/1287024874 (cast-from-var937-to-var2791 var1508))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (>= var1908 var3622)) ; Cond: i8 >= $i0 
(define-const var1173 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var821 Int (end/-403530942 var1508)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (not (>= var1908 var821))) ; Negate: Cond: i8 >= $i1  
(define-const var535 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $z3 = $z1 & $z2] 
(assert true) ; Non Conditional
(define-const var2429 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var1173 1 0)) ((_ int2bv 64) (ite var535 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var2429 1 0) 0)) ; Cond: $z3 == 0 
(define-const var473 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var473)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var473!1 String)
(assert (= var473!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3239 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var2050 String (append/672562846 var473!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var473!2 String)
(assert (= var473!2 (str.++ var473!1 "offset ")))
(define-const var2858 Int (offset/1287024874 (cast-from-var937-to-var2791 var1508))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var374 String (append/-1001720160 var2050 var2858)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var2050!1 String)
(assert (str.prefixof var2050 var2050!1))
(assert true)
(define-const var3829 String (append/672562846 var374 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var374!1 String)
(assert (= var374!1 (str.++ var374 ", character ")))
(define-const var3585 Int (ch/1287024874 (cast-from-var937-to-var2791 var1508))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var705 String (append/-1166366385 var3829 var3585)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var3829!1 String)
(assert (str.prefixof var3829 var3829!1))
(assert true)
(define-const var659 String (append/672562846 var705 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var705!1 String)
(assert (= var705!1 (str.++ var705 ", line ")))
(assert true)
(define-const var1300 String (append/-1001720160 var659 var3763)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var659!1 String)
(assert (str.prefixof var659 var659!1))
(assert true)
(define-const var6 String (append/672562846 var1300 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1300!1 String)
(assert (= var1300!1 (str.++ var1300 ", column ")))
(assert true)
(define-const var2331 String (append/-1001720160 var6 var1527)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var6!1 String)
(assert (str.prefixof var6 var6!1))
(assert true)
(define-const var2856 String (append/672562846 var2331 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var2331!1 String)
(assert (= var2331!1 (str.++ var2331 ", fastjson-version ")))
(assert true)
(define-const var1937 String (append/672562846 var2856 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var2856!1 String)
(assert (= var2856!1 (str.++ var2856 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (not (<= var3763 1))) ; Negate: Cond: i6 <= 1  
(define-const var1737 Int 10) ; Statement: $c11 = 10 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1937 var1737)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1937!1 String)
(assert (str.prefixof var1937 var1937!1))
(define-const var266 (Array Int Int) (chars/-403530942 var1508)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var3934 Int (start/-403530942 var1508)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var3673 Int (length/-403530942 var1508)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var3689 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var777 Int (var3848_min/-1112089438 var3673 var3689)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var473!2 var266 var3934 var777)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var473!3 String)
(assert (str.prefixof var473!2 var473!3))
(assert true)
(define-const var3417 String (toString/-2075883882 var473!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var937-to-var2791=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var3848_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var937=com.alibaba.fastjson2.JSONReaderUTF16, var1508=r0, var3239=r2, var781=null_type, var3763=i6, var1527=i7, var1908=i8, var2791=com.alibaba.fastjson2.JSONReader, var3622=$i0, var1173=$z1, var821=$i1, var535=$z2, var2429=$z3, var473=$r17, var2050=$r8, var2858=$i9, var374=$r9, var3829=$r10, var3585=$c10, var705=$r11, var659=$r12, var1300=$r13, var6=$r14, var2331=$r15, var2856=$r16, var1937=$r3, var1737=$c11, var266=$r4, var3934=$i3, var3673=$i2, var3689=$i14, var3848=java.lang.Math, var777=$i4, var3417=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var937, r0=var1508, r2=var3239, null_type=var781, i6=var3763, i7=var1527, i8=var1908, com.alibaba.fastjson2.JSONReader=var2791, $i0=var3622, $z1=var1173, $i1=var821, $z2=var535, $z3=var2429, $r17=var473, $r8=var2050, $i9=var2858, $r9=var374, $r10=var3829, $c10=var3585, $r11=var705, $r12=var659, $r13=var1300, $r14=var6, $r15=var2331, $r16=var2856, $r3=var1937, $c11=var1737, $r4=var266, $i3=var3934, $i2=var3673, $i14=var3689, java.lang.Math=var3848, $i4=var777, $r5=var3417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 0;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 1;	goto [?= $z3 = $z1 & $z2];	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 10;	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10