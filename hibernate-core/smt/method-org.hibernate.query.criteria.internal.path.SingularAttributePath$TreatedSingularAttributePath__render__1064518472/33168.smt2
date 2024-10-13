(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var808 0)
(declare-sort var2377 0)
(declare-sort var283 0)
(declare-sort var196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-1629303546 (var808) var283)
(declare-fun render/1530814564 (var196 var2377) String)
(declare-fun cast-from-var283-to-var196 (var283) var196)
(declare-fun treatAsType/-1629303546 (var808) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var808 var808)
(declare-const null-var2377 var2377)
(declare-const var3622 var808) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath 
(assert (not (= var3622 null-var808)))
(declare-const var2334 var2377) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2334 null-var2377)))
(define-const var1132 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1132)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1132!1 String)
(assert (= var1132!1 ""))
(assert true)
(define-const var3107 String (append/672562846 var1132!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var1132!2 String)
(assert (= var1132!2 (str.++ var1132!1 "treat(")))
(define-const var3184 var283 (original/-1629303546 var3622)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath: org.hibernate.query.criteria.internal.path.SingularAttributePath original> 
(assert true)
(define-const var134 String (render/1530814564 (cast-from-var283-to-var196 var3184) var2334)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SingularAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var3280 String (append/672562846 var3107 var134)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3107!1 String)
(assert (= var3107!1 (str.++ var3107 var134)))
(assert true)
(define-const var3879 String (append/672562846 var3280 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3280!1 String)
(assert (= var3280!1 (str.++ var3280 " as ")))
(define-const var3562 ClassObject (treatAsType/-1629303546 var3622)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath: java.lang.Class treatAsType> 
(assert true)
(define-const var1860 String (getName/-1958580599 var3562)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var688 String (append/672562846 var3879 var1860)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3879!1 String)
(assert (= var3879!1 (str.++ var3879 var1860)))
(assert true)
(define-const var387 String (append/672562846 var688 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var688!1 String)
(assert (= var688!1 (str.++ var688 ")")))
(assert true)
(define-const var2922 String (toString/-2075883882 var387)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-1629303546=([org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath], org.hibernate.query.criteria.internal.path.SingularAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var283-to-var196=([org.hibernate.query.criteria.internal.path.SingularAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), treatAsType/-1629303546=([org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var808=org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath, var3622=r1, var2377=org.hibernate.query.criteria.internal.compile.RenderingContext, var2334=r2, var1132=$r0, var3107=$r5, var283=org.hibernate.query.criteria.internal.path.SingularAttributePath, var3184=$r3, var196=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var134=$r4, var3280=$r6, var3879=$r9, var3562=$r7, var1860=$r8, var688=$r10, var387=$r11, var2922=$r12}
; {org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath=var808, r1=var3622, org.hibernate.query.criteria.internal.compile.RenderingContext=var2377, r2=var2334, $r0=var1132, $r5=var3107, org.hibernate.query.criteria.internal.path.SingularAttributePath=var283, $r3=var3184, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var196, $r4=var134, $r6=var3280, $r9=var3879, $r7=var3562, $r8=var1860, $r10=var688, $r11=var387, $r12=var2922}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath: org.hibernate.query.criteria.internal.path.SingularAttributePath original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SingularAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributePath$TreatedSingularAttributePath: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1