(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mValue/125459114 (var892) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var892 var892)
(declare-const var3394 var892) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDatePrinter$StringLiteral 
(assert (not (= var3394 null-var892)))
(define-const var2302 String (mValue/125459114 var3394)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.FastDatePrinter$StringLiteral: java.lang.String mValue> 
(assert true)
(define-const var2988 Int (length/-134980193 var2302)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {mValue/125459114=([cn.hutool.core.date.format.FastDatePrinter$StringLiteral], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var892=cn.hutool.core.date.format.FastDatePrinter$StringLiteral, var3394=r0, var2302=$r1, var2988=$i0}
; {cn.hutool.core.date.format.FastDatePrinter$StringLiteral=var892, r0=var3394, $r1=var2302, $i0=var2988}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDatePrinter$StringLiteral;	$r1 = r0.<cn.hutool.core.date.format.FastDatePrinter$StringLiteral: java.lang.String mValue>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1