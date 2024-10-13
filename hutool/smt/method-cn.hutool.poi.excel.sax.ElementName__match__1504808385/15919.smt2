(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2625 0)
(declare-sort var2230 0)
(declare-sort var83 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var83) String)
(declare-fun cast-from-var2625-to-var83 (var2625) var83)
(declare-const null-var2625 var2625)
(declare-const null-String String)
(declare-const var561 var2625) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.ElementName 
(assert (not (= var561 null-var2625)))
(declare-const var3712 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3712 null-String)))
(assert true)
(define-const var3238 String (name/1633728430 (cast-from-var2625-to-var83 var561))) ; Statement: $r2 = virtualinvoke r0.<cn.hutool.poi.excel.sax.ElementName: java.lang.String name()>() 
(assert true)
(define-const var308 Bool (= var3238 var3712)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2625-to-var83=([cn.hutool.poi.excel.sax.ElementName], java.lang.Enum)}
; {var2625=cn.hutool.poi.excel.sax.ElementName, var561=r0, var3712=r1, var2230=null_type, var83=java.lang.Enum, var3238=$r2, var308=$z0}
; {cn.hutool.poi.excel.sax.ElementName=var2625, r0=var561, r1=var3712, null_type=var2230, java.lang.Enum=var83, $r2=var3238, $z0=var308}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.ElementName;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<cn.hutool.poi.excel.sax.ElementName: java.lang.String name()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1