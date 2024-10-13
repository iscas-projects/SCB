(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort var2906 0)
(declare-sort var3282 0)
(declare-sort var1639 0)
(declare-sort var1439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun propertyPath/790005799 (var717) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-fun getFromElement/-410081914 (var1639) var3282)
(declare-fun cast-from-var717-to-var1639 (var717) var1639)
(declare-fun getPropertyType/-25512402 (var3282 String String) var1439)
(declare-const null-var717 var717)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1439 var1439)
(declare-const var420 var717) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var420 null-var717)))
(declare-const var1395 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1395 null-String)))
(define-const var3374 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[2] 
(define-const var2340 String (propertyPath/790005799 var420)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(declare-const var3374!1 (Array Int String))
(assert (not (= var3374!1 null-__Array__Int__String__)))
(assert (= (select var3374!1 0) (cast-from-String-to-String var2340))) ; Statement: $r0[0] = $r2 
(declare-const var3374!2 (Array Int String))
(assert (not (= var3374!2 null-__Array__Int__String__)))
(assert (= (select var3374!2 1) (cast-from-String-to-String var1395))) ; Statement: $r0[1] = r3 
(define-const var3984 String (String_join/-1520935655 (cast-from-String-to-String ".") var3374!2)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(".", $r0) 
(assert true)
(define-const var3976 var3282 (getFromElement/-410081914 (cast-from-var717-to-var1639 var420))) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.tree.FromElement getFromElement()>() 
(define-const var1828 String (propertyPath/790005799 var420)) ; Statement: $r5 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(assert true)
(define-const var3663 var1439 (getPropertyType/-25512402 var3976 var1828 var3984)) ; Statement: r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.type.Type getPropertyType(java.lang.String,java.lang.String)>($r5, r4) 
 ; Statement: if r7 == null goto $z0 = 0 
(assert (not (= var3663 null-var1439))) ; Negate: Cond: r7 == null  
(define-const var1241 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), propertyPath/790005799=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), getFromElement/-410081914=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], org.hibernate.hql.internal.ast.tree.FromElement), cast-from-var717-to-var1639=([org.hibernate.hql.internal.ast.tree.DotNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode), getPropertyType/-25512402=([org.hibernate.hql.internal.ast.tree.FromElement, java.lang.String, java.lang.String], org.hibernate.type.Type)}
; {var717=org.hibernate.hql.internal.ast.tree.DotNode, var420=r1, var1395=r3, var2906=null_type, var3374=$r0, var2340=$r2, var3984=r4, var3282=org.hibernate.hql.internal.ast.tree.FromElement, var1639=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var3976=$r6, var1828=$r5, var1439=org.hibernate.type.Type, var3663=r7, var1241=$z0}
; {org.hibernate.hql.internal.ast.tree.DotNode=var717, r1=var420, r3=var1395, null_type=var2906, $r0=var3374, $r2=var2340, r4=var3984, org.hibernate.hql.internal.ast.tree.FromElement=var3282, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var1639, $r6=var3976, $r5=var1828, org.hibernate.type.Type=var1439, r7=var3663, $z0=var1241}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode;	r3 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.CharSequence)[2];	$r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	$r0[0] = $r2;	$r0[1] = r3;	r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(".", $r0);	$r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.tree.FromElement getFromElement()>();	$r5 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.type.Type getPropertyType(java.lang.String,java.lang.String)>($r5, r4);	if r7 == null goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3