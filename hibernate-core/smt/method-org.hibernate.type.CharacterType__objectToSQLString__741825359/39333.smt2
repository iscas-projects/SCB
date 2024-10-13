(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var53 0)
(declare-sort var2145 0)
(declare-sort var700 0)
(declare-sort var2304 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/-1743410042 (var2304 var2662) String)
(declare-fun cast-from-var53-to-var2304 (var53) var2304)
(declare-fun cast-from-var2145-to-var2662 (var2145) var2662)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var53 var53)
(declare-const null-var2145 var2145)
(declare-const null-var700 var700)
(declare-const var512 var53) ; Statement: r1 := @this: org.hibernate.type.CharacterType 
(assert (not (= var512 null-var53)))
(declare-const var3785 var2145) ; Statement: r2 := @parameter0: java.lang.Character 
(assert (not (= var3785 null-var2145)))
(declare-const var1573 var700) ; Statement: r8 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var1573 null-var700)))
(define-const var3799 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3799)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3799!1 String)
(assert (= var3799!1 ""))
(assert true)
(define-const var3903 String (append/-1166366385 var3799!1 39)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3799!2 String)
(assert (str.prefixof var3799!1 var3799!2))
(assert true)
(define-const var3028 String (toString/-1743410042 (cast-from-var53-to-var2304 var512) (cast-from-var2145-to-var2662 var3785))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.type.CharacterType: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var531 String (append/672562846 var3903 var3028)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3903!1 String)
(assert (= var3903!1 (str.++ var3903 var3028)))
(assert true)
(define-const var2600 String (append/-1166366385 var531 39)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var531!1 String)
(assert (str.prefixof var531 var531!1))
(assert true)
(define-const var2577 String (toString/-2075883882 var2600)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-1743410042=([org.hibernate.type.AbstractStandardBasicType, java.lang.Object], java.lang.String), cast-from-var53-to-var2304=([org.hibernate.type.CharacterType], org.hibernate.type.AbstractStandardBasicType), cast-from-var2145-to-var2662=([java.lang.Character], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var53=org.hibernate.type.CharacterType, var512=r1, var2145=java.lang.Character, var3785=r2, var700=org.hibernate.dialect.Dialect, var1573=r8, var3799=$r0, var3903=$r4, var2304=org.hibernate.type.AbstractStandardBasicType, var2662=java.lang.Object, var3028=$r3, var531=$r5, var2600=$r6, var2577=$r7}
; {org.hibernate.type.CharacterType=var53, r1=var512, java.lang.Character=var2145, r2=var3785, org.hibernate.dialect.Dialect=var700, r8=var1573, $r0=var3799, $r4=var3903, org.hibernate.type.AbstractStandardBasicType=var2304, java.lang.Object=var2662, $r3=var3028, $r5=var531, $r6=var2600, $r7=var2577}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.hibernate.type.AbstractStandardBasicType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CharacterType;	r2 := @parameter0: java.lang.Character;	r8 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r3 = virtualinvoke r1.<org.hibernate.type.CharacterType: java.lang.String toString(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1