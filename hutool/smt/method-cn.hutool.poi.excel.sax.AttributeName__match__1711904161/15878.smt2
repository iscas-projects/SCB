(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var564 0)
(declare-sort var3929 0)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var430) String)
(declare-fun cast-from-var564-to-var430 (var564) var430)
(declare-const null-var564 var564)
(declare-const null-String String)
(declare-const var43 var564) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.AttributeName 
(assert (not (= var43 null-var564)))
(declare-const var2690 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2690 null-String)))
(assert true)
(define-const var973 String (name/1633728430 (cast-from-var564-to-var430 var43))) ; Statement: $r2 = virtualinvoke r0.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String name()>() 
(assert true)
(define-const var3783 Bool (= var973 var2690)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var564-to-var430=([cn.hutool.poi.excel.sax.AttributeName], java.lang.Enum)}
; {var564=cn.hutool.poi.excel.sax.AttributeName, var43=r0, var2690=r1, var3929=null_type, var430=java.lang.Enum, var973=$r2, var3783=$z0}
; {cn.hutool.poi.excel.sax.AttributeName=var564, r0=var43, r1=var2690, null_type=var3929, java.lang.Enum=var430, $r2=var973, $z0=var3783}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.AttributeName;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<cn.hutool.poi.excel.sax.AttributeName: java.lang.String name()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1