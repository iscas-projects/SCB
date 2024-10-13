(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var968 0)
(declare-sort var684 0)
(declare-sort var793 0)
(declare-sort var376 0)
(declare-sort var2086 0)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2086-init () var2086)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1949) String)
(declare-fun cast-from-var793-to-var1949 (var793) var1949)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2086 String) void)
(declare-const null-var968 var968)
(declare-const null-String String)
(declare-const null-var793 var793)
(declare-const null-var376 var376)
(declare-const var92 var968) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory 
(assert (not (= var92 null-var968)))
(declare-const var2739 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2739 null-String)))
(declare-const var1687 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1687 null-String)))
(declare-const var3662 var793) ; Statement: r0 := @parameter2: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3662 null-var793)))
(declare-const var260 var376) ; Statement: r5 := @parameter3: org.hibernate.type.EntityType 
(assert (not (= var260 null-var376)))
(declare-const var187 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var187 null-String)))
(define-const var2730 Bool true) ; Statement: $z0 = r0 instanceof org.hibernate.persister.entity.Joinable 
 ; Statement: if $z0 != 0 goto r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0) 
(assert (not (not (= (ite var2730 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1225 var2086 var2086-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var271 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var271)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var271!1 String)
(assert (= var271!1 ""))
(assert true)
(define-const var3127 String (append/672562846 var271!1 "EntityPersister ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityPersister ") 
(declare-const var271!2 String)
(assert (= var271!2 (str.++ var271!1 "EntityPersister ")))
(assert true)
(define-const var2541 String (append/-1031950772 var3127 (cast-from-var793-to-var1949 var3662))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3127!1 String)
(assert (str.prefixof var3127 var3127!1))
(assert true)
(define-const var278 String (append/672562846 var2541 " does not implement Joinable!")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement Joinable!") 
(declare-const var2541!1 String)
(assert (= var2541!1 (str.++ var2541 " does not implement Joinable!")))
(assert true)
(define-const var1451 String (toString/-2075883882 var278)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1225 var1451)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1225!1 var2086)
(declare-const var1451!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2086-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var793-to-var1949=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var968=org.hibernate.hql.internal.ast.tree.FromElementFactory, var92=r1, var2739=r3, var684=null_type, var1687=r4, var793=org.hibernate.persister.entity.EntityPersister, var3662=r0, var376=org.hibernate.type.EntityType, var260=r5, var187=r6, var2730=$z0, var2086=java.lang.IllegalArgumentException, var1225=$r7, var271=$r8, var3127=$r9, var1949=java.lang.Object, var2541=$r10, var278=$r11, var1451=$r12}
; {org.hibernate.hql.internal.ast.tree.FromElementFactory=var968, r1=var92, r3=var2739, null_type=var684, r4=var1687, org.hibernate.persister.entity.EntityPersister=var793, r0=var3662, org.hibernate.type.EntityType=var376, r5=var260, r6=var187, $z0=var2730, java.lang.IllegalArgumentException=var2086, $r7=var1225, $r8=var271, $r9=var3127, java.lang.Object=var1949, $r10=var2541, $r11=var278, $r12=var1451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r0 := @parameter2: org.hibernate.persister.entity.EntityPersister;	r5 := @parameter3: org.hibernate.type.EntityType;	r6 := @parameter4: java.lang.String;	$z0 = r0 instanceof org.hibernate.persister.entity.Joinable;	if $z0 != 0 goto r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0);	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityPersister ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement Joinable!");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2