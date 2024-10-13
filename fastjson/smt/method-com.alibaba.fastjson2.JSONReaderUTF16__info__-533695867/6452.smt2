(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2172 0)
(declare-sort var2551 0)
(declare-sort var2309 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var2309) Int)
(declare-fun cast-from-var2172-to-var2309 (var2172) var2309)
(declare-fun end/-403530942 (var2172) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var2309) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun chars/-403530942 (var2172) (Array Int Int))
(declare-fun start/-403530942 (var2172) Int)
(declare-fun length/-403530942 (var2172) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2620_min/-1112089438 (Int Int) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2172 var2172)
(declare-const null-String String)
(declare-const var1851 var2172) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var1851 null-var2172)))
(declare-const var737 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var737 null-String)))
(define-const var315 Int 1) ; Statement: i6 = 1 
(define-const var1713 Int 0) ; Statement: i7 = 0 
(define-const var2983 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var2910 Int (offset/1287024874 (cast-from-var2172-to-var2309 var1851))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
 ; Statement: if i8 >= $i0 goto $z1 = 0 
(assert (>= var2983 var2910)) ; Cond: i8 >= $i0 
(define-const var905 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3714 Int (end/-403530942 var1851)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if i8 >= $i1 goto $z2 = 0 
(assert (>= var2983 var3714)) ; Cond: i8 >= $i1 
(define-const var1094 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3185 Bool (ite (= 1 (bv2nat (bvand ((_ int2bv 64) (ite var905 1 0)) ((_ int2bv 64) (ite var1094 1 0))))) true false)) ; Statement: $z3 = $z1 & $z2 
 ; Statement: if $z3 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var3185 1 0) 0)) ; Cond: $z3 == 0 
(define-const var107 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var107)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var107!1 String)
(assert (= var107!1 ""))
 ; Statement: if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(assert (= var737 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var1710 String (append/672562846 var107!1 "offset ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var107!2 String)
(assert (= var107!2 (str.++ var107!1 "offset ")))
(define-const var2721 Int (offset/1287024874 (cast-from-var2172-to-var2309 var1851))) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert true)
(define-const var1579 String (append/-1001720160 var1710 var2721)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var1710!1 String)
(assert (str.prefixof var1710 var1710!1))
(assert true)
(define-const var711 String (append/672562846 var1579 ", character ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ") 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 ", character ")))
(define-const var743 Int (ch/1287024874 (cast-from-var2172-to-var2309 var1851))) ; Statement: $c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> 
(assert true)
(define-const var1932 String (append/-1166366385 var711 var743)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10) 
(declare-const var711!1 String)
(assert (str.prefixof var711 var711!1))
(assert true)
(define-const var3569 String (append/672562846 var1932 ", line ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ") 
(declare-const var1932!1 String)
(assert (= var1932!1 (str.++ var1932 ", line ")))
(assert true)
(define-const var2289 String (append/-1001720160 var3569 var315)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3569!1 String)
(assert (str.prefixof var3569 var3569!1))
(assert true)
(define-const var3677 String (append/672562846 var2289 ", column ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2289!1 String)
(assert (= var2289!1 (str.++ var2289 ", column ")))
(assert true)
(define-const var3826 String (append/-1001720160 var3677 var1713)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var3677!1 String)
(assert (str.prefixof var3677 var3677!1))
(assert true)
(define-const var2877 String (append/672562846 var3826 ", fastjson-version ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ") 
(declare-const var3826!1 String)
(assert (= var3826!1 (str.++ var3826 ", fastjson-version ")))
(assert true)
(define-const var1983 String (append/672562846 var2877 "2.0.48")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48") 
(declare-const var2877!1 String)
(assert (= var2877!1 (str.++ var2877 "2.0.48")))
 ; Statement: if i6 <= 1 goto $c11 = 32 
(assert (not (<= var315 1))) ; Negate: Cond: i6 <= 1  
(define-const var322 Int 10) ; Statement: $c11 = 10 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1983 var322)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1983!1 String)
(assert (str.prefixof var1983 var1983!1))
(define-const var1175 (Array Int Int) (chars/-403530942 var1851)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var36 Int (start/-403530942 var1851)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> 
(define-const var3705 Int (length/-403530942 var1851)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(define-const var3075 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var835 Int (var2620_min/-1112089438 var3705 var3075)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14) 
(assert true)
;(assert (append/-1748486345 var107!2 var1175 var36 var835)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4) 
(declare-const var107!3 String)
(assert (str.prefixof var107!2 var107!3))
(assert true)
(define-const var2699 String (toString/-2075883882 var107!3)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2172-to-var2309=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), cast-from-Int-to-Int=([int], int), var2620_min/-1112089438=([int, int], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2172=com.alibaba.fastjson2.JSONReaderUTF16, var1851=r0, var737=r2, var2551=null_type, var315=i6, var1713=i7, var2983=i8, var2309=com.alibaba.fastjson2.JSONReader, var2910=$i0, var905=$z1, var3714=$i1, var1094=$z2, var3185=$z3, var107=$r17, var1710=$r8, var2721=$i9, var1579=$r9, var711=$r10, var743=$c10, var1932=$r11, var3569=$r12, var2289=$r13, var3677=$r14, var3826=$r15, var2877=$r16, var1983=$r3, var322=$c11, var1175=$r4, var36=$i3, var3705=$i2, var3075=$i14, var2620=java.lang.Math, var835=$i4, var2699=$r5}
; {com.alibaba.fastjson2.JSONReaderUTF16=var2172, r0=var1851, r2=var737, null_type=var2551, i6=var315, i7=var1713, i8=var2983, com.alibaba.fastjson2.JSONReader=var2309, $i0=var2910, $z1=var905, $i1=var3714, $z2=var1094, $z3=var3185, $r17=var107, $r8=var1710, $i9=var2721, $r9=var1579, $r10=var711, $c10=var743, $r11=var1932, $r12=var3569, $r13=var2289, $r14=var3677, $r15=var3826, $r16=var2877, $r3=var1983, $c11=var322, $r4=var1175, $i3=var36, $i2=var3705, $i14=var3075, java.lang.Math=var2620, $i4=var835, $r5=var2699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r2 := @parameter0: java.lang.String;	i6 = 1;	i7 = 0;	i8 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	if i8 >= $i0 goto $z1 = 0;	$z1 = 0;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if i8 >= $i1 goto $z2 = 0;	$z2 = 0;	$z3 = $z1 & $z2;	if $z3 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	if r2 == null goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", character ");	$c10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", line ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fastjson-version ");	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("2.0.48");	if i6 <= 1 goto $c11 = 32;	$c11 = 10;	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	$i14 = (int) 65535;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i14);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r4, $i3, $i4);	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10