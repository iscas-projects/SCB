(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var1722 0)
(declare-sort var761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseMutableType/-617502775 (var881) var1722)
(declare-fun getName/-1292724027 (var761) String)
(declare-fun cast-from-var1722-to-var761 (var1722) var761)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var881 var881)
(declare-const var260 var881) ; Statement: r1 := @this: org.hibernate.type.AdaptedImmutableType 
(assert (not (= var260 null-var881)))
(define-const var480 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var480)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var480!1 String)
(assert (= var480!1 ""))
(assert true)
(define-const var1781 String (append/672562846 var480!1 "imm_")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("imm_") 
(declare-const var480!2 String)
(assert (= var480!2 (str.++ var480!1 "imm_")))
(define-const var1866 var1722 (baseMutableType/-617502775 var260)) ; Statement: $r2 = r1.<org.hibernate.type.AdaptedImmutableType: org.hibernate.type.AbstractStandardBasicType baseMutableType> 
(assert true)
(define-const var242 String (getName/-1292724027 (cast-from-var1722-to-var761 var1866))) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.type.AbstractStandardBasicType: java.lang.String getName()>() 
(assert true)
(define-const var66 String (append/672562846 var1781 var242)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1781!1 String)
(assert (= var1781!1 (str.++ var1781 var242)))
(assert true)
(define-const var1959 String (toString/-2075883882 var66)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseMutableType/-617502775=([org.hibernate.type.AdaptedImmutableType], org.hibernate.type.AbstractStandardBasicType), getName/-1292724027=([org.hibernate.type.Type], java.lang.String), cast-from-var1722-to-var761=([org.hibernate.type.AbstractStandardBasicType], org.hibernate.type.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var881=org.hibernate.type.AdaptedImmutableType, var260=r1, var480=$r0, var1781=$r4, var1722=org.hibernate.type.AbstractStandardBasicType, var1866=$r2, var761=org.hibernate.type.Type, var242=$r3, var66=$r5, var1959=$r6}
; {org.hibernate.type.AdaptedImmutableType=var881, r1=var260, $r0=var480, $r4=var1781, org.hibernate.type.AbstractStandardBasicType=var1722, $r2=var1866, org.hibernate.type.Type=var761, $r3=var242, $r5=var66, $r6=var1959}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.AdaptedImmutableType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("imm_");	$r2 = r1.<org.hibernate.type.AdaptedImmutableType: org.hibernate.type.AbstractStandardBasicType baseMutableType>;	$r3 = virtualinvoke $r2.<org.hibernate.type.AbstractStandardBasicType: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1