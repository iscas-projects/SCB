(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2635 0)
(declare-sort var2279 0)
(declare-sort var512 0)
(declare-sort var3299 0)
(declare-sort var252 0)
(declare-sort var3976 0)
(declare-sort var230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2279_getClauseStack/1048601114 (var2279) var512)
(declare-fun var512_getCurrent/1301638501 (var512) var3299)
(declare-fun cast-from-var252-to-var3299 (var252) var3299)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-895324138 (var2635) var3976)
(declare-fun render/627455273 (var230 var2279) String)
(declare-fun cast-from-var3976-to-var230 (var3976) var230)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2635 var2635)
(declare-const null-var2279 var2279)
(declare-const var252-SELECT var252)
(declare-const var2684 var2635) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.expression.MapEntryExpression 
(assert (not (= var2684 null-var2635)))
(declare-const var2608 var2279) ; Statement: r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2608 null-var2279)))
(define-const var1304 var512 (var2279_getClauseStack/1048601114 var2608)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(define-const var2143 var3299 (var512_getCurrent/1301638501 var1304)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>() 
(define-const var3678 var252 var252-SELECT) ; Statement: $r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT> 
 ; Statement: if $r3 != $r2 goto $r4 = new java.lang.IllegalStateException 
(assert (not (not (= var2143 (cast-from-var252-to-var3299 var3678))))) ; Negate: Cond: $r3 != $r2  
(define-const var85 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var85)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var85!1 String)
(assert (= var85!1 ""))
(assert true)
(define-const var287 String (append/672562846 var85!1 "entry(")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entry(") 
(declare-const var85!2 String)
(assert (= var85!2 (str.++ var85!1 "entry(")))
(define-const var1282 var3976 (original/-895324138 var2684)) ; Statement: $r7 = r6.<org.hibernate.query.criteria.internal.expression.MapEntryExpression: org.hibernate.query.criteria.internal.path.MapAttributeJoin original> 
(assert true)
(define-const var3798 String (render/627455273 (cast-from-var3976-to-var230 var1282) var2608)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.query.criteria.internal.path.MapAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r0) 
(assert true)
(define-const var2775 String (append/672562846 var287 var3798)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var287!1 String)
(assert (= var287!1 (str.++ var287 var3798)))
(assert true)
(define-const var2878 String (append/672562846 var2775 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2775!1 String)
(assert (= var2775!1 (str.++ var2775 ")")))
(assert true)
(define-const var457 String (toString/-2075883882 var2878)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2279_getClauseStack/1048601114=([org.hibernate.query.criteria.internal.compile.RenderingContext], org.hibernate.internal.util.collections.Stack), var512_getCurrent/1301638501=([org.hibernate.internal.util.collections.Stack], java.lang.Object), cast-from-var252-to-var3299=([org.hibernate.sql.ast.Clause], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-895324138=([org.hibernate.query.criteria.internal.expression.MapEntryExpression], org.hibernate.query.criteria.internal.path.MapAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var3976-to-var230=([org.hibernate.query.criteria.internal.path.MapAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2635=org.hibernate.query.criteria.internal.expression.MapEntryExpression, var2684=r6, var2279=org.hibernate.query.criteria.internal.compile.RenderingContext, var2608=r0, var512=org.hibernate.internal.util.collections.Stack, var1304=$r1, var3299=java.lang.Object, var2143=$r3, var252=org.hibernate.sql.ast.Clause, var3678=$r2, var85=$r5, var287=$r9, var3976=org.hibernate.query.criteria.internal.path.MapAttributeJoin, var1282=$r7, var230=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3798=$r8, var2775=$r10, var2878=$r11, var457=$r12}
; {org.hibernate.query.criteria.internal.expression.MapEntryExpression=var2635, r6=var2684, org.hibernate.query.criteria.internal.compile.RenderingContext=var2279, r0=var2608, org.hibernate.internal.util.collections.Stack=var512, $r1=var1304, java.lang.Object=var3299, $r3=var2143, org.hibernate.sql.ast.Clause=var252, $r2=var3678, $r5=var85, $r9=var287, org.hibernate.query.criteria.internal.path.MapAttributeJoin=var3976, $r7=var1282, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var230, $r8=var3798, $r10=var2775, $r11=var2878, $r12=var457}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.expression.MapEntryExpression;	r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	$r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>();	$r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT>;	if $r3 != $r2 goto $r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entry(");	$r7 = r6.<org.hibernate.query.criteria.internal.expression.MapEntryExpression: org.hibernate.query.criteria.internal.path.MapAttributeJoin original>;	$r8 = virtualinvoke $r7.<org.hibernate.query.criteria.internal.path.MapAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2