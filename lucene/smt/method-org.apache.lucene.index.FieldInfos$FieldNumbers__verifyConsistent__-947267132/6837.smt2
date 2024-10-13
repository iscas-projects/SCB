(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var2008 0)
(declare-sort var648 0)
(declare-sort var3259 0)
(declare-sort var114 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun numberToName/354673783 (var1131) var3259)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun get/-1829356193 (var3259 Int) var114)
(declare-fun var3883-init () var3883)
(declare-fun cast-from-var114-to-String (var114) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun <init>/875830710 (var3883 String) void)
(declare-const null-var1131 var1131)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var648 var648)
(declare-const var456 var1131) ; Statement: r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers 
(assert (not (= var456 null-var1131)))
(declare-const var24 Int) ; Statement: r2 := @parameter0: java.lang.Integer 
(assert (not (= var24 null-Int)))
(declare-const var1822 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1822 null-String)))
(declare-const var3402 var648) ; Statement: r10 := @parameter2: org.apache.lucene.index.DocValuesType 
(assert (not (= var3402 null-var648)))
(define-const var3723 var3259 (numberToName/354673783 var456)) ; Statement: $r3 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: org.apache.lucene.internal.hppc.IntObjectHashMap numberToName> 
(assert true)
(define-const var3472 Int (intValue/-1815674922 var24)) ; Statement: $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var99 var114 (get/-1829356193 var3723 var3472)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.lang.Object get(int)>($i0) 
(assert true)
(define-const var3809 Bool false) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto $r5 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.util.Map nameToNumber> 
(assert (not (not (= (ite var3809 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1597 var3883 var3883-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var2063 var3259 (numberToName/354673783 var456)) ; Statement: $r20 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: org.apache.lucene.internal.hppc.IntObjectHashMap numberToName> 
(assert true)
(define-const var3116 Int (intValue/-1815674922 var24)) ; Statement: $i1 = virtualinvoke r2.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var2485 var114 (get/-1829356193 var2063 var3116)) ; Statement: $r21 = virtualinvoke $r20.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.lang.Object get(int)>($i1) 
(define-const var501 String (cast-from-var114-to-String var2485)) ; Statement: $r22 = (java.lang.String) $r21 
(define-const var2222 String (str.++ "field number \u0001 is already mapped to field name \u0022\u0001\u0022, not \u0022\u0001\u0022" (cast-from-Int-to-String var24) var501 var1822)) ; Statement: $r23 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.Integer,java.lang.String,java.lang.String)>(r2, $r22, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("field number \u0001 is already mapped to field name \"\u0001\", not \"\u0001\"") 
(assert true)
;(assert (<init>/875830710 var1597 var2222)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23) 

(declare-const var1597!1 var3883)
(declare-const var2222!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {numberToName/354673783=([org.apache.lucene.index.FieldInfos$FieldNumbers], org.apache.lucene.internal.hppc.IntObjectHashMap), intValue/-1815674922=([java.lang.Integer], int), get/-1829356193=([org.apache.lucene.internal.hppc.IntObjectHashMap, int], java.lang.Object), var3883-init=([], java.lang.IllegalArgumentException), cast-from-var114-to-String=([java.lang.Object], java.lang.String), cast-from-Int-to-String=([java.lang.Integer], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1131=org.apache.lucene.index.FieldInfos$FieldNumbers, var456=r1, var24=r2, var1822=r0, var2008=null_type, var648=org.apache.lucene.index.DocValuesType, var3402=r10, var3259=org.apache.lucene.internal.hppc.IntObjectHashMap, var3723=$r3, var3472=$i0, var114=java.lang.Object, var99=$r4, var3809=$z0, var3883=java.lang.IllegalArgumentException, var1597=$r19, var2063=$r20, var3116=$i1, var2485=$r21, var501=$r22, var2222=$r23}
; {org.apache.lucene.index.FieldInfos$FieldNumbers=var1131, r1=var456, r2=var24, r0=var1822, null_type=var2008, org.apache.lucene.index.DocValuesType=var648, r10=var3402, org.apache.lucene.internal.hppc.IntObjectHashMap=var3259, $r3=var3723, $i0=var3472, java.lang.Object=var114, $r4=var99, $z0=var3809, java.lang.IllegalArgumentException=var3883, $r19=var1597, $r20=var2063, $i1=var3116, $r21=var2485, $r22=var501, $r23=var2222}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.FieldInfos$FieldNumbers;	r2 := @parameter0: java.lang.Integer;	r0 := @parameter1: java.lang.String;	r10 := @parameter2: org.apache.lucene.index.DocValuesType;	$r3 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: org.apache.lucene.internal.hppc.IntObjectHashMap numberToName>;	$i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>();	$r4 = virtualinvoke $r3.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.lang.Object get(int)>($i0);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto $r5 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: java.util.Map nameToNumber>;	$r19 = new java.lang.IllegalArgumentException;	$r20 = r1.<org.apache.lucene.index.FieldInfos$FieldNumbers: org.apache.lucene.internal.hppc.IntObjectHashMap numberToName>;	$i1 = virtualinvoke r2.<java.lang.Integer: int intValue()>();	$r21 = virtualinvoke $r20.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.lang.Object get(int)>($i1);	$r22 = (java.lang.String) $r21;	$r23 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.Integer,java.lang.String,java.lang.String)>(r2, $r22, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("field number \u0001 is already mapped to field name \"\u0001\", not \"\u0001\"");	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23);	throw $r19
;block_num 2