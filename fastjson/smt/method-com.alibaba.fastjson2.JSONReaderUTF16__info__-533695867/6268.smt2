(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var3955 0)
(declare-sort var3469 0)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var3469) Int)
(declare-fun cast-from-var1942-to-var3469 (var1942) var3469)
(declare-fun end/-403530942 (var1942) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var3469) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var1942) (Array Int Int))
(declare-fun start/-403530942 (var1942) Int)
(declare-fun length/-403530942 (var1942) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var845_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1942 var1942)
(declare-const null-String String)
(declare-const var2573 var1942) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var2573 null-var1942)))
(declare-const var3317 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3317 null-String)))
(define-const var2077 Int 1) ; Statement: i6 = 1 
(define-const var525 Int 0) ; Statement: i7 = 0 
(define-const var1868 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var765 Int (offset/1287024874 (cast-from-var1942-to-var3469 var2573))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (not (>= var1868 var765))) ; Negate: Cond: i8 >= $i0  
(define-const var1560 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>] 
(assert true) ; Non Conditional
(define-const var3030 Int (end/-403530942 var2573)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (>= var1868 var3030)) ; Cond: i8 >= $i1 
(define-const var2911 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var137 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var1560 1 0)) ((_ int2bv 64) (ite var2911 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var137 1 0) 0)) ; Cond: $z3 == 0 
(define-const var623 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var623)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var623!1 String)
(assert (= var623!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3317 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var2357 String (append/672562846 var623!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var623!2 String)
(assert (= var623!2 (str.++ var623!1 "offset ")))
(define-const var164 Int (offset/1287024874 (cast-from-var1942-to-var3469 var2573))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var980 String (append/-1001720160 var2357 var164)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var2357!1 String)
(assert (str.prefixof var2357 var2357!1))
(assert true)
(define-const var990 String (append/672562846 var980 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var980!1 String)
(assert (= var980!1 (str.++ var980 ", character ")))
(define-const var2814 Int (ch/1287024874 (cast-from-var1942-to-var3469 var2573))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var2988 String (append/-1166366385 var990 var2814)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var990!1 String)
(assert (str.prefixof var990 var990!1))
(assert true)
(define-const var1187 String (append/672562846 var2988 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var2988!1 String)
(assert (= var2988!1 (str.++ var2988 ", line ")))
(assert true)
(define-const var645 String (append/-1001720160 var1187 var2077)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1187!1 String)
(assert (str.prefixof var1187 var1187!1))
(assert true)
(define-const var1329 String (append/672562846 var645 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var645!1 String)
(assert (= var645!1 (str.++ var645 ", column ")))
(assert true)
(define-const var89 String (append/-1001720160 var1329 var525)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var1329!1 String)
(assert (str.prefixof var1329 var1329!1))
(assert true)
(define-const var1894 String (append/672562846 var89 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var89!1 String)
(assert (= var89!1 (str.++ var89 ", fastjson-version ")))
(assert true)
(define-const var3273 String (append/672562846 var1894 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var1894!1 String)
(assert (= var1894!1 (str.++ var1894 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (not (<= var2077 1))) ; Negate: Cond: i6 <= 1  
(define-const var1859 Int 10) ; Statement: $c11 = 10 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3273 var1859)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var3273!1 String)
(assert (str.prefixof var3273 var3273!1))
(define-const var3382 (Array Int Int) (chars/-403530942 var2573)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var1262 Int (start/-403530942 var2573)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var1132 Int (length/-403530942 var2573)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var3790 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2332 Int (var845_min/-1112089438 var1132 var3790)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var623!2 var3382 var1262 var2332)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var623!3 String)
(assert (str.prefixof var623!2 var623!3))
(assert true)
(define-const var2307 String (toString/-2075883882 var623!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1942-to-var3469=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var845_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1942=com.alibaba.fastjson2.JSONReaderUTF16, var2573=r0, var3317=r2, var3955=null_type, var2077=i6, var525=i7, var1868=i8, var3469=com.alibaba.fastjson2.JSONReader, var765=$i0, var1560=$z1, var3030=$i1, var2911=$z2, var137=$z3, var623=$r17, var2357=$r8, var164=$i9, var980=$r9, var990=$r10, var2814=$c10, var2988=$r11, var1187=$r12, var645=$r13, var1329=$r14, var89=$r15, var1894=$r16, var3273=$r3, var1859=$c11, var3382=$r4, var1262=$i3, var1132=$i2, var3790=$i14, var845=java.lang.Math, var2332=$i4, var2307=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var1942, r0=var2573, r2=var3317, null_type=var3955, i6=var2077, i7=var525, i8=var1868, com.alibaba.fastjson2.JSONReader=var3469, $i0=var765, $z1=var1560, $i1=var3030, $z2=var2911, $z3=var137, $r17=var623, $r8=var2357, $i9=var164, $r9=var980, $r10=var990, $c10=var2814, $r11=var2988, $r12=var1187, $r13=var645, $r14=var1329, $r15=var89, $r16=var1894, $r3=var3273, $c11=var1859, $r4=var3382, $i3=var1262, $i2=var1132, $i14=var3790, java.lang.Math=var845, $i4=var2332, $r5=var2307}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 1;	goto [?= $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>];	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 0;	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 10;	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10