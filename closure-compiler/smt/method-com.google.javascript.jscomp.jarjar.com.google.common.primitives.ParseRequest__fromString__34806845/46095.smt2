(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1033 0)
(declare-sort var1023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1023-init () var1023)
(declare-fun <init>/-1788180247 (var1023 String) void)
(declare-const null-String String)
(declare-const var1128 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1128 null-String)))
(assert true)
(define-const var2328 Int (length/-134980193 var1128)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var2328 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3203 var1023 var1023-init) ; Statement: $r4 = new java.lang.NumberFormatException 
(assert true)
;(assert (<init>/-1788180247 var3203 "empty string")) ; Statement: specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>("empty string") 

(declare-const var3203!1 var1023)
(declare-const var655 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1023-init=([], java.lang.NumberFormatException), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var1128=r0, var1033=null_type, var2328=$i0, var1023=java.lang.NumberFormatException, var3203=$r4, var655="empty string"}
; {r0=var1128, null_type=var1033, $i0=var2328, java.lang.NumberFormatException=var1023, $r4=var3203, "empty string"=var655}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r4 = new java.lang.NumberFormatException;	specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>("empty string");	throw $r4
;block_num 2