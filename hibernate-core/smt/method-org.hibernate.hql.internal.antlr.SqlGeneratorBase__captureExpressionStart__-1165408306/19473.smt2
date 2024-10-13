(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1498 0)
(declare-sort var3947 0)
(declare-sort var2417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun captureExpression/1664261911 (var1498) Bool)
(declare-fun exprs/1664261911 (var1498) var3947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3947_add/328494887 (var3947 var2417) Bool)
(declare-fun cast-from-String-to-var2417 (String) var2417)
(declare-const null-var1498 var1498)
(declare-const var1522 var1498) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var1522 null-var1498)))
(define-const var3010 Bool (captureExpression/1664261911 var1522)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> 
 ; Statement: if $z0 == 0 goto r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1 
(assert (not (= (ite var3010 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var760 var3947 (exprs/1664261911 var1522)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> 
(define-const var3029 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3029)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3029!1 String)
(assert (= var3029!1 ""))
;(assert (var3947_add/328494887 var760 (cast-from-String-to-var2417 var3029!1))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r1) 

(declare-const var760!1 var3947)
(declare-const var3029!2 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {captureExpression/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], boolean), exprs/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3947_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2417=([java.lang.StringBuilder], java.lang.Object)}
; {var1498=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var1522=r0, var3010=$z0, var3947=java.util.List, var760=$r2, var3029=$r1, var2417=java.lang.Object}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var1498, r0=var1522, $z0=var3010, java.util.List=var3947, $r2=var760, $r1=var3029, java.lang.Object=var2417}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	$z0 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression>;	if $z0 == 0 goto r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1;	$r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r1);	goto [?= return];	return
;block_num 3