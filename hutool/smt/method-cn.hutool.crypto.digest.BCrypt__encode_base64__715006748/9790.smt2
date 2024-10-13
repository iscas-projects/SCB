(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3555-init () var3555)
(declare-fun <init>/875830710 (var3555 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1605 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var1605 null-__Array__Int__Int__)))
(declare-const var850 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var850 null-Int)))
(define-const var2310 Int 0) ; Statement: i24 = 0 
(define-const var936 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var936)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var936!1 String)
(assert (= var936!1 ""))
 ; Statement: if i0 <= 0 goto $r11 = new java.lang.IllegalArgumentException 
(assert (<= var850 0)) ; Cond: i0 <= 0 
(define-const var948 var3555 var3555-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var948 "Invalid len")) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid len") 

(declare-const var948!1 var3555)
(declare-const var3212 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3555-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1605=r2, var850=i0, var2310=i24, var936=$r10, var3555=java.lang.IllegalArgumentException, var948=$r11, var3212="Invalid len"}
; {r2=var1605, i0=var850, i24=var2310, $r10=var936, java.lang.IllegalArgumentException=var3555, $r11=var948, "Invalid len"=var3212}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r2 := @parameter0: byte[];	i0 := @parameter1: int;	i24 = 0;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	if i0 <= 0 goto $r11 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.IllegalArgumentException;	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid len");	throw $r11
;block_num 2