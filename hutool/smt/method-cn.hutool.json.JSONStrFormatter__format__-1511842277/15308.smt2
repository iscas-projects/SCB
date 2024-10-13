(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1430 0)
(declare-sort var69 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var69 var69)
(declare-const var1934 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1934 null-String)))
(define-const var464 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var464)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var464!1 String)
(assert (= var464!1 ""))
(define-const var3446 var69 null-var69) ; Statement: r7 = null 
(define-const var1826 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var1368 Int (length/-134980193 var1934)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var501 Int 0) ; Statement: i8 = 0 
(define-const var923 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i0 goto $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var923 var1368)) ; Cond: i9 >= i0 
(assert true)
(define-const var1758 String (toString/-2075883882 var464!1)) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1934=r1, var1430=null_type, var464=$r9, var69=java.lang.Character, var3446=r7, var1826=z1, var1368=i0, var501=i8, var923=i9, var1758=$r2}
; {r1=var1934, null_type=var1430, $r9=var464, java.lang.Character=var69, r7=var3446, z1=var1826, i0=var1368, i8=var501, i9=var923, $r2=var1758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	r7 = null;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i8 = 0;	i9 = 0;	if i9 >= i0 goto $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3