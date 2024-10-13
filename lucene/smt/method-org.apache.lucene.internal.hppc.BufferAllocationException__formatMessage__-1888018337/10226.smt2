(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3904 0)
(declare-sort var2063 0)
(declare-sort var2036 0)
(declare-sort var2081 0)
(declare-sort var2146 0)
(declare-sort var384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var384-init () var384)
(declare-fun <init>/231796709 (var384 String) void)
(declare-fun addSuppressed/-2013977960 (var2063 var2063) void)
(declare-fun cast-from-var384-to-var2063 (var384) var2063)
(declare-fun cast-from-var2146-to-var2063 (var2146) var2063)
(declare-const null-String String)
(declare-const null-var2063 var2063)
(declare-const null-__Array__Int__var2036__ (Array Int var2036))
(declare-const var2081-ROOT var2081)
(declare-const null-var2146 var2146)
(declare-const var3993 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3993 null-String)))
(declare-const var3919 var2063) ; Statement: r7 := @parameter1: java.lang.Throwable 
(assert (not (= var3919 null-var2063)))
(declare-const var801 (Array Int var2036)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var801 null-__Array__Int__var2036__)))
(define-const var1629 var2081 var2081-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3871 var2146) ; Statement: $r4 := @caughtexception 
(assert (not (= var3871 null-var2146)))
(define-const var1289 var384 var384-init) ; Statement: $r5 = new org.apache.lucene.internal.hppc.BufferAllocationException 
(define-const var3400 String (str.++ "\u0001 [ILLEGAL FORMAT, ARGS SUPPRESSED]" var3993)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 [ILLEGAL FORMAT, ARGS SUPPRESSED]") 
(assert true)
;(assert (<init>/231796709 var1289 var3400)) ; Statement: specialinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void <init>(java.lang.String)>($r6) 

(declare-const var1289!1 var384)
(declare-const var3400!1 String)
 ; Statement: if r7 == null goto virtualinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void addSuppressed(java.lang.Throwable)>($r4) 
(assert (= var3919 null-var2063)) ; Cond: r7 == null 
(assert true)
;(assert (addSuppressed/-2013977960 (cast-from-var384-to-var2063 var1289!1) (cast-from-var2146-to-var2063 var3871))) ; Statement: virtualinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void addSuppressed(java.lang.Throwable)>($r4) 

(declare-const var1289!2 var384)
(declare-const var3871!1 var2146)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var384-init=([], org.apache.lucene.internal.hppc.BufferAllocationException), <init>/231796709=([org.apache.lucene.internal.hppc.BufferAllocationException, java.lang.String], void), addSuppressed/-2013977960=([java.lang.Throwable, java.lang.Throwable], void), cast-from-var384-to-var2063=([org.apache.lucene.internal.hppc.BufferAllocationException], java.lang.Throwable), cast-from-var2146-to-var2063=([java.util.IllegalFormatException], java.lang.Throwable)}
; {var3993=r0, var3904=null_type, var2063=java.lang.Throwable, var3919=r7, var2036=java.lang.Object, var801=r1, var2081=java.util.Locale, var1629=$r2, var2146=java.util.IllegalFormatException, var3871=$r4, var384=org.apache.lucene.internal.hppc.BufferAllocationException, var1289=$r5, var3400=$r6}
; {r0=var3993, null_type=var3904, java.lang.Throwable=var2063, r7=var3919, java.lang.Object=var2036, r1=var801, java.util.Locale=var2081, $r2=var1629, java.util.IllegalFormatException=var2146, $r4=var3871, org.apache.lucene.internal.hppc.BufferAllocationException=var384, $r5=var1289, $r6=var3400}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.Object[];	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 := @caughtexception;	$r5 = new org.apache.lucene.internal.hppc.BufferAllocationException;	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 [ILLEGAL FORMAT, ARGS SUPPRESSED]");	specialinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void <init>(java.lang.String)>($r6);	if r7 == null goto virtualinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void addSuppressed(java.lang.Throwable)>($r4);	virtualinvoke $r5.<org.apache.lucene.internal.hppc.BufferAllocationException: void addSuppressed(java.lang.Throwable)>($r4);	throw $r5
;block_num 3