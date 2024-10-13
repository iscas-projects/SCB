(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var3437 0)
(declare-sort var2906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-286804076 (var318) var3437)
(declare-fun getAlias/951562137 (var2906) String)
(declare-fun cast-from-var3437-to-var2906 (var3437) var2906)
(declare-fun treatAsType/-286804076 (var318) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var318 var318)
(declare-const var2773 var318) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot 
(assert (not (= var2773 null-var318)))
(define-const var585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var585!1 String)
(assert (= var585!1 ""))
(assert true)
(define-const var1983 String (append/672562846 var585!1 "treat(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var585!2 String)
(assert (= var585!2 (str.++ var585!1 "treat(")))
(define-const var784 var3437 (original/-286804076 var2773)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot: org.hibernate.query.criteria.internal.path.RootImpl original> 
(assert true)
(define-const var2486 String (getAlias/951562137 (cast-from-var3437-to-var2906 var784))) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.RootImpl: java.lang.String getAlias()>() 
(assert true)
(define-const var617 String (append/672562846 var1983 var2486)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1983!1 String)
(assert (= var1983!1 (str.++ var1983 var2486)))
(assert true)
(define-const var395 String (append/672562846 var617 " as ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var617!1 String)
(assert (= var617!1 (str.++ var617 " as ")))
(define-const var255 ClassObject (treatAsType/-286804076 var2773)) ; Statement: $r6 = r1.<org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot: java.lang.Class treatAsType> 
(assert true)
(define-const var949 String (getName/-1958580599 var255)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1824 String (append/672562846 var395 var949)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var395!1 String)
(assert (= var395!1 (str.++ var395 var949)))
(assert true)
(define-const var1198 String (append/672562846 var1824 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1824!1 String)
(assert (= var1824!1 (str.++ var1824 ")")))
(assert true)
(define-const var3574 String (toString/-2075883882 var1198)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-286804076=([org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot], org.hibernate.query.criteria.internal.path.RootImpl), getAlias/951562137=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), cast-from-var3437-to-var2906=([org.hibernate.query.criteria.internal.path.RootImpl], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/-286804076=([org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var318=org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot, var2773=r1, var585=$r0, var1983=$r4, var3437=org.hibernate.query.criteria.internal.path.RootImpl, var784=$r2, var2906=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var2486=$r3, var617=$r5, var395=$r8, var255=$r6, var949=$r7, var1824=$r9, var1198=$r10, var3574=$r11}
; {org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot=var318, r1=var2773, $r0=var585, $r4=var1983, org.hibernate.query.criteria.internal.path.RootImpl=var3437, $r2=var784, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var2906, $r3=var2486, $r5=var617, $r8=var395, $r6=var255, $r7=var949, $r9=var1824, $r10=var1198, $r11=var3574}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r2 = r1.<org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot: org.hibernate.query.criteria.internal.path.RootImpl original>;	$r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.RootImpl: java.lang.String getAlias()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r6 = r1.<org.hibernate.query.criteria.internal.path.RootImpl$TreatedRoot: java.lang.Class treatAsType>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1