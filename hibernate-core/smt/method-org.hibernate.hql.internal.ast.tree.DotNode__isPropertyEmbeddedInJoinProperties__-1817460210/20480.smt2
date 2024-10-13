(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort var766 0)
(declare-sort var2653 0)
(declare-sort var901 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun propertyPath/790005799 (var717) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-fun getFromElement/-410081914 (var901) var2653)
(declare-fun cast-from-var717-to-var901 (var717) var901)
(declare-fun getPropertyType/-25512402 (var2653 String String) var1752)
(declare-const null-var717 var717)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1752 var1752)
(declare-const var1546 var717) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var1546 null-var717)))
(declare-const var2051 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2051 null-String)))
(define-const var108 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[2] 
(define-const var3437 String (propertyPath/790005799 var1546)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(declare-const var108!1 (Array Int String))
(assert (not (= var108!1 null-__Array__Int__String__)))
(assert (= (select var108!1 0) (cast-from-String-to-String var3437))) ; Statement: $r0[0] = $r2 
(declare-const var108!2 (Array Int String))
(assert (not (= var108!2 null-__Array__Int__String__)))
(assert (= (select var108!2 1) (cast-from-String-to-String var2051))) ; Statement: $r0[1] = r3 
(define-const var2338 String (String_join/-1520935655 (cast-from-String-to-String ".") var108!2)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(".", $r0) 
(assert true)
(define-const var644 var2653 (getFromElement/-410081914 (cast-from-var717-to-var901 var1546))) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.tree.FromElement getFromElement()>() 
(define-const var2506 String (propertyPath/790005799 var1546)) ; Statement: $r5 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(assert true)
(define-const var3530 var1752 (getPropertyType/-25512402 var644 var2506 var2338)) ; Statement: r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.type.Type getPropertyType(java.lang.String,java.lang.String)>($r5, r4) 
 ; Statement: if r7 == null goto $z0 = 0 
(assert (= var3530 null-var1752)) ; Cond: r7 == null 
(define-const var2271 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), propertyPath/790005799=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), getFromElement/-410081914=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], org.hibernate.hql.internal.ast.tree.FromElement), cast-from-var717-to-var901=([org.hibernate.hql.internal.ast.tree.DotNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode), getPropertyType/-25512402=([org.hibernate.hql.internal.ast.tree.FromElement, java.lang.String, java.lang.String], org.hibernate.type.Type)}
; {var717=org.hibernate.hql.internal.ast.tree.DotNode, var1546=r1, var2051=r3, var766=null_type, var108=$r0, var3437=$r2, var2338=r4, var2653=org.hibernate.hql.internal.ast.tree.FromElement, var901=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var644=$r6, var2506=$r5, var1752=org.hibernate.type.Type, var3530=r7, var2271=$z0}
; {org.hibernate.hql.internal.ast.tree.DotNode=var717, r1=var1546, r3=var2051, null_type=var766, $r0=var108, $r2=var3437, r4=var2338, org.hibernate.hql.internal.ast.tree.FromElement=var2653, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var901, $r6=var644, $r5=var2506, org.hibernate.type.Type=var1752, r7=var3530, $z0=var2271}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode;	r3 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.CharSequence)[2];	$r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	$r0[0] = $r2;	$r0[1] = r3;	r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(".", $r0);	$r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.hql.internal.ast.tree.FromElement getFromElement()>();	$r5 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.type.Type getPropertyType(java.lang.String,java.lang.String)>($r5, r4);	if r7 == null goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3