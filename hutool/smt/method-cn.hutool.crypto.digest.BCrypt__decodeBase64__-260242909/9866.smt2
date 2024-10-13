(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var126-init () var126)
(declare-fun <init>/875830710 (var126 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3398 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3398 null-String)))
(declare-const var2819 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2819 null-Int)))
(define-const var2798 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2798)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2798!1 String)
(assert (= var2798!1 ""))
(define-const var3748 Int 0) ; Statement: i28 = 0 
(assert true)
(define-const var3250 Int (length/-134980193 var3398)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2783 Int 0) ; Statement: i29 = 0 
 ; Statement: if i1 > 0 goto $i2 = i0 - 1 
(assert (not (> var2819 0))) ; Negate: Cond: i1 > 0  
(define-const var3569 var126 var126-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3569 "Invalid maxolen")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid maxolen") 

(declare-const var3569!1 var126)
(declare-const var3080 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), var126-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3398=r1, var1386=null_type, var2819=i1, var2798=$r4, var3748=i28, var3250=i0, var2783=i29, var126=java.lang.IllegalArgumentException, var3569=$r5, var3080="Invalid maxolen"}
; {r1=var3398, null_type=var1386, i1=var2819, $r4=var2798, i28=var3748, i0=var3250, i29=var2783, java.lang.IllegalArgumentException=var126, $r5=var3569, "Invalid maxolen"=var3080}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i28 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i29 = 0;	if i1 > 0 goto $i2 = i0 - 1;	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid maxolen");	throw $r5
;block_num 2