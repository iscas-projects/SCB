(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var799 0)
(declare-sort var2671 0)
(declare-sort var1495 0)
(declare-sort var735 0)
(declare-sort var2703 0)
(declare-sort var286 0)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2671) void)
(declare-fun cast-from-var409-to-var2671 (var409) var2671)
(declare-fun var1495-init () var1495)
(declare-fun <init>/-201242697 (var1495) void)
(declare-fun cast-from-var1495-to-var735 (var1495) var735)
(declare-fun subTypes/2144179327 (var409) var735)
(declare-fun persister/2144179327 (var409) var799)
(declare-fun var286_getElementType/2079972765 (var286) var2703)
(declare-fun cast-from-var799-to-var286 (var799) var286)
(declare-fun var2703_isComponentType/-1157098182 (var2703) Bool)
(declare-fun var479-init () var479)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var286_getRole/758162468 (var286) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var479 String) void)
(declare-const null-var409 var409)
(declare-const null-var799 var799)
(declare-const var3733 var409) ; Statement: r0 := @this: org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider 
(assert (not (= var3733 null-var409)))
(declare-const var812 var799) ; Statement: r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection 
(assert (not (= var812 null-var799)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var409-to-var2671 var3733))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3733!1 var409)
(define-const var1380 var1495 var1495-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1380)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var1380!1 var1495)
(declare-const var3733!2 var409)
(assert (not (= var3733!2 null-var409)))
(assert (= (subTypes/2144179327 var3733!2) (cast-from-var1495-to-var735 var1380!1))) ; Statement: r0.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: java.util.Map subTypes> = $r1 
(declare-const var3733!3 var409)
(assert (not (= var3733!3 null-var409)))
(assert (= (persister/2144179327 var3733!3) var812)) ; Statement: r0.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: org.hibernate.persister.collection.QueryableCollection persister> = r2 
(define-const var3207 var2703 (var286_getElementType/2079972765 (cast-from-var799-to-var286 var812))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>() 
(define-const var2935 Bool (var2703_isComponentType/-1157098182 var3207)) ; Statement: $z0 = interfaceinvoke $r3.<org.hibernate.type.Type: boolean isComponentType()>() 
 ; Statement: if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>() 
(assert (not (not (= (ite var2935 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1686 var479 var479-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var3445 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3445)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3445!1 String)
(assert (= var3445!1 ""))
(assert true)
(define-const var2846 String (append/672562846 var3445!1 "persister for role ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persister for role ") 
(declare-const var3445!2 String)
(assert (= var3445!2 (str.++ var3445!1 "persister for role ")))
(define-const var3816 String (var286_getRole/758162468 (cast-from-var799-to-var286 var812))) ; Statement: $r13 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>() 
(assert true)
(define-const var267 String (append/672562846 var2846 var3816)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2846!1 String)
(assert (= var2846!1 (str.++ var2846 var3816)))
(assert true)
(define-const var3470 String (append/672562846 var267 " is not a collection-of-component")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a collection-of-component") 
(declare-const var267!1 String)
(assert (= var267!1 (str.++ var267 " is not a collection-of-component")))
(assert true)
(define-const var298 String (toString/-2075883882 var3470)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1686 var298)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var1686!1 var479)
(declare-const var298!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var409-to-var2671=([org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider], java.lang.Object), var1495-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1495-to-var735=([java.util.HashMap], java.util.Map), subTypes/2144179327=([org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider], java.util.Map), persister/2144179327=([org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider], org.hibernate.persister.collection.QueryableCollection), var286_getElementType/2079972765=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.type.Type), cast-from-var799-to-var286=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), var2703_isComponentType/-1157098182=([org.hibernate.type.Type], boolean), var479-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var286_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var409=org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider, var3733=r0, var799=org.hibernate.persister.collection.QueryableCollection, var812=r2, var2671=java.lang.Object, var1495=java.util.HashMap, var1380=$r1, var735=java.util.Map, var2703=org.hibernate.type.Type, var286=org.hibernate.persister.collection.CollectionPersister, var3207=$r3, var2935=$z0, var479=java.lang.IllegalArgumentException, var1686=$r11, var3445=$r12, var2846=$r14, var3816=$r13, var267=$r15, var3470=$r16, var298=$r17}
; {org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider=var409, r0=var3733, org.hibernate.persister.collection.QueryableCollection=var799, r2=var812, java.lang.Object=var2671, java.util.HashMap=var1495, $r1=var1380, java.util.Map=var735, org.hibernate.type.Type=var2703, org.hibernate.persister.collection.CollectionPersister=var286, $r3=var3207, $z0=var2935, java.lang.IllegalArgumentException=var479, $r11=var1686, $r12=var3445, $r14=var2846, $r13=var3816, $r15=var267, $r16=var3470, $r17=var298}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider;	r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: java.util.Map subTypes> = $r1;	r0.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: org.hibernate.persister.collection.QueryableCollection persister> = r2;	$r3 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>();	$z0 = interfaceinvoke $r3.<org.hibernate.type.Type: boolean isComponentType()>();	if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>();	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persister for role ");	$r13 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a collection-of-component");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r11
;block_num 2