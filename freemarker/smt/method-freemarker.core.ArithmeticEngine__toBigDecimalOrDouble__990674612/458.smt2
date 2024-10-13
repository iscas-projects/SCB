(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var17 0)
(declare-sort var3606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3606-init () var3606)
(declare-fun <init>/-1588472495 (var3606 String) void)
(declare-const null-String String)
(declare-const var2975 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2975 null-String)))
(assert true)
(define-const var620 Int (length/-134980193 var2975)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto $r5 = new java.math.BigDecimal 
(assert (<= var620 2)) ; Cond: $i0 <= 2 
(define-const var604 var3606 var3606-init) ; Statement: $r5 = new java.math.BigDecimal 
(assert true)
;(assert (<init>/-1588472495 var604 var2975)) ; Statement: specialinvoke $r5.<java.math.BigDecimal: void <init>(java.lang.String)>(r0) 

(declare-const var604!1 var3606)
(declare-const var2975!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3606-init=([], java.math.BigDecimal), <init>/-1588472495=([java.math.BigDecimal, java.lang.String], void)}
; {var2975=r0, var17=null_type, var620=$i0, var3606=java.math.BigDecimal, var604=$r5}
; {r0=var2975, null_type=var17, $i0=var620, java.math.BigDecimal=var3606, $r5=var604}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 2 goto $r5 = new java.math.BigDecimal;	$r5 = new java.math.BigDecimal;	specialinvoke $r5.<java.math.BigDecimal: void <init>(java.lang.String)>(r0);	return $r5
;block_num 2