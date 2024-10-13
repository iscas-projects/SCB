(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort var3441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var745-to-var3441 (var745) var3441)
(declare-fun get/-795098227 (var3441) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var745 var745)
(declare-const var2888 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2888 null-String)))
(declare-const var3086 var745) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var3086 null-var745)))
(define-const var3398 Bool false) ; Statement: $z0 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= (ite var3398 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1936 var3441 (cast-from-var745-to-var3441 var3086)) ; Statement: $r6 = (org.apache.ibatis.javassist.compiler.ast.Symbol) r0 
(assert true)
(define-const var454 String (get/-795098227 var1936)) ; Statement: $r7 = virtualinvoke $r6.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true)
;(assert (append/672562846 var2888 var454)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 var454)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var745-to-var3441=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.Symbol), get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2888=r3, var745=org.apache.ibatis.javassist.compiler.ast.ASTree, var3086=r0, var3398=$z0, var3441=org.apache.ibatis.javassist.compiler.ast.Symbol, var1936=$r6, var454=$r7}
; {r3=var2888, org.apache.ibatis.javassist.compiler.ast.ASTree=var745, r0=var3086, $z0=var3398, org.apache.ibatis.javassist.compiler.ast.Symbol=var3441, $r6=var1936, $r7=var454}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTree;	$z0 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol;	if $z0 == 0 goto $z1 = r0 instanceof org.apache.ibatis.javassist.compiler.ast.Expr;	$r6 = (org.apache.ibatis.javassist.compiler.ast.Symbol) r0;	$r7 = virtualinvoke $r6.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	return
;block_num 2