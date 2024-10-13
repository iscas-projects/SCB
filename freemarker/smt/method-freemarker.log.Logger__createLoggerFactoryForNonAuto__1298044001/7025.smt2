(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var3441 0)
(declare-sort var3520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2542_getAvailabilityCheckClassName/2067386617 (Int) String)
(declare-fun var3520-init () var3520)
(declare-fun <init>/1260119911 (var3520) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1734 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1734 null-Int)))
(define-const var781 String (var2542_getAvailabilityCheckClassName/2067386617 var1734)) ; Statement: r0 = staticinvoke <freemarker.log.Logger: java.lang.String getAvailabilityCheckClassName(int)>(i0) 
 ; Statement: if r0 == null goto (branch) 
(assert (= var781 null-String)) ; Cond: r0 == null 
 ; Statement: if i0 != 1 goto (branch) 
(assert (not (not (= var1734 1)))) ; Negate: Cond: i0 != 1  
(define-const var2617 var3520 var3520-init) ; Statement: $r3 = new freemarker.log._JULLoggerFactory 
(assert true)
;(assert (<init>/1260119911 var2617)) ; Statement: specialinvoke $r3.<freemarker.log._JULLoggerFactory: void <init>()>() 

(declare-const var2617!1 var3520)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2542_getAvailabilityCheckClassName/2067386617=([int], java.lang.String), var3520-init=([], freemarker.log._JULLoggerFactory), <init>/1260119911=([freemarker.log._JULLoggerFactory], void)}
; {var1734=i0, var2542=freemarker.log.Logger, var781=r0, var3441=null_type, var3520=freemarker.log._JULLoggerFactory, var2617=$r3}
; {i0=var1734, freemarker.log.Logger=var2542, r0=var781, null_type=var3441, freemarker.log._JULLoggerFactory=var3520, $r3=var2617}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 = staticinvoke <freemarker.log.Logger: java.lang.String getAvailabilityCheckClassName(int)>(i0);	if r0 == null goto (branch);	if i0 != 1 goto (branch);	$r3 = new freemarker.log._JULLoggerFactory;	specialinvoke $r3.<freemarker.log._JULLoggerFactory: void <init>()>();	return $r3
;block_num 3