(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var521 0)
(declare-sort var1649 0)
(declare-sort var3950 0)
(declare-sort var2513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-1930529320 (var521) var3950)
(declare-fun render/627455273 (var2513 var1649) String)
(declare-fun cast-from-var3950-to-var2513 (var3950) var2513)
(declare-fun treatAsType/-1930529320 (var521) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var521 var521)
(declare-const null-var1649 var1649)
(declare-const var3056 var521) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin 
(assert (not (= var3056 null-var521)))
(declare-const var3834 var1649) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3834 null-var1649)))
(define-const var2920 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2920)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2920!1 String)
(assert (= var2920!1 ""))
(assert true)
(define-const var2406 String (append/672562846 var2920!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var2920!2 String)
(assert (= var2920!2 (str.++ var2920!1 "treat(")))
(define-const var3615 var3950 (original/-1930529320 var3056)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: org.hibernate.query.criteria.internal.path.SetAttributeJoin original> 
(assert true)
(define-const var2264 String (render/627455273 (cast-from-var3950-to-var2513 var3615) var3834)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SetAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var454 String (append/672562846 var2406 var2264)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2406!1 String)
(assert (= var2406!1 (str.++ var2406 var2264)))
(assert true)
(define-const var1331 String (append/672562846 var454 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var454!1 String)
(assert (= var454!1 (str.++ var454 " as ")))
(define-const var1092 ClassObject (treatAsType/-1930529320 var3056)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var713 String (getName/-1958580599 var1092)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3972 String (append/672562846 var1331 var713)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1331!1 String)
(assert (= var1331!1 (str.++ var1331 var713)))
(assert true)
(define-const var3631 String (append/672562846 var3972 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3972!1 String)
(assert (= var3972!1 (str.++ var3972 ")")))
(assert true)
(define-const var3920 String (toString/-2075883882 var3631)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-1930529320=([org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin], org.hibernate.query.criteria.internal.path.SetAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var3950-to-var2513=([org.hibernate.query.criteria.internal.path.SetAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/-1930529320=([org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var521=org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin, var3056=r1, var1649=org.hibernate.query.criteria.internal.compile.RenderingContext, var3834=r2, var2920=$r0, var2406=$r5, var3950=org.hibernate.query.criteria.internal.path.SetAttributeJoin, var3615=$r3, var2513=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var2264=$r4, var454=$r6, var1331=$r9, var1092=$r7, var713=$r8, var3972=$r10, var3631=$r11, var3920=$r12}
; {org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin=var521, r1=var3056, org.hibernate.query.criteria.internal.compile.RenderingContext=var1649, r2=var3834, $r0=var2920, $r5=var2406, org.hibernate.query.criteria.internal.path.SetAttributeJoin=var3950, $r3=var3615, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var2513, $r4=var2264, $r6=var454, $r9=var1331, $r7=var1092, $r8=var713, $r10=var3972, $r11=var3631, $r12=var3920}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: org.hibernate.query.criteria.internal.path.SetAttributeJoin original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SetAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1