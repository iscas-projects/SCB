(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2999 0)
(declare-sort var2534 0)
(declare-sort var3868 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var3868) Int)
(declare-fun cast-from-var2999-to-var3868 (var2999) var3868)
(declare-fun end/-403530942 (var2999) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var3868) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var2999) (Array Int Int))
(declare-fun start/-403530942 (var2999) Int)
(declare-fun length/-403530942 (var2999) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2952_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2999 var2999)
(declare-const null-String String)
(declare-const var24 var2999) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var24 null-var2999)))
(declare-const var3221 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3221 null-String)))
(define-const var1023 Int 1) ; Statement: i6 = 1 
(define-const var2439 Int 0) ; Statement: i7 = 0 
(define-const var447 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var2368 Int (offset/1287024874 (cast-from-var2999-to-var3868 var24))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (>= var447 var2368)) ; Cond: i8 >= $i0 
(define-const var31 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3026 Int (end/-403530942 var24)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (>= var447 var3026)) ; Cond: i8 >= $i1 
(define-const var1586 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var28 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var31 1 0)) ((_ int2bv 64) (ite var1586 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var28 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3763 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3763)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3763!1 String)
(assert (= var3763!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var3221 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var151 String (append/672562846 var3763!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var3763!2 String)
(assert (= var3763!2 (str.++ var3763!1 "offset ")))
(define-const var2646 Int (offset/1287024874 (cast-from-var2999-to-var3868 var24))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var3891 String (append/-1001720160 var151 var2646)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var151!1 String)
(assert (str.prefixof var151 var151!1))
(assert true)
(define-const var2667 String (append/672562846 var3891 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var3891!1 String)
(assert (= var3891!1 (str.++ var3891 ", character ")))
(define-const var349 Int (ch/1287024874 (cast-from-var2999-to-var3868 var24))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var3623 String (append/-1166366385 var2667 var349)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var2667!1 String)
(assert (str.prefixof var2667 var2667!1))
(assert true)
(define-const var1318 String (append/672562846 var3623 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var3623!1 String)
(assert (= var3623!1 (str.++ var3623 ", line ")))
(assert true)
(define-const var3023 String (append/-1001720160 var1318 var1023)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1318!1 String)
(assert (str.prefixof var1318 var1318!1))
(assert true)
(define-const var3864 String (append/672562846 var3023 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3023!1 String)
(assert (= var3023!1 (str.++ var3023 ", column ")))
(assert true)
(define-const var1558 String (append/-1001720160 var3864 var2439)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var3864!1 String)
(assert (str.prefixof var3864 var3864!1))
(assert true)
(define-const var328 String (append/672562846 var1558 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var1558!1 String)
(assert (= var1558!1 (str.++ var1558 ", fastjson-version ")))
(assert true)
(define-const var2429 String (append/672562846 var328 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var328!1 String)
(assert (= var328!1 (str.++ var328 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (<= var1023 1)) ; Cond: i6 <= 1 
(define-const var3898 Int 32) ; Statement: $c11 = 32 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2429 var3898)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var2429!1 String)
(assert (str.prefixof var2429 var2429!1))
(define-const var3719 (Array Int Int) (chars/-403530942 var24)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var3545 Int (start/-403530942 var24)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var3139 Int (length/-403530942 var24)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var3781 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var3277 Int (var2952_min/-1112089438 var3139 var3781)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var3763!2 var3719 var3545 var3277)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var3763!3 String)
(assert (str.prefixof var3763!2 var3763!3))
(assert true)
(define-const var188 String (toString/-2075883882 var3763!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2999-to-var3868=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var2952_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2999=com.alibaba.fastjson2.JSONReaderUTF16, var24=r0, var3221=r2, var2534=null_type, var1023=i6, var2439=i7, var447=i8, var3868=com.alibaba.fastjson2.JSONReader, var2368=$i0, var31=$z1, var3026=$i1, var1586=$z2, var28=$z3, var3763=$r17, var151=$r8, var2646=$i9, var3891=$r9, var2667=$r10, var349=$c10, var3623=$r11, var1318=$r12, var3023=$r13, var3864=$r14, var1558=$r15, var328=$r16, var2429=$r3, var3898=$c11, var3719=$r4, var3545=$i3, var3139=$i2, var3781=$i14, var2952=java.lang.Math, var3277=$i4, var188=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var2999, r0=var24, r2=var3221, null_type=var2534, i6=var1023, i7=var2439, i8=var447, com.alibaba.fastjson2.JSONReader=var3868, $i0=var2368, $z1=var31, $i1=var3026, $z2=var1586, $z3=var28, $r17=var3763, $r8=var151, $i9=var2646, $r9=var3891, $r10=var2667, $c10=var349, $r11=var3623, $r12=var1318, $r13=var3023, $r14=var3864, $r15=var1558, $r16=var328, $r3=var2429, $c11=var3898, $r4=var3719, $i3=var3545, $i2=var3139, $i14=var3781, java.lang.Math=var2952, $i4=var3277, $r5=var188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 0;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 0;	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 32;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10