(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2664 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentFieldName/354673783 (var2664) String)
(declare-const null-var2664 var2664)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1943 var2664) ; Statement: r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers 
(assert (not (= var1943 null-var2664)))
(declare-const var3583 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3583 null-String)))
(declare-const var3260 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3260 null-Bool)))
 ; Statement: if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName> 
(assert (= (ite var3260 1 0) 0)) ; Cond: z0 == 0 
(define-const var720 String (parentFieldName/354673783 var1943)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName> 
(assert true)
(define-const var842 Bool (= var3583 var720)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var842 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parentFieldName/354673783=([org.apache.lucene.index.FieldInfos$FieldNumbers], java.lang.String)}
; {var2664=org.apache.lucene.index.FieldInfos$FieldNumbers, var1943=r1, var3583=r0, var3309=null_type, var3260=z0, var720=$r2, var842=$z1}
; {org.apache.lucene.index.FieldInfos$FieldNumbers=var2664, r1=var1943, r0=var3583, null_type=var3309, z0=var3260, $r2=var720, $z1=var842}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName>;	$r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto return;	return
;block_num 3