(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var2054 0)
(declare-sort var2632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isConstructor/-818451335 (var401) Bool)
(declare-fun selectionItems/-818451335 (var401) var2632)
(declare-fun var2632_iterator/-912451715 (var2632) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var401 var401)
(declare-const null-var2054 var2054)
(declare-const var3492 var401) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl 
(assert (not (= var3492 null-var401)))
(declare-const var3115 var2054) ; Statement: r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3115 null-var2054)))
(define-const var1735 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1735)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1735!1 String)
(assert (= var1735!1 ""))
(define-const var632 Bool (isConstructor/-818451335 var3492)) ; Statement: $z0 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor> 
 ; Statement: if $z0 == 0 goto r15 = "" 
(assert (= (ite var632 1 0) 0)) ; Cond: $z0 == 0 
(define-const var857 String "") ; Statement: r15 = "" 
(define-const var908 var2632 (selectionItems/-818451335 var3492)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: java.util.List selectionItems> 
(define-const var3261 Iterator (var2632_iterator/-912451715 var908)) ; Statement: $r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var424 Bool (Iterator_hasNext/-1669924200 var3261)) ; Statement: $z2 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $z1 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor> 
(assert (= (ite var424 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1746 Bool (isConstructor/-818451335 var3492)) ; Statement: $z1 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor> 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1746 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var643 String (toString/-2075883882 var1735!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isConstructor/-818451335=([org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl], boolean), selectionItems/-818451335=([org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl], java.util.List), var2632_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var401=org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl, var3492=r1, var2054=org.hibernate.query.criteria.internal.compile.RenderingContext, var3115=r6, var1735=$r0, var632=$z0, var857=r15, var2632=java.util.List, var908=$r2, var3261=$r14, var424=$z2, var1746=$z1, var643=$r3}
; {org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl=var401, r1=var3492, org.hibernate.query.criteria.internal.compile.RenderingContext=var2054, r6=var3115, $r0=var1735, $z0=var632, r15=var857, java.util.List=var2632, $r2=var908, $r14=var3261, $z2=var424, $z1=var1746, $r3=var643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl;	r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor>;	if $z0 == 0 goto r15 = "";	r15 = "";	$r2 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: java.util.List selectionItems>;	$r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $z1 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor>;	$z1 = r1.<org.hibernate.query.criteria.internal.expression.CompoundSelectionImpl: boolean isConstructor>;	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5