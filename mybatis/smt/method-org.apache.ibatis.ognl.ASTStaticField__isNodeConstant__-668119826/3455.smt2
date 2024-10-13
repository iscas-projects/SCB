(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var189 0)
(declare-sort var1255 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/602358304 (var189) String)
(declare-const null-var189 var189)
(declare-const null-var1255 var1255)
(declare-const null-var1876 var1876)
(declare-const var2905 var189) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTStaticField 
(assert (not (= var2905 null-var189)))
(declare-const var1558 var1255) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1558 null-var1255)))
(define-const var798 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2628 var1876 null-var1876) ; Statement: r28 = null 
(define-const var1124 String (className/602358304 var2905)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1786 var1876) ; Statement: $r27 := @caughtexception 
(assert (not (= var1786 null-var1876)))
(define-const var2628!1 var1876 var1786) ; Statement: r28 = $r27 
(assert true) ; Non Conditional
 ; Statement: if r28 == null goto return z3 
(assert (= var2628!1 null-var1876)) ; Cond: r28 == null 
 ; Statement: return z3 
(check-sat)
(get-model)
(get-unsat-core)
; {className/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String)}
; {var189=org.apache.ibatis.ognl.ASTStaticField, var2905=r1, var1255=org.apache.ibatis.ognl.OgnlContext, var1558=r0, var798=z3, var1876=java.lang.Exception, var2628=r28, var1124=$r2, var1786=$r27}
; {org.apache.ibatis.ognl.ASTStaticField=var189, r1=var2905, org.apache.ibatis.ognl.OgnlContext=var1255, r0=var1558, z3=var798, java.lang.Exception=var1876, r28=var2628, $r2=var1124, $r27=var1786}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTStaticField;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	z3 = 0;	r28 = null;	$r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r27 := @caughtexception;	r28 = $r27;	if r28 == null goto return z3;	return z3
;block_num 4