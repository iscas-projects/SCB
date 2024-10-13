(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3437 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3437 null-Int)))
(define-const var1952 Int var3437) ; Statement: i15 = i0 
(define-const var3559 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (byte)[6] 
 ; Statement: if i0 > 127 goto i16 = 2 
(assert (not (> var3437 127))) ; Negate: Cond: i0 > 127  
(define-const var27 Int (cast-from-Int-to-Int var3437)) ; Statement: $b14 = (byte) i0 
(declare-const var3559!1 (Array Int Int))
(assert (not (= var3559!1 null-__Array__Int__Int__)))
(assert (= (select var3559!1 0) var27)) ; Statement: r0[0] = $b14 
(define-const var2565 Int 1) ; Statement: i16 = 1 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3301 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3301)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3301!1 String)
(assert (= var3301!1 ""))
(define-const var2240 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= i16 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2240 var2565)) ; Cond: i19 >= i16 
(assert true)
(define-const var2877 String (toString/-2075883882 var3301!1)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], byte[]), cast-from-Int-to-Int=([int], byte), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3437=i0, var1952=i15, var3559=r0, var27=$b14, var2565=i16, var3301=$r5, var2240=i19, var2877=$r2}
; {i0=var3437, i15=var1952, r0=var3559, $b14=var27, i16=var2565, $r5=var3301, i19=var2240, $r2=var2877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i15 = i0;	r0 = newarray (byte)[6];	if i0 > 127 goto i16 = 2;	$b14 = (byte) i0;	r0[0] = $b14;	i16 = 1;	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i19 = 0;	if i19 >= i16 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5