(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3390 0)
(declare-sort var3061 0)
(declare-sort var3692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/-1095383230 (var3390) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3061-init () var3061)
(declare-fun <init>/-1425936906 (var3061 String var3692) void)
(declare-fun cast-from-var3061-to-var3692 (var3061) var3692)
(declare-const null-var3390 var3390)
(declare-const null-var3061 var3061)
(declare-const var2208 var3390) ; Statement: r0 := @parameter0: org.apache.lucene.store.DataInput 
(assert (not (= var2208 null-var3390)))
(assert true)
(define-const var2423 String (readString/-1095383230 var2208)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var784 var3061) ; Statement: $r3 := @caughtexception 
(assert (not (= var784 null-var3061)))
(assert true)
(define-const var2408 Bool (startsWith/-1785782452 var2423 "Lucene")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lucene") 
 ; Statement: if $z0 == 0 goto throw $r3 
(assert (not (= (ite var2408 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var253 var3061 var3061-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var292 String (str.++ "Could not load codec \u0027\u0001\u0027. Did you forget to add lucene-backward-codecs.jar?" var2423)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Could not load codec \'\u0001\'. Did you forget to add lucene-backward-codecs.jar?") 
(assert true)
;(assert (<init>/-1425936906 var253 var292 (cast-from-var3061-to-var3692 var784))) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r5, $r3) 

(declare-const var253!1 var3061)
(declare-const var292!1 String)
(declare-const var784!1 var3061)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/-1095383230=([org.apache.lucene.store.DataInput], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3061-init=([], java.lang.IllegalArgumentException), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3061-to-var3692=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3390=org.apache.lucene.store.DataInput, var2208=r0, var2423=r1, var3061=java.lang.IllegalArgumentException, var784=$r3, var2408=$z0, var253=$r4, var292=$r5, var3692=java.lang.Throwable}
; {org.apache.lucene.store.DataInput=var3390, r0=var2208, r1=var2423, java.lang.IllegalArgumentException=var3061, $r3=var784, $z0=var2408, $r4=var253, $r5=var292, java.lang.Throwable=var3692}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.store.DataInput;	r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>();	$r3 := @caughtexception;	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lucene");	if $z0 == 0 goto throw $r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Could not load codec \'\u0001\'. Did you forget to add lucene-backward-codecs.jar?");	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r5, $r3);	throw $r4
;block_num 3