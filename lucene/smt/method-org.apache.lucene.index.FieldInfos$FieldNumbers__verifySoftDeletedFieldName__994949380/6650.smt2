(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2712 0)
(declare-sort var715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun softDeletesFieldName/354673783 (var2712) String)
(declare-const null-var2712 var2712)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1672 var2712) ; Statement: r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers 
(assert (not (= var1672 null-var2712)))
(declare-const var143 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var143 null-String)))
(declare-const var2785 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2785 null-Bool)))
 ; Statement: if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName> 
(assert (= (ite var2785 1 0) 0)) ; Cond: z0 == 0 
(define-const var292 String (softDeletesFieldName/354673783 var1672)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName> 
(assert true)
(define-const var1978 Bool (= var143 var292)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1978 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {softDeletesFieldName/354673783=([org.apache.lucene.index.FieldInfos$FieldNumbers], java.lang.String)}
; {var2712=org.apache.lucene.index.FieldInfos$FieldNumbers, var1672=r1, var143=r0, var715=null_type, var2785=z0, var292=$r2, var1978=$z1}
; {org.apache.lucene.index.FieldInfos$FieldNumbers=var2712, r1=var1672, r0=var143, null_type=var715, z0=var2785, $r2=var292, $z1=var1978}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName>;	$r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto return;	return
;block_num 3