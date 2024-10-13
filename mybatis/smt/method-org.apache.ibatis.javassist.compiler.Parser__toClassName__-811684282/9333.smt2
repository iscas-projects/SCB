(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1594 0)
(declare-sort var3597 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3597-to-var2477 (var3597) var2477)
(declare-fun get/-795098227 (var2477) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1594 var1594)
(declare-const null-var3597 var3597)
(declare-const null-String String)
(declare-const var908 var1594) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.Parser 
(assert (not (= var908 null-var1594)))
(declare-const var2302 var3597) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var2302 null-var3597)))
(declare-const var3374 String) ; Statement: r5 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3374 null-String)))
(define-const var2518 Bool false) ; Statement: $z0 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= (ite var2518 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3665 var2477 (cast-from-var3597-to-var2477 var2302)) ; Statement: $r8 = (org.apache.ibatis.javassist.compiler.ast.Symbol) r0 
(assert true)
(define-const var3459 String (get/-795098227 var3665)) ; Statement: $r9 = virtualinvoke $r8.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true)
;(assert (append/672562846 var3374 var3459)) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3374!1 String)
(assert (= var3374!1 (str.++ var3374 var3459)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3597-to-var2477=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.Symbol), get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1594=org.apache.ibatis.javassist.compiler.Parser, var908=r2, var3597=org.apache.ibatis.javassist.compiler.ast.ASTree, var2302=r0, var3374=r5, var2518=$z0, var2477=org.apache.ibatis.javassist.compiler.ast.Symbol, var3665=$r8, var3459=$r9}
; {org.apache.ibatis.javassist.compiler.Parser=var1594, r2=var908, org.apache.ibatis.javassist.compiler.ast.ASTree=var3597, r0=var2302, r5=var3374, $z0=var2518, org.apache.ibatis.javassist.compiler.ast.Symbol=var2477, $r8=var3665, $r9=var3459}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.Parser;	r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree;	r5 := @parameter1: java.lang.StringBuilder;	$z0 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol;	if $z0 == 0 goto $z1 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Expr;	$r8 = (org.apache.ibatis.javassist.compiler.ast.Symbol) r0;	$r9 = virtualinvoke $r8.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	return
;block_num 2