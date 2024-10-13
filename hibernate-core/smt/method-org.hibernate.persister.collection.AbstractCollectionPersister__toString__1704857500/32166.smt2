(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3673 0)
(declare-sort var3656 0)
(declare-sort var3888 0)
(declare-sort var2782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3656) ClassObject)
(declare-fun cast-from-var3673-to-var3656 (var3673) var3656)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3888_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun navigableRole/835828228 (var3673) var2782)
(declare-fun getFullPath/1660193712 (var2782) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3673 var3673)
(declare-const var865 var3673) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var865 null-var3673)))
(define-const var2879 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2879)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2879!1 String)
(assert (= var2879!1 ""))
(assert true)
(define-const var3262 ClassObject (getClass/1258963082 (cast-from-var3673-to-var3656 var865))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1026 String (getName/-1958580599 var3262)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var1722 String (var3888_unqualify/-238008441 var1026)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3) 
(assert true)
(define-const var594 String (append/672562846 var2879!1 var1722)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2879!2 String)
(assert (= var2879!2 (str.++ var2879!1 var1722)))
(assert true)
(define-const var421 String (append/-1166366385 var594 40)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var594!1 String)
(assert (str.prefixof var594 var594!1))
(define-const var1155 var2782 (navigableRole/835828228 var865)) ; Statement: $r6 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole> 
(assert true)
(define-const var915 String (getFullPath/1660193712 var1155)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var2231 String (append/672562846 var421 var915)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var421!1 String)
(assert (= var421!1 (str.++ var421 var915)))
(assert true)
(define-const var3306 String (append/-1166366385 var2231 41)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2231!1 String)
(assert (str.prefixof var2231 var2231!1))
(assert true)
(define-const var2751 String (toString/-2075883882 var3306)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3673-to-var3656=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var3888_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), navigableRole/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.metamodel.model.domain.NavigableRole), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3673=org.hibernate.persister.collection.AbstractCollectionPersister, var865=r1, var2879=$r0, var3656=java.lang.Object, var3262=$r2, var1026=$r3, var3888=org.hibernate.internal.util.StringHelper, var1722=$r4, var594=$r5, var421=$r8, var2782=org.hibernate.metamodel.model.domain.NavigableRole, var1155=$r6, var915=$r7, var2231=$r9, var3306=$r10, var2751=$r11}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3673, r1=var865, $r0=var2879, java.lang.Object=var3656, $r2=var3262, $r3=var1026, org.hibernate.internal.util.StringHelper=var3888, $r4=var1722, $r5=var594, $r8=var421, org.hibernate.metamodel.model.domain.NavigableRole=var2782, $r6=var1155, $r7=var915, $r9=var2231, $r10=var3306, $r11=var2751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r6 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole>;	$r7 = virtualinvoke $r6.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1