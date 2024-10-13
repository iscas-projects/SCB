(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1484 0)
(declare-sort var3874 0)
(declare-sort var1944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1484 var1484)
(declare-const null-String String)
(declare-const null-var1944 var1944)
(declare-const var1533 var1484) ; Statement: r6 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable 
(assert (not (= var1533 null-var1484)))
(declare-const var3240 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3240 null-String)))
(declare-const var785 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var785 null-String)))
(declare-const var3197 String) ; Statement: r17 := @parameter2: java.lang.String 
(assert (not (= var3197 null-String)))
(declare-const var3937 var1944) ; Statement: r12 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3937 null-var1944)))
 ; Statement: if r0 == null goto $r2 = "sst" 
(assert (not (= var3240 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2741 Bool (= var3240 "http://schemas.openxmlformats.org/spreadsheetml/2006/main")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main") 
 ; Statement: if $z5 != 0 goto $r2 = "sst" 
(assert (not (not (= (ite var2741 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1484=org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable, var1533=r6, var3240=r0, var3874=null_type, var785=r1, var3197=r17, var1944=org.xml.sax.Attributes, var3937=r12, var2741=$z5}
; {org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable=var1484, r6=var1533, r0=var3240, null_type=var3874, r1=var785, r17=var3197, org.xml.sax.Attributes=var1944, r12=var3937, $z5=var2741}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r17 := @parameter2: java.lang.String;	r12 := @parameter3: org.xml.sax.Attributes;	if r0 == null goto $r2 = "sst";	$z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main");	if $z5 != 0 goto $r2 = "sst";	return
;block_num 3