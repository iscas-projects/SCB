(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var498 0)
(declare-sort var623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOrigin/-2076893813 (var498) var498)
(declare-fun getClassName/-733363923 (var498) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRole/-1186763148 (var498) String)
(declare-const null-var498 var498)
(declare-const null-var623 var623)
(declare-const var3376 var498) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var3376 null-var498)))
(declare-const var2855 var623) ; Statement: r5 := @parameter1: org.hibernate.persister.entity.Queryable 
(assert (not (= var2855 null-var623)))
(assert true)
(define-const var2688 var498 (getOrigin/-2076893813 var3376)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getOrigin()>() 
(assert true)
(define-const var2821 String (getClassName/-733363923 var2688)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassName()>() 
(assert true)
(define-const var2456 Int (length/-134980193 var2821)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var487 Int (+ var2456 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var2044 String (getRole/-1186763148 var3376)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getRole()>() 
(assert true)
(define-const var1431 Int (length/-134980193 var2044)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i1 < $i2 goto r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1) 
(assert (not (< var487 var1431))) ; Negate: Cond: i1 < $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getOrigin/-2076893813=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getClassName/-733363923=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), length/-134980193=([java.lang.String], int), getRole/-1186763148=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var498=org.hibernate.hql.internal.ast.tree.FromElement, var3376=r0, var623=org.hibernate.persister.entity.Queryable, var2855=r5, var2688=$r1, var2821=$r2, var2456=$i0, var487=i1, var2044=r3, var1431=$i2}
; {org.hibernate.hql.internal.ast.tree.FromElement=var498, r0=var3376, org.hibernate.persister.entity.Queryable=var623, r5=var2855, $r1=var2688, $r2=var2821, $i0=var2456, i1=var487, r3=var2044, $i2=var1431}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: org.hibernate.hql.internal.ast.tree.FromElement;	r5 := @parameter1: org.hibernate.persister.entity.Queryable;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getOrigin()>();	$r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassName()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i1 = $i0 + 1;	r3 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getRole()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	if i1 < $i2 goto r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1);	return null
;block_num 2