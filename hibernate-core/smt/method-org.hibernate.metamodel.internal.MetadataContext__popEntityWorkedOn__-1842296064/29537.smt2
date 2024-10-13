(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3316 0)
(declare-sort var2219 0)
(declare-sort var3576 0)
(declare-sort var272 0)
(declare-sort var3461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stackOfPersistentClassesBeingProcessed/248942207 (var3316) var3576)
(declare-fun var3576_size/-959786421 (var3576) Int)
(declare-fun var3576_remove/1853576941 (var3576 Int) var272)
(declare-fun cast-from-var272-to-var2219 (var272) var2219)
(declare-fun var3461-init () var3461)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-2043384209 (var2219) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3461 String) void)
(declare-const null-var3316 var3316)
(declare-const null-var2219 var2219)
(declare-const var1222 var3316) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetadataContext 
(assert (not (= var1222 null-var3316)))
(declare-const var2458 var2219) ; Statement: r5 := @parameter0: org.hibernate.mapping.PersistentClass 
(assert (not (= var2458 null-var2219)))
(define-const var1267 var3576 (stackOfPersistentClassesBeingProcessed/248942207 var1222)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed> 
(define-const var799 var3576 (stackOfPersistentClassesBeingProcessed/248942207 var1222)) ; Statement: $r1 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed> 
(define-const var1555 Int (var3576_size/-959786421 var799)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3672 Int (- var1555 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1811 var272 (var3576_remove/1853576941 var1267 var3672)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var3089 var2219 (cast-from-var272-to-var2219 var1811)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 == r5 goto return 
(assert (not (= var3089 var2458))) ; Negate: Cond: r4 == r5  
(define-const var2516 var3461 var3461-init) ; Statement: $r6 = new org.hibernate.AssertionFailure 
(define-const var2295 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2295)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2295!1 String)
(assert (= var2295!1 ""))
(assert true)
(define-const var2611 String (append/672562846 var2295!1 "Inconsistent popping: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Inconsistent popping: ") 
(declare-const var2295!2 String)
(assert (= var2295!2 (str.++ var2295!1 "Inconsistent popping: ")))
(assert true)
(define-const var240 String (getEntityName/-2043384209 var2458)) ; Statement: $r8 = virtualinvoke r5.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var780 String (append/672562846 var2611 var240)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2611!1 String)
(assert (= var2611!1 (str.++ var2611 var240)))
(assert true)
(define-const var2312 String (append/672562846 var780 " instead of ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead of ") 
(declare-const var780!1 String)
(assert (= var780!1 (str.++ var780 " instead of ")))
(assert true)
(define-const var520 String (getEntityName/-2043384209 var3089)) ; Statement: $r11 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var516 String (append/672562846 var2312 var520)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var520)))
(assert true)
(define-const var2464 String (toString/-2075883882 var516)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2516 var2464)) ; Statement: specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r14) 

(declare-const var2516!1 var3461)
(declare-const var2464!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {stackOfPersistentClassesBeingProcessed/248942207=([org.hibernate.metamodel.internal.MetadataContext], java.util.List), var3576_size/-959786421=([java.util.List], int), var3576_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var272-to-var2219=([java.lang.Object], org.hibernate.mapping.PersistentClass), var3461-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var3316=org.hibernate.metamodel.internal.MetadataContext, var1222=r0, var2219=org.hibernate.mapping.PersistentClass, var2458=r5, var3576=java.util.List, var1267=$r2, var799=$r1, var1555=$i0, var3672=$i1, var272=java.lang.Object, var1811=$r3, var3089=r4, var3461=org.hibernate.AssertionFailure, var2516=$r6, var2295=$r7, var2611=$r9, var240=$r8, var780=$r10, var2312=$r12, var520=$r11, var516=$r13, var2464=$r14}
; {org.hibernate.metamodel.internal.MetadataContext=var3316, r0=var1222, org.hibernate.mapping.PersistentClass=var2219, r5=var2458, java.util.List=var3576, $r2=var1267, $r1=var799, $i0=var1555, $i1=var3672, java.lang.Object=var272, $r3=var1811, r4=var3089, org.hibernate.AssertionFailure=var3461, $r6=var2516, $r7=var2295, $r9=var2611, $r8=var240, $r10=var780, $r12=var2312, $r11=var520, $r13=var516, $r14=var2464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetadataContext;	r5 := @parameter0: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed>;	$r1 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 == r5 goto return;	$r6 = new org.hibernate.AssertionFailure;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Inconsistent popping: ");	$r8 = virtualinvoke r5.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead of ");	$r11 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r14);	throw $r6
;block_num 2