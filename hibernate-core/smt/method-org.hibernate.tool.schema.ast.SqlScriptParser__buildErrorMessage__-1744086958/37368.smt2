(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3102 0)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun errorList/1569206351 (var3102) var823)
(declare-fun var823_size/-959786421 (var823) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3102 var3102)
(declare-const var2489 var3102) ; Statement: r1 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var2489 null-var3102)))
(define-const var1835 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1835)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1835!1 String)
(assert (= var1835!1 ""))
(define-const var2030 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2043 var823 (errorList/1569206351 var2489)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList> 
(define-const var2705 Int (var823_size/-959786421 var2043)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2030 var2705)) ; Cond: i3 >= $i0 
(assert true)
(define-const var946 String (toString/-2075883882 var1835!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), errorList/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.util.List), var823_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3102=org.hibernate.tool.schema.ast.SqlScriptParser, var2489=r1, var1835=$r0, var2030=i3, var823=java.util.List, var2043=$r2, var2705=$i0, var946=$r3}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var3102, r1=var2489, $r0=var1835, i3=var2030, java.util.List=var823, $r2=var2043, $i0=var2705, $r3=var946}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$r2 = r1.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3