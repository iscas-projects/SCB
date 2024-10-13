(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getType/-1937663788 (var1426) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-670558341 (var1426) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1426 var1426)
(declare-const var1739 var1426) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue 
(assert (not (= var1739 null-var1426)))
(define-const var2720 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2720)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2720!1 String)
(assert (= var2720!1 ""))
(assert true)
(define-const var2033 String (getType/-1937663788 var1739)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>() 
(assert true)
(define-const var3385 String (append/672562846 var2720!1 var2033)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2720!2 String)
(assert (= var2720!2 (str.++ var2720!1 var2033)))
(assert true)
(define-const var2025 String (append/672562846 var3385 ".")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3385!1 String)
(assert (= var3385!1 (str.++ var3385 ".")))
(assert true)
(define-const var1807 String (getValue/-670558341 var1739)) ; Statement: $r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var1100 String (append/672562846 var2025 var1807)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2025!1 String)
(assert (= var2025!1 (str.++ var2025 var1807)))
(assert true)
(define-const var3314 String (toString/-2075883882 var1100)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getType/-1937663788=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-670558341=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1426=org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue, var1739=r1, var2720=$r0, var2033=$r2, var3385=$r3, var2025=$r5, var1807=$r4, var1100=$r6, var3314=$r7}
; {org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue=var1426, r1=var1739, $r0=var2720, $r2=var2033, $r3=var3385, $r5=var2025, $r4=var1807, $r6=var1100, $r7=var3314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1