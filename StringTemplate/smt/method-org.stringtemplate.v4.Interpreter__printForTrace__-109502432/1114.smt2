(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var211 0)
(declare-sort var3833 0)
(declare-sort var2795 0)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3833-to-var2795 (var3833) var2795)
(declare-fun impl/55375992 (var2795) var2979)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2782 var2782)
(declare-const null-String String)
(declare-const null-var211 var211)
(declare-const null-var3833 var3833)
(declare-const null-var2979 var2979)
(declare-const var3789 var2782) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3789 null-var2782)))
(declare-const var3746 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3746 null-String)))
(declare-const var866 var211) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var866 null-var211)))
(declare-const var2746 var3833) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var2746 null-var3833)))
(define-const var1538 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (not (= (ite var1538 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var846 var2795 (cast-from-var3833-to-var2795 var2746)) ; Statement: $r9 = (org.stringtemplate.v4.ST) r19 
(define-const var2593 var2979 (impl/55375992 var846)) ; Statement: $r10 = $r9.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
 ; Statement: if $r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (not (= var2593 null-var2979)))) ; Negate: Cond: $r10 != null  
(assert true)
;(assert (append/672562846 var3746 "bad-template()")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad-template()") 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 "bad-template()")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3833-to-var2795=([java.lang.Object], org.stringtemplate.v4.ST), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2782=org.stringtemplate.v4.Interpreter, var3789=r0, var3746=r2, var211=org.stringtemplate.v4.InstanceScope, var866=r1, var3833=java.lang.Object, var2746=r19, var1538=$z0, var2795=org.stringtemplate.v4.ST, var846=$r9, var2979=org.stringtemplate.v4.compiler.CompiledST, var2593=$r10}
; {org.stringtemplate.v4.Interpreter=var2782, r0=var3789, r2=var3746, org.stringtemplate.v4.InstanceScope=var211, r1=var866, java.lang.Object=var3833, r19=var2746, $z0=var1538, org.stringtemplate.v4.ST=var2795, $r9=var846, org.stringtemplate.v4.compiler.CompiledST=var2979, $r10=var2593}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$r9 = (org.stringtemplate.v4.ST) r19;	$r10 = $r9.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	if $r10 != null goto $r11 = new java.lang.StringBuilder;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad-template()");	goto [?= return];	return
;block_num 4