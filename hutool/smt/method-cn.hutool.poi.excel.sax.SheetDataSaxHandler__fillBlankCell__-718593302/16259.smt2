(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1768 0)
(declare-sort var1697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1768 var1768)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1452 var1768) ; Statement: r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler 
(assert (not (= var1452 null-var1768)))
(declare-const var3740 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3740 null-String)))
(declare-const var2961 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2961 null-String)))
(declare-const var2965 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2965 null-Bool)))
(assert true)
(define-const var3060 Bool (= var2961 var3740)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if 0 != $z0 goto return 
(assert (not (= 0 (ite var3060 1 0)))) ; Cond: 0 != $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1768=cn.hutool.poi.excel.sax.SheetDataSaxHandler, var1452=r2, var3740=r1, var1697=null_type, var2961=r0, var2965=z1, var3060=$z0}
; {cn.hutool.poi.excel.sax.SheetDataSaxHandler=var1768, r2=var1452, r1=var3740, null_type=var1697, r0=var2961, z1=var2965, $z0=var3060}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if 0 != $z0 goto return;	return
;block_num 2