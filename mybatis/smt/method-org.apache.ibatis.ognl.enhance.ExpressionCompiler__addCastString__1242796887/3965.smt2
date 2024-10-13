(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3081 0)
(declare-sort var1185 0)
(declare-sort var1147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-666442270 (var3081 var1147) var1147)
(declare-fun cast-from-String-to-var1147 (String) var1147)
(declare-fun cast-from-var1147-to-String (var1147) String)
(declare-fun put/-13419698 (var3081 String var1147) var1147)
(declare-const null-var3081 var3081)
(declare-const null-String String)
(declare-const var238 var3081) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var238 null-var3081)))
(declare-const var543 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var543 null-String)))
(assert true)
(define-const var607 var1147 (get/-666442270 var238 (cast-from-String-to-var1147 "_preCast"))) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object get(java.lang.Object)>("_preCast") 
(define-const var282 String (cast-from-var1147-to-String var607)) ; Statement: r6 = (java.lang.String) $r1 
 ; Statement: if r6 == null goto r7 = r2 
(assert (= var282 null-String)) ; Cond: r6 == null 
(define-const var934 String var543) ; Statement: r7 = r2 
(assert true) ; Non Conditional
(assert true)
;(assert (put/-13419698 var238 "_preCast" (cast-from-String-to-var1147 var934))) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7) 

(declare-const var238!1 var3081)
(declare-const var3919 String)
(declare-const var934!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-666442270=([org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.Object), cast-from-String-to-var1147=([java.lang.String], java.lang.Object), cast-from-var1147-to-String=([java.lang.Object], java.lang.String), put/-13419698=([org.apache.ibatis.ognl.OgnlContext, java.lang.String, java.lang.Object], java.lang.Object)}
; {var3081=org.apache.ibatis.ognl.OgnlContext, var238=r0, var543=r2, var1185=null_type, var1147=java.lang.Object, var607=$r1, var282=r6, var934=r7, var3919="_preCast"}
; {org.apache.ibatis.ognl.OgnlContext=var3081, r0=var238, r2=var543, null_type=var1185, java.lang.Object=var1147, $r1=var607, r6=var282, r7=var934, "_preCast"=var3919}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object get(java.lang.Object)>("_preCast");	r6 = (java.lang.String) $r1;	if r6 == null goto r7 = r2;	r7 = r2;	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7);	return
;block_num 3