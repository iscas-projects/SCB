(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2475 0)
(declare-sort var498 0)
(declare-sort var320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun softDeletesFieldName/354673783 (var2475) String)
(declare-fun var320-init () var320)
(declare-fun <init>/875830710 (var320 String) void)
(declare-const null-var2475 var2475)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2343 var2475) ; Statement: r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers 
(assert (not (= var2343 null-var2475)))
(declare-const var3854 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3854 null-String)))
(declare-const var3150 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3150 null-Bool)))
 ; Statement: if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName> 
(assert (= (ite var3150 1 0) 0)) ; Cond: z0 == 0 
(define-const var3283 String (softDeletesFieldName/354673783 var2343)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName> 
(assert true)
(define-const var3273 Bool (= var3854 var3283)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto return 
(assert (not (= (ite var3273 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2449 var320 var320-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1315 String (softDeletesFieldName/354673783 var2343)) ; Statement: $r4 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName> 
(define-const var1515 String (str.++ "cannot configure [\u0001] as soft-deletes; this index uses [\u0001] as non-soft-deletes already" var1315 var3854)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("cannot configure [\u0001] as soft-deletes; this index uses [\u0001] as non-soft-deletes already") 
(assert true)
;(assert (<init>/875830710 var2449 var1515)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2449!1 var320)
(declare-const var1515!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {softDeletesFieldName/354673783=([org.apache.lucene.index.FieldInfos$FieldNumbers], java.lang.String), var320-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2475=org.apache.lucene.index.FieldInfos$FieldNumbers, var2343=r1, var3854=r0, var498=null_type, var3150=z0, var3283=$r2, var3273=$z1, var320=java.lang.IllegalArgumentException, var2449=$r3, var1315=$r4, var1515=$r5}
; {org.apache.lucene.index.FieldInfos$FieldNumbers=var2475, r1=var2343, r0=var3854, null_type=var498, z0=var3150, $r2=var3283, $z1=var3273, java.lang.IllegalArgumentException=var320, $r3=var2449, $r4=var1315, $r5=var1515}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName>;	$r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto return;	$r3 = new java.lang.IllegalArgumentException;	$r4 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String softDeletesFieldName>;	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("cannot configure [\u0001] as soft-deletes; this index uses [\u0001] as non-soft-deletes already");	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r3
;block_num 3