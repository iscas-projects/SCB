(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var957 0)
(declare-sort var635 0)
(declare-sort var1874 0)
(declare-sort var3391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/-1743410042 (var1874 var3391) String)
(declare-fun cast-from-var804-to-var1874 (var804) var1874)
(declare-fun cast-from-var957-to-var3391 (var957) var3391)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var804 var804)
(declare-const null-var957 var957)
(declare-const null-var635 var635)
(declare-const var1118 var804) ; Statement: r1 := @this: org.hibernate.type.CharacterNCharType 
(assert (not (= var1118 null-var804)))
(declare-const var2063 var957) ; Statement: r2 := @parameter0: java.lang.Character 
(assert (not (= var2063 null-var957)))
(declare-const var948 var635) ; Statement: r8 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var948 null-var635)))
(define-const var1810 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1810)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1810!1 String)
(assert (= var1810!1 ""))
(assert true)
(define-const var3190 String (append/-1166366385 var1810!1 39)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1810!2 String)
(assert (str.prefixof var1810!1 var1810!2))
(assert true)
(define-const var1780 String (toString/-1743410042 (cast-from-var804-to-var1874 var1118) (cast-from-var957-to-var3391 var2063))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.type.CharacterNCharType: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var2521 String (append/672562846 var3190 var1780)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3190!1 String)
(assert (= var3190!1 (str.++ var3190 var1780)))
(assert true)
(define-const var530 String (append/-1166366385 var2521 39)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2521!1 String)
(assert (str.prefixof var2521 var2521!1))
(assert true)
(define-const var3199 String (toString/-2075883882 var530)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-1743410042=([org.hibernate.type.AbstractStandardBasicType, java.lang.Object], java.lang.String), cast-from-var804-to-var1874=([org.hibernate.type.CharacterNCharType], org.hibernate.type.AbstractStandardBasicType), cast-from-var957-to-var3391=([java.lang.Character], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var804=org.hibernate.type.CharacterNCharType, var1118=r1, var957=java.lang.Character, var2063=r2, var635=org.hibernate.dialect.Dialect, var948=r8, var1810=$r0, var3190=$r4, var1874=org.hibernate.type.AbstractStandardBasicType, var3391=java.lang.Object, var1780=$r3, var2521=$r5, var530=$r6, var3199=$r7}
; {org.hibernate.type.CharacterNCharType=var804, r1=var1118, java.lang.Character=var957, r2=var2063, org.hibernate.dialect.Dialect=var635, r8=var948, $r0=var1810, $r4=var3190, org.hibernate.type.AbstractStandardBasicType=var1874, java.lang.Object=var3391, $r3=var1780, $r5=var2521, $r6=var530, $r7=var3199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.hibernate.type.AbstractStandardBasicType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CharacterNCharType;	r2 := @parameter0: java.lang.Character;	r8 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r3 = virtualinvoke r1.<org.hibernate.type.CharacterNCharType: java.lang.String toString(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1