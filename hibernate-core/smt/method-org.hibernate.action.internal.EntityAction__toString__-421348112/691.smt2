(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort var461 0)
(declare-sort var838 0)
(declare-sort var3182 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var461) ClassObject)
(declare-fun cast-from-var2136-to-var461 (var2136) var461)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var838_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/369343576 (var2136) String)
(declare-fun id/369343576 (var2136) var3182)
(declare-fun var2201_infoString/1203698788 (String var3182) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2136 var2136)
(declare-const var2574 var2136) ; Statement: r1 := @this: org.hibernate.action.internal.EntityAction 
(assert (not (= var2574 null-var2136)))
(define-const var3047 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3047)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3047!1 String)
(assert (= var3047!1 ""))
(assert true)
(define-const var2812 ClassObject (getClass/1258963082 (cast-from-var2136-to-var461 var2574))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2897 String (getName/-1958580599 var2812)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var3617 String (var838_unqualify/-238008441 var2897)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3) 
(assert true)
(define-const var1605 String (append/672562846 var3047!1 var3617)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3047!2 String)
(assert (= var3047!2 (str.++ var3047!1 var3617)))
(define-const var3995 String (entityName/369343576 var2574)) ; Statement: $r6 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName> 
(define-const var3463 var3182 (id/369343576 var2574)) ; Statement: $r5 = r1.<org.hibernate.action.internal.EntityAction: java.io.Serializable id> 
(define-const var1995 String (var2201_infoString/1203698788 var3995 var3463)) ; Statement: $r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r6, $r5) 
(assert true)
(define-const var2905 String (append/672562846 var1605 var1995)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1605!1 String)
(assert (= var1605!1 (str.++ var1605 var1995)))
(assert true)
(define-const var3475 String (toString/-2075883882 var2905)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2136-to-var461=([org.hibernate.action.internal.EntityAction], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var838_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/369343576=([org.hibernate.action.internal.EntityAction], java.lang.String), id/369343576=([org.hibernate.action.internal.EntityAction], java.io.Serializable), var2201_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2136=org.hibernate.action.internal.EntityAction, var2574=r1, var3047=$r0, var461=java.lang.Object, var2812=$r2, var2897=$r3, var838=org.hibernate.internal.util.StringHelper, var3617=$r4, var1605=$r8, var3995=$r6, var3182=java.io.Serializable, var3463=$r5, var2201=org.hibernate.pretty.MessageHelper, var1995=$r7, var2905=$r9, var3475=$r10}
; {org.hibernate.action.internal.EntityAction=var2136, r1=var2574, $r0=var3047, java.lang.Object=var461, $r2=var2812, $r3=var2897, org.hibernate.internal.util.StringHelper=var838, $r4=var3617, $r8=var1605, $r6=var3995, java.io.Serializable=var3182, $r5=var3463, org.hibernate.pretty.MessageHelper=var2201, $r7=var1995, $r9=var2905, $r10=var3475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.action.internal.EntityAction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName>;	$r5 = r1.<org.hibernate.action.internal.EntityAction: java.io.Serializable id>;	$r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1