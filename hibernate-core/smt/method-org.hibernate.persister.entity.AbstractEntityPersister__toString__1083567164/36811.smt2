(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3818 0)
(declare-sort var1367 0)
(declare-sort var1152 0)
(declare-sort var775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1367) ClassObject)
(declare-fun cast-from-var3818-to-var1367 (var3818) var1367)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1152_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun entityMetamodel/824079012 (var3818) var775)
(declare-fun getName/-276497613 (var775) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3818 var3818)
(declare-const var3214 var3818) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var3214 null-var3818)))
(define-const var3530 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3530)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3530!1 String)
(assert (= var3530!1 ""))
(assert true)
(define-const var751 ClassObject (getClass/1258963082 (cast-from-var3818-to-var1367 var3214))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1778 String (getName/-1958580599 var751)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var136 String (var1152_unqualify/-238008441 var1778)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3) 
(assert true)
(define-const var2901 String (append/672562846 var3530!1 var136)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3530!2 String)
(assert (= var3530!2 (str.++ var3530!1 var136)))
(assert true)
(define-const var1705 String (append/-1166366385 var2901 40)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2901!1 String)
(assert (str.prefixof var2901 var2901!1))
(define-const var2211 var775 (entityMetamodel/824079012 var3214)) ; Statement: $r6 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel> 
(assert true)
(define-const var743 String (getName/-276497613 var2211)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String getName()>() 
(assert true)
(define-const var1204 String (append/672562846 var1705 var743)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1705!1 String)
(assert (= var1705!1 (str.++ var1705 var743)))
(assert true)
(define-const var564 String (append/-1166366385 var1204 41)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1204!1 String)
(assert (str.prefixof var1204 var1204!1))
(assert true)
(define-const var375 String (toString/-2075883882 var564)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3818-to-var1367=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var1152_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), entityMetamodel/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.tuple.entity.EntityMetamodel), getName/-276497613=([org.hibernate.tuple.entity.EntityMetamodel], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3818=org.hibernate.persister.entity.AbstractEntityPersister, var3214=r1, var3530=$r0, var1367=java.lang.Object, var751=$r2, var1778=$r3, var1152=org.hibernate.internal.util.StringHelper, var136=$r4, var2901=$r5, var1705=$r8, var775=org.hibernate.tuple.entity.EntityMetamodel, var2211=$r6, var743=$r7, var1204=$r9, var564=$r10, var375=$r11}
; {org.hibernate.persister.entity.AbstractEntityPersister=var3818, r1=var3214, $r0=var3530, java.lang.Object=var1367, $r2=var751, $r3=var1778, org.hibernate.internal.util.StringHelper=var1152, $r4=var136, $r5=var2901, $r8=var1705, org.hibernate.tuple.entity.EntityMetamodel=var775, $r6=var2211, $r7=var743, $r9=var1204, $r10=var564, $r11=var375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r6 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.tuple.entity.EntityMetamodel entityMetamodel>;	$r7 = virtualinvoke $r6.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1