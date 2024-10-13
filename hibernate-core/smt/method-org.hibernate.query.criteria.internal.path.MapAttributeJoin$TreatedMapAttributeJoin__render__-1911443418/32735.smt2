(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var3577 0)
(declare-sort var2936 0)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-1600356764 (var318) var2936)
(declare-fun render/627455273 (var1412 var3577) String)
(declare-fun cast-from-var2936-to-var1412 (var2936) var1412)
(declare-fun treatAsType/-1600356764 (var318) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var318 var318)
(declare-const null-var3577 var3577)
(declare-const var3842 var318) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin 
(assert (not (= var3842 null-var318)))
(declare-const var2653 var3577) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2653 null-var3577)))
(define-const var557 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var557)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var557!1 String)
(assert (= var557!1 ""))
(assert true)
(define-const var3683 String (append/672562846 var557!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var557!2 String)
(assert (= var557!2 (str.++ var557!1 "treat(")))
(define-const var1195 var2936 (original/-1600356764 var3842)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: org.hibernate.query.criteria.internal.path.MapAttributeJoin original> 
(assert true)
(define-const var3882 String (render/627455273 (cast-from-var2936-to-var1412 var1195) var2653)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.MapAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var1615 String (append/672562846 var3683 var3882)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 var3882)))
(assert true)
(define-const var1638 String (append/672562846 var1615 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var1615!1 String)
(assert (= var1615!1 (str.++ var1615 " as ")))
(define-const var2203 ClassObject (treatAsType/-1600356764 var3842)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var2117 String (getName/-1958580599 var2203)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var835 String (append/672562846 var1638 var2117)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1638!1 String)
(assert (= var1638!1 (str.++ var1638 var2117)))
(assert true)
(define-const var336 String (append/672562846 var835 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var835!1 String)
(assert (= var835!1 (str.++ var835 ")")))
(assert true)
(define-const var3735 String (toString/-2075883882 var336)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-1600356764=([org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin], org.hibernate.query.criteria.internal.path.MapAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var2936-to-var1412=([org.hibernate.query.criteria.internal.path.MapAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/-1600356764=([org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var318=org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin, var3842=r1, var3577=org.hibernate.query.criteria.internal.compile.RenderingContext, var2653=r2, var557=$r0, var3683=$r5, var2936=org.hibernate.query.criteria.internal.path.MapAttributeJoin, var1195=$r3, var1412=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3882=$r4, var1615=$r6, var1638=$r9, var2203=$r7, var2117=$r8, var835=$r10, var336=$r11, var3735=$r12}
; {org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin=var318, r1=var3842, org.hibernate.query.criteria.internal.compile.RenderingContext=var3577, r2=var2653, $r0=var557, $r5=var3683, org.hibernate.query.criteria.internal.path.MapAttributeJoin=var2936, $r3=var1195, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var1412, $r4=var3882, $r6=var1615, $r9=var1638, $r7=var2203, $r8=var2117, $r10=var835, $r11=var336, $r12=var3735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: org.hibernate.query.criteria.internal.path.MapAttributeJoin original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.MapAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1