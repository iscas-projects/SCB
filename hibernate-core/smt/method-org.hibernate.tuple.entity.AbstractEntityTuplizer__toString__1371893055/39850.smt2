(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2633 0)
(declare-sort var1768 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1768) ClassObject)
(declare-fun cast-from-var2633-to-var1768 (var2633) var1768)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getEntityMetamodel/-1736108099 (var2633) var122)
(declare-fun getName/-276497613 (var122) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2633 var2633)
(declare-const var3590 var2633) ; Statement: r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var3590 null-var2633)))
(define-const var1712 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1712)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1712!1 String)
(assert (= var1712!1 ""))
(assert true)
(define-const var2742 ClassObject (getClass/1258963082 (cast-from-var2633-to-var1768 var3590))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1267 String (getName/-1958580599 var2742)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2373 String (append/672562846 var1712!1 var1267)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1712!2 String)
(assert (= var1712!2 (str.++ var1712!1 var1267)))
(assert true)
(define-const var1638 String (append/-1166366385 var2373 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2373!1 String)
(assert (str.prefixof var2373 var2373!1))
(assert true)
(define-const var901 var122 (getEntityMetamodel/-1736108099 var3590)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>() 
(assert true)
(define-const var1647 String (getName/-276497613 var901)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String getName()>() 
(assert true)
(define-const var648 String (append/672562846 var1638 var1647)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1638!1 String)
(assert (= var1638!1 (str.++ var1638 var1647)))
(assert true)
(define-const var2877 String (append/-1166366385 var648 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var648!1 String)
(assert (str.prefixof var648 var648!1))
(assert true)
(define-const var3423 String (toString/-2075883882 var2877)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2633-to-var1768=([org.hibernate.tuple.entity.AbstractEntityTuplizer], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getEntityMetamodel/-1736108099=([org.hibernate.tuple.entity.AbstractEntityTuplizer], org.hibernate.tuple.entity.EntityMetamodel), getName/-276497613=([org.hibernate.tuple.entity.EntityMetamodel], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2633=org.hibernate.tuple.entity.AbstractEntityTuplizer, var3590=r1, var1712=$r0, var1768=java.lang.Object, var2742=$r2, var1267=$r3, var2373=$r4, var1638=$r7, var122=org.hibernate.tuple.entity.EntityMetamodel, var901=$r5, var1647=$r6, var648=$r8, var2877=$r9, var3423=$r10}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var2633, r1=var3590, $r0=var1712, java.lang.Object=var1768, $r2=var2742, $r3=var1267, $r4=var2373, $r7=var1638, org.hibernate.tuple.entity.EntityMetamodel=var122, $r5=var901, $r6=var1647, $r8=var648, $r9=var2877, $r10=var3423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.tuple.entity.AbstractEntityTuplizer: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>();	$r6 = virtualinvoke $r5.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1