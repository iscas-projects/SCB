(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3745 0)
(declare-sort var1937 0)
(declare-sort var1243 0)
(declare-sort var1623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1243-init () var1243)
(declare-fun <init>/1694429266 (var1243 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun length/727234302 (var1243) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1623-init () var1623)
(declare-fun <init>/875830710 (var1623 String) void)
(declare-const null-var3745 var3745)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3854 var3745) ; Statement: r4 := @parameter0: org.apache.lucene.store.DataOutput 
(assert (not (= var3854 null-var3745)))
(declare-const var1671 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1671 null-String)))
(declare-const var901 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var901 null-Int)))
(define-const var2899 var1243 var1243-init) ; Statement: $r0 = new org.apache.lucene.util.BytesRef 
(assert true)
;(assert (<init>/1694429266 var2899 (cast-from-String-to-String var1671))) ; Statement: specialinvoke $r0.<org.apache.lucene.util.BytesRef: void <init>(java.lang.CharSequence)>(r1) 

(declare-const var2899!1 var1243)
(declare-const var1671!1 String)
(define-const var2620 Int (length/727234302 var2899!1)) ; Statement: $i0 = $r0.<org.apache.lucene.util.BytesRef: int length> 
(assert true)
(define-const var2116 Int (length/-134980193 var1671!1)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != $i1 goto $r2 = new java.lang.IllegalArgumentException 
(assert (not (= var2620 var2116))) ; Cond: $i0 != $i1 
(define-const var3113 var1623 var1623-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var903 String (str.++ "codec must be simple ASCII, less than 128 characters in length [got \u0001]" var1671!1)) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("codec must be simple ASCII, less than 128 characters in length [got \u0001]") 
(assert true)
;(assert (<init>/875830710 var3113 var903)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r3) 

(declare-const var3113!1 var1623)
(declare-const var903!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1243-init=([], org.apache.lucene.util.BytesRef), <init>/1694429266=([org.apache.lucene.util.BytesRef, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/727234302=([org.apache.lucene.util.BytesRef], int), length/-134980193=([java.lang.String], int), var1623-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3745=org.apache.lucene.store.DataOutput, var3854=r4, var1671=r1, var1937=null_type, var901=i3, var1243=org.apache.lucene.util.BytesRef, var2899=$r0, var2620=$i0, var2116=$i1, var1623=java.lang.IllegalArgumentException, var3113=$r2, var903=$r3}
; {org.apache.lucene.store.DataOutput=var3745, r4=var3854, r1=var1671, null_type=var1937, i3=var901, org.apache.lucene.util.BytesRef=var1243, $r0=var2899, $i0=var2620, $i1=var2116, java.lang.IllegalArgumentException=var1623, $r2=var3113, $r3=var903}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @parameter0: org.apache.lucene.store.DataOutput;	r1 := @parameter1: java.lang.String;	i3 := @parameter2: int;	$r0 = new org.apache.lucene.util.BytesRef;	specialinvoke $r0.<org.apache.lucene.util.BytesRef: void <init>(java.lang.CharSequence)>(r1);	$i0 = $r0.<org.apache.lucene.util.BytesRef: int length>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != $i1 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("codec must be simple ASCII, less than 128 characters in length [got \u0001]");	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r3);	throw $r2
;block_num 2