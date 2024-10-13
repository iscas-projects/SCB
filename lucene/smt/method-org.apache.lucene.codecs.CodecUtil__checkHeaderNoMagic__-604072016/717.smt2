(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1621 0)
(declare-sort var1287 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/-1095383230 (var1621) String)
(declare-fun var3132-init () var3132)
(declare-fun <init>/571395255 (var3132 String var1621) void)
(declare-const null-var1621 var1621)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3362 var1621) ; Statement: r0 := @parameter0: org.apache.lucene.store.DataInput 
(assert (not (= var3362 null-var1621)))
(declare-const var2412 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2412 null-String)))
(declare-const var3606 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3606 null-Int)))
(declare-const var1768 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1768 null-Int)))
(assert true)
(define-const var2805 String (readString/-1095383230 var3362)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>() 
(assert true)
(define-const var2572 Bool (= var2805 var2412)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto i0 = staticinvoke <org.apache.lucene.codecs.CodecUtil: int readBEInt(org.apache.lucene.store.DataInput)>(r0) 
(assert (not (not (= (ite var2572 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var169 var3132 var3132-init) ; Statement: $r5 = new org.apache.lucene.index.CorruptIndexException 
(define-const var1167 String (str.++ "codec mismatch: actual codec=\u0001 vs expected codec=\u0001" var2805 var2412)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("codec mismatch: actual codec=\u0001 vs expected codec=\u0001") 
(assert true)
;(assert (<init>/571395255 var169 var1167 var3362)) ; Statement: specialinvoke $r5.<org.apache.lucene.index.CorruptIndexException: void <init>(java.lang.String,org.apache.lucene.store.DataInput)>($r6, r0) 

(declare-const var169!1 var3132)
(declare-const var1167!1 String)
(declare-const var3362!1 var1621)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/-1095383230=([org.apache.lucene.store.DataInput], java.lang.String), var3132-init=([], org.apache.lucene.index.CorruptIndexException), <init>/571395255=([org.apache.lucene.index.CorruptIndexException, java.lang.String, org.apache.lucene.store.DataInput], void)}
; {var1621=org.apache.lucene.store.DataInput, var3362=r0, var2412=r2, var1287=null_type, var3606=i1, var1768=i2, var2805=r1, var2572=$z0, var3132=org.apache.lucene.index.CorruptIndexException, var169=$r5, var1167=$r6}
; {org.apache.lucene.store.DataInput=var1621, r0=var3362, r2=var2412, null_type=var1287, i1=var3606, i2=var1768, r1=var2805, $z0=var2572, org.apache.lucene.index.CorruptIndexException=var3132, $r5=var169, $r6=var1167}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.store.DataInput;	r2 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i2 := @parameter3: int;	r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto i0 = staticinvoke <org.apache.lucene.codecs.CodecUtil: int readBEInt(org.apache.lucene.store.DataInput)>(r0);	$r5 = new org.apache.lucene.index.CorruptIndexException;	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("codec mismatch: actual codec=\u0001 vs expected codec=\u0001");	specialinvoke $r5.<org.apache.lucene.index.CorruptIndexException: void <init>(java.lang.String,org.apache.lucene.store.DataInput)>($r6, r0);	throw $r5
;block_num 2