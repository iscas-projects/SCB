(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3486) ClassObject)
(declare-fun cast-from-var409-to-var3486 (var409) var3486)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fullPath/1512897436 (var409) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var409 var409)
(declare-const var2760 var409) ; Statement: r1 := @this: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var2760 null-var409)))
(define-const var3734 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3734)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3734!1 String)
(assert (= var3734!1 ""))
(assert true)
(define-const var2802 ClassObject (getClass/1258963082 (cast-from-var409-to-var3486 var2760))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2359 String (getSimpleName/-390194377 var2802)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1218 String (append/672562846 var3734!1 var2359)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3734!2 String)
(assert (= var3734!2 (str.++ var3734!1 var2359)))
(assert true)
(define-const var2076 String (append/-1166366385 var1218 91)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1218!1 String)
(assert (str.prefixof var1218 var1218!1))
(define-const var1611 String (fullPath/1512897436 var2760)) ; Statement: $r5 = r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> 
(assert true)
(define-const var3743 String (append/672562846 var2076 var1611)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2076!1 String)
(assert (= var2076!1 (str.++ var2076 var1611)))
(assert true)
(define-const var309 String (append/-1166366385 var3743 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3743!1 String)
(assert (str.prefixof var3743 var3743!1))
(assert true)
(define-const var2320 String (toString/-2075883882 var309)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var409-to-var3486=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fullPath/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var409=org.hibernate.metamodel.model.domain.NavigableRole, var2760=r1, var3734=$r0, var3486=java.lang.Object, var2802=$r2, var2359=$r3, var1218=$r4, var2076=$r6, var1611=$r5, var3743=$r7, var309=$r8, var2320=$r9}
; {org.hibernate.metamodel.model.domain.NavigableRole=var409, r1=var2760, $r0=var3734, java.lang.Object=var3486, $r2=var2802, $r3=var2359, $r4=var1218, $r6=var2076, $r5=var1611, $r7=var3743, $r8=var309, $r9=var2320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.metamodel.model.domain.NavigableRole;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 = r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1