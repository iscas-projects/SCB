(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-var2178-1 ((Array Int var2178)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var2178__ (Array Int var2178))
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1305 (Array Int var2178)) ; Statement: r1 := @parameter0: org.apache.commons.lang3.time.DurationFormatUtils$Token[] 
(assert (not (= var1305 null-__Array__Int__var2178__)))
(declare-const var580 Int) ; Statement: l16 := @parameter1: long 
(assert (not (= var580 null-Int)))
(declare-const var3744 Int) ; Statement: l14 := @parameter2: long 
(assert (not (= var3744 null-Int)))
(declare-const var2787 Int) ; Statement: l12 := @parameter3: long 
(assert (not (= var2787 null-Int)))
(declare-const var2779 Int) ; Statement: l10 := @parameter4: long 
(assert (not (= var2779 null-Int)))
(declare-const var136 Int) ; Statement: l8 := @parameter5: long 
(assert (not (= var136 null-Int)))
(declare-const var2204 Int) ; Statement: l6 := @parameter6: long 
(assert (not (= var2204 null-Int)))
(declare-const var1351 Int) ; Statement: l4 := @parameter7: long 
(assert (not (= var1351 null-Int)))
(declare-const var1647 Bool) ; Statement: z8 := @parameter8: boolean 
(assert (not (= var1647 null-Bool)))
(define-const var529 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var529)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var529!1 String)
(assert (= var529!1 ""))
(define-const var935 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3389 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var3610 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i23 = (int) -1 
(define-const var1072 Int var3610) ; Statement: i18 = $i23 
(define-const var3924 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var1665 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i25 = (int) -1 
(define-const var1886 Int var1665) ; Statement: i19 = $i25 
(define-const var3575 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var96 Bool (ite (= 1 0) true false)) ; Statement: z30 = 0 
(define-const var981 Bool (ite (= 1 0) true false)) ; Statement: z29 = 0 
(define-const var644 Bool (ite (= 1 0) true false)) ; Statement: z28 = 0 
(define-const var1981 Bool (ite (= 1 0) true false)) ; Statement: z27 = 0 
(define-const var2439 Bool (ite (= 1 0) true false)) ; Statement: z26 = 0 
(define-const var1075 Bool (ite (= 1 0) true false)) ; Statement: z25 = 0 
(define-const var1556 Bool (ite (= 1 0) true false)) ; Statement: z24 = 0 
(define-const var513 Bool (ite (= 1 0) true false)) ; Statement: z23 = 0 
(define-const var3855 Bool (ite (= 1 0) true false)) ; Statement: z22 = 0 
(define-const var1235 Int (getLength-Arr-var2178-1 var1305)) ; Statement: i0 = lengthof r1 
(define-const var936 Int 0) ; Statement: i20 = 0 
(assert true) ; Non Conditional
 ; Statement: if i20 >= i0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var936 var1235)) ; Cond: i20 >= i0 
(assert true)
(define-const var2032 String (toString/-2075883882 var529!1)) ; Statement: $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), getLength-Arr-var2178-1=([org.apache.commons.lang3.time.DurationFormatUtils$Token[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2178=org.apache.commons.lang3.time.DurationFormatUtils$Token, var1305=r1, var580=l16, var3744=l14, var2787=l12, var2779=l10, var136=l8, var2204=l6, var1351=l4, var1647=z8, var529=$r14, var935=z9, var3389=z10, var3610=$i23, var1072=i18, var3924=z11, var1665=$i25, var1886=i19, var3575=z12, var96=z30, var981=z29, var644=z28, var1981=z27, var2439=z26, var1075=z25, var1556=z24, var513=z23, var3855=z22, var1235=i0, var936=i20, var2032=$r2}
; {org.apache.commons.lang3.time.DurationFormatUtils$Token=var2178, r1=var1305, l16=var580, l14=var3744, l12=var2787, l10=var2779, l8=var136, l6=var2204, l4=var1351, z8=var1647, $r14=var529, z9=var935, z10=var3389, $i23=var3610, i18=var1072, z11=var3924, $i25=var1665, i19=var1886, z12=var3575, z30=var96, z29=var981, z28=var644, z27=var1981, z26=var2439, z25=var1075, z24=var1556, z23=var513, z22=var3855, i0=var1235, i20=var936, $r2=var2032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.commons.lang3.time.DurationFormatUtils$Token[];	l16 := @parameter1: long;	l14 := @parameter2: long;	l12 := @parameter3: long;	l10 := @parameter4: long;	l8 := @parameter5: long;	l6 := @parameter6: long;	l4 := @parameter7: long;	z8 := @parameter8: boolean;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	z9 = 0;	z10 = 0;	$i23 = (int) -1;	i18 = $i23;	z11 = 0;	$i25 = (int) -1;	i19 = $i25;	z12 = 0;	z30 = 0;	z29 = 0;	z28 = 0;	z27 = 0;	z26 = 0;	z25 = 0;	z24 = 0;	z23 = 0;	z22 = 0;	i0 = lengthof r1;	i20 = 0;	if i20 >= i0 goto $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3