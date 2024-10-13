(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var2783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2783-init () var2783)
(declare-fun <init>/875830710 (var2783 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3498 null-String)))
(declare-const var2149 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2149 null-Int)))
(declare-const var2338 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2338 null-String)))
(assert true)
(define-const var287 Int (length/-134980193 var3498)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var2149 var287)) ; Cond: i1 > i0 
(define-const var1521 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1521 var2149)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var1521!1 String)
(declare-const var2149!1 Int)
(define-const var2507 Int (- var2149!1 var287)) ; Statement: i2 = i1 - i0 
(assert true)
(define-const var901 Int (length/-134980193 var2338)) ; Statement: i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i3 != 0 goto i5 = i2 / i3 
(assert (not (not (= var901 0)))) ; Negate: Cond: i3 != 0  
(define-const var2552 var2783 var2783-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2552 "The \u0022filling\u0022 argument can\u0027t be 0 length string.")) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The \"filling\" argument can\'t be 0 length string.") 

(declare-const var2552!1 var2783)
(declare-const var214 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var2783-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3498=r0, var776=null_type, var2149=i1, var2338=r2, var287=i0, var1521=$r1, var2507=i2, var901=i3, var2783=java.lang.IllegalArgumentException, var2552=$r4, var214="The \"filling\" argument can\'t be 0 length string."}
; {r0=var3498, null_type=var776, i1=var2149, r2=var2338, i0=var287, $r1=var1521, i2=var2507, i3=var901, java.lang.IllegalArgumentException=var2783, $r4=var2552, "The \"filling\" argument can\'t be 0 length string."=var214}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i3 != 0 goto i5 = i2 / i3;	$r4 = new java.lang.IllegalArgumentException;	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The \"filling\" argument can\'t be 0 length string.");	throw $r4
;block_num 3