(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1535 0)
(declare-sort var324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1535 var1535)
(declare-const null-String String)
(declare-const var2489 var1535) ; Statement: r5 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable 
(assert (not (= var2489 null-var1535)))
(declare-const var2112 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2112 null-String)))
(declare-const var2716 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2716 null-String)))
(declare-const var1534 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1534 null-String)))
 ; Statement: if r0 == null goto $r2 = "si" 
(assert (not (= var2112 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1402 Bool (= var2112 "http://schemas.openxmlformats.org/spreadsheetml/2006/main")) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main") 
 ; Statement: if $z3 != 0 goto $r2 = "si" 
(assert (not (not (= (ite var1402 1 0) 0)))) ; Negate: Cond: $z3 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1535=org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable, var2489=r5, var2112=r0, var324=null_type, var2716=r1, var1534=r11, var1402=$z3}
; {org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable=var1535, r5=var2489, r0=var2112, null_type=var324, r1=var2716, r11=var1534, $z3=var1402}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	if r0 == null goto $r2 = "si";	$z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main");	if $z3 != 0 goto $r2 = "si";	return
;block_num 3