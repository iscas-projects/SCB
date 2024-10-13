(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2528 0)
(declare-sort var3309 0)
(declare-sort var3190 0)
(declare-sort var1955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun errorList/1569206351 (var2528) var3190)
(declare-fun var3190_add/328494887 (var3190 var1955) Bool)
(declare-fun cast-from-String-to-var1955 (String) var1955)
(declare-const null-var2528 var2528)
(declare-const null-String String)
(declare-const var2019 var2528) ; Statement: r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var2019 null-var2528)))
(declare-const var2603 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2603 null-String)))
(assert true)
(define-const var3140 Bool (contains/1009244746 var2603 (cast-from-String-to-String "expecting DELIMITER"))) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("expecting DELIMITER") 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList> 
(assert (= (ite var3140 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1235 var3190 (errorList/1569206351 var2019)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList> 
;(assert (var3190_add/328494887 var1235 (cast-from-String-to-var1955 var2603))) ; Statement: interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var1235!1 var3190)
(declare-const var2603!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), errorList/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.util.List), var3190_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1955=([java.lang.String], java.lang.Object)}
; {var2528=org.hibernate.tool.schema.ast.SqlScriptParser, var2019=r0, var2603=r2, var3309=null_type, var3140=$z0, var3190=java.util.List, var1235=$r1, var1955=java.lang.Object}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var2528, r0=var2019, r2=var2603, null_type=var3309, $z0=var3140, java.util.List=var3190, $r1=var1235, java.lang.Object=var1955}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("expecting DELIMITER");	if $z0 == 0 goto $r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList>;	$r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.List errorList>;	interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>(r2);	return
;block_num 2