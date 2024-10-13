(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var529 0)
(declare-sort var2 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentFieldName/354673783 (var529) String)
(declare-fun var2736-init () var2736)
(declare-fun <init>/875830710 (var2736 String) void)
(declare-const null-var529 var529)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1588 var529) ; Statement: r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers 
(assert (not (= var1588 null-var529)))
(declare-const var3532 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3532 null-String)))
(declare-const var2792 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2792 null-Bool)))
 ; Statement: if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName> 
(assert (= (ite var2792 1 0) 0)) ; Cond: z0 == 0 
(define-const var1319 String (parentFieldName/354673783 var1588)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName> 
(assert true)
(define-const var2554 Bool (= var3532 var1319)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z1 == 0 goto return 
(assert (not (= (ite var2554 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3985 var2736 var2736-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var500 String (parentFieldName/354673783 var1588)) ; Statement: $r4 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName> 
(define-const var1665 String (str.++ "can\u0027t add [\u0001] as non parent document field; this IndexWriter is configured with [\u0001] as parent document field" var3532 var500)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("can\'t add [\u0001] as non parent document field; this IndexWriter is configured with [\u0001] as parent document field") 
(assert true)
;(assert (<init>/875830710 var3985 var1665)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3985!1 var2736)
(declare-const var1665!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {parentFieldName/354673783=([org.apache.lucene.index.FieldInfos$FieldNumbers], java.lang.String), var2736-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var529=org.apache.lucene.index.FieldInfos$FieldNumbers, var1588=r1, var3532=r0, var2=null_type, var2792=z0, var1319=$r2, var2554=$z1, var2736=java.lang.IllegalArgumentException, var3985=$r3, var500=$r4, var1665=$r5}
; {org.apache.lucene.index.FieldInfos$FieldNumbers=var529, r1=var1588, r0=var3532, null_type=var2, z0=var2792, $r2=var1319, $z1=var2554, java.lang.IllegalArgumentException=var2736, $r3=var3985, $r4=var500, $r5=var1665}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName>;	$r2 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z1 == 0 goto return;	$r3 = new java.lang.IllegalArgumentException;	$r4 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.lang.String parentFieldName>;	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("can\'t add [\u0001] as non parent document field; this IndexWriter is configured with [\u0001] as parent document field");	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r3
;block_num 3