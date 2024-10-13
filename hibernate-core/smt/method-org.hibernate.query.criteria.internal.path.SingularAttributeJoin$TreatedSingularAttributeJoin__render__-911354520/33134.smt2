(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1601 0)
(declare-sort var3483 0)
(declare-sort var392 0)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/1015072550 (var1601) var392)
(declare-fun render/627455273 (var3857 var3483) String)
(declare-fun cast-from-var392-to-var3857 (var392) var3857)
(declare-fun treatAsType/1015072550 (var1601) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1601 var1601)
(declare-const null-var3483 var3483)
(declare-const var1142 var1601) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin 
(assert (not (= var1142 null-var1601)))
(declare-const var3956 var3483) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3956 null-var3483)))
(define-const var3652 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3652)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3652!1 String)
(assert (= var3652!1 ""))
(assert true)
(define-const var332 String (append/672562846 var3652!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var3652!2 String)
(assert (= var3652!2 (str.++ var3652!1 "treat(")))
(define-const var1517 var392 (original/1015072550 var1142)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin: org.hibernate.query.criteria.internal.path.SingularAttributeJoin original> 
(assert true)
(define-const var3882 String (render/627455273 (cast-from-var392-to-var3857 var1517) var3956)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var3989 String (append/672562846 var332 var3882)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var332!1 String)
(assert (= var332!1 (str.++ var332 var3882)))
(assert true)
(define-const var1810 String (append/672562846 var3989 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3989!1 String)
(assert (= var3989!1 (str.++ var3989 " as ")))
(define-const var3410 ClassObject (treatAsType/1015072550 var1142)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var31 String (getName/-1958580599 var3410)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2327 String (append/672562846 var1810 var31)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1810!1 String)
(assert (= var1810!1 (str.++ var1810 var31)))
(assert true)
(define-const var1455 String (append/672562846 var2327 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2327!1 String)
(assert (= var2327!1 (str.++ var2327 ")")))
(assert true)
(define-const var2507 String (toString/-2075883882 var1455)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/1015072550=([org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin], org.hibernate.query.criteria.internal.path.SingularAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var392-to-var3857=([org.hibernate.query.criteria.internal.path.SingularAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/1015072550=([org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1601=org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin, var1142=r1, var3483=org.hibernate.query.criteria.internal.compile.RenderingContext, var3956=r2, var3652=$r0, var332=$r5, var392=org.hibernate.query.criteria.internal.path.SingularAttributeJoin, var1517=$r3, var3857=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3882=$r4, var3989=$r6, var1810=$r9, var3410=$r7, var31=$r8, var2327=$r10, var1455=$r11, var2507=$r12}
; {org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin=var1601, r1=var1142, org.hibernate.query.criteria.internal.compile.RenderingContext=var3483, r2=var3956, $r0=var3652, $r5=var332, org.hibernate.query.criteria.internal.path.SingularAttributeJoin=var392, $r3=var1517, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var3857, $r4=var3882, $r6=var3989, $r9=var1810, $r7=var3410, $r8=var31, $r10=var2327, $r11=var1455, $r12=var2507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin: org.hibernate.query.criteria.internal.path.SingularAttributeJoin original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.SingularAttributeJoin$TreatedSingularAttributeJoin: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1