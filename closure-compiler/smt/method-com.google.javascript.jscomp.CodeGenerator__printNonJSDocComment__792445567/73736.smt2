(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1082 0)
(declare-sort var3473 0)
(declare-sort var167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCommentString/-1098216836 (var167) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1082 var1082)
(declare-const null-var3473 var3473)
(declare-const null-var167 var167)
(declare-const var1163 var1082) ; Statement: r2 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var1163 null-var1082)))
(declare-const var2958 var3473) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2958 null-var3473)))
(declare-const var2079 var167) ; Statement: r0 := @parameter1: com.google.javascript.rhino.NonJSDocComment 
(assert (not (= var2079 null-var167)))
(assert true)
(define-const var939 String (getCommentString/-1098216836 var2079)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.NonJSDocComment: java.lang.String getCommentString()>() 
(assert true)
(define-const var2226 Bool (isEmpty/-1285796103 var939)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2226 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCommentString/-1098216836=([com.google.javascript.rhino.NonJSDocComment], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1082=com.google.javascript.jscomp.CodeGenerator, var1163=r2, var3473=com.google.javascript.rhino.Node, var2958=r3, var167=com.google.javascript.rhino.NonJSDocComment, var2079=r0, var939=r1, var2226=$z0}
; {com.google.javascript.jscomp.CodeGenerator=var1082, r2=var1163, com.google.javascript.rhino.Node=var3473, r3=var2958, com.google.javascript.rhino.NonJSDocComment=var167, r0=var2079, r1=var939, $z0=var2226}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodeGenerator;	r3 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.NonJSDocComment;	r1 = virtualinvoke r0.<com.google.javascript.rhino.NonJSDocComment: java.lang.String getCommentString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2