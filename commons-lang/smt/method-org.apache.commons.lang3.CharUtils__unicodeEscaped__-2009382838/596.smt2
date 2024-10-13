(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3274-HEX_DIGITS (Array Int Int))
(declare-const var537 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var537 null-Int)))
(define-const var3839 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3839)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3839!1 String)
(assert (= var3839!1 ""))
(assert true)
(define-const var3000 String (append/672562846 var3839!1 "\u005cu")) ; Statement: $r2 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var3839!2 String)
(assert (= var3839!2 (str.++ var3839!1 "\u005cu")))
(define-const var1902 (Array Int Int) var3274-HEX_DIGITS) ; Statement: $r1 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS> 
(define-const var14 Int (cast-from-Int-to-Int var537)) ; Statement: $i12 = (int) c0 
(define-const var3410 Int (div var14 (to_int (^ 2 12)))) ; Statement: $i1 = $i12 >> 12 
(define-const var2482 Int (bv2nat (bvand ((_ int2bv 64) var3410) ((_ int2bv 64) 15)))) ; Statement: $i2 = $i1 & 15 
(define-const var6 Int (select var1902 var2482)) ; Statement: $c3 = $r1[$i2] 
(assert true)
(define-const var1582 String (append/-1166366385 var3000 var6)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var3000!1 String)
(assert (str.prefixof var3000 var3000!1))
(define-const var3213 (Array Int Int) var3274-HEX_DIGITS) ; Statement: $r3 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS> 
(define-const var3717 Int (cast-from-Int-to-Int var537)) ; Statement: $i13 = (int) c0 
(define-const var3124 Int (div var3717 (to_int (^ 2 8)))) ; Statement: $i4 = $i13 >> 8 
(define-const var2349 Int (bv2nat (bvand ((_ int2bv 64) var3124) ((_ int2bv 64) 15)))) ; Statement: $i5 = $i4 & 15 
(define-const var1919 Int (select var3213 var2349)) ; Statement: $c6 = $r3[$i5] 
(assert true)
(define-const var2887 String (append/-1166366385 var1582 var1919)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var1582!1 String)
(assert (str.prefixof var1582 var1582!1))
(define-const var3315 (Array Int Int) var3274-HEX_DIGITS) ; Statement: $r5 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS> 
(define-const var2714 Int (cast-from-Int-to-Int var537)) ; Statement: $i14 = (int) c0 
(define-const var3478 Int (div var2714 (to_int (^ 2 4)))) ; Statement: $i7 = $i14 >> 4 
(define-const var1643 Int (bv2nat (bvand ((_ int2bv 64) var3478) ((_ int2bv 64) 15)))) ; Statement: $i8 = $i7 & 15 
(define-const var3038 Int (select var3315 var1643)) ; Statement: $c9 = $r5[$i8] 
(assert true)
(define-const var3096 String (append/-1166366385 var2887 var3038)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9) 
(declare-const var2887!1 String)
(assert (str.prefixof var2887 var2887!1))
(define-const var3445 (Array Int Int) var3274-HEX_DIGITS) ; Statement: $r7 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS> 
(define-const var927 Int (bv2nat (bvand ((_ int2bv 64) var537) ((_ int2bv 64) 15)))) ; Statement: $c10 = c0 & 15 
(define-const var518 Int (cast-from-Int-to-Int var927)) ; Statement: $i15 = (int) $c10 
(define-const var1429 Int (select var3445 var518)) ; Statement: $c11 = $r7[$i15] 
(assert true)
(define-const var866 String (append/-1166366385 var3096 var1429)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var3096!1 String)
(assert (str.prefixof var3096 var3096!1))
(assert true)
(define-const var3345 String (toString/-2075883882 var866)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var537=c0, var3839=$r11, var3000=$r2, var3274=org.apache.commons.lang3.CharUtils, var1902=$r1, var14=$i12, var3410=$i1, var2482=$i2, var6=$c3, var1582=$r4, var3213=$r3, var3717=$i13, var3124=$i4, var2349=$i5, var1919=$c6, var2887=$r6, var3315=$r5, var2714=$i14, var3478=$i7, var1643=$i8, var3038=$c9, var3096=$r8, var3445=$r7, var927=$c10, var518=$i15, var1429=$c11, var866=$r9, var3345=$r10}
; {c0=var537, $r11=var3839, $r2=var3000, org.apache.commons.lang3.CharUtils=var3274, $r1=var1902, $i12=var14, $i1=var3410, $i2=var2482, $c3=var6, $r4=var1582, $r3=var3213, $i13=var3717, $i4=var3124, $i5=var2349, $c6=var1919, $r6=var2887, $r5=var3315, $i14=var2714, $i7=var3478, $i8=var1643, $c9=var3038, $r8=var3096, $r7=var3445, $c10=var927, $i15=var518, $c11=var1429, $r9=var866, $r10=var3345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$r1 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS>;	$i12 = (int) c0;	$i1 = $i12 >> 12;	$i2 = $i1 & 15;	$c3 = $r1[$i2];	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r3 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS>;	$i13 = (int) c0;	$i4 = $i13 >> 8;	$i5 = $i4 & 15;	$c6 = $r3[$i5];	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$r5 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS>;	$i14 = (int) c0;	$i7 = $i14 >> 4;	$i8 = $i7 & 15;	$c9 = $r5[$i8];	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9);	$r7 = <org.apache.commons.lang3.CharUtils: char[] HEX_DIGITS>;	$c10 = c0 & 15;	$i15 = (int) $c10;	$c11 = $r7[$i15];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1