(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2886 0)
(declare-sort var867 0)
(declare-sort var2066 0)
(declare-sort var3757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var867-init () (Array Int var867))
(declare-fun cast-from-var867-to-var3757 (var867) var3757)
(declare-fun name/1633728430 (var3757) String)
(declare-fun cast-from-String-to-var867 (String) var867)
(declare-fun String_format/-647569892 (var2066 String (Array Int var867)) String)
(declare-const null-var2886 var2886)
(declare-const null-var867 var867)
(declare-const var2066-ROOT var2066)
(declare-const null-__Array__Int__var867__ (Array Int var867))
(declare-const var3528 var2886) ; Statement: r6 := @this: org.hibernate.metamodel.model.convert.internal.NamedEnumValueConverter 
(assert (not (= var3528 null-var2886)))
(declare-const var1591 var867) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1591 null-var867)))
(define-const var1780 var2066 var2066-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2348 (Array Int var867) arr-var867-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2528 var3757 (cast-from-var867-to-var3757 var1591)) ; Statement: $r2 = (java.lang.Enum) r1 
(assert true)
(define-const var1127 String (name/1633728430 var2528)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>() 
(declare-const var2348!1 (Array Int var867))
(assert (not (= var2348!1 null-__Array__Int__var867__)))
(assert (= (select var2348!1 0) (cast-from-String-to-var867 var1127))) ; Statement: $r0[0] = $r4 
(define-const var2148 String (String_format/-647569892 var1780 "\u0027%s\u0027" var2348!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "\'%s\'", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var867-init=([], java.lang.Object[]), cast-from-var867-to-var3757=([java.lang.Object], java.lang.Enum), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-String-to-var867=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2886=org.hibernate.metamodel.model.convert.internal.NamedEnumValueConverter, var3528=r6, var867=java.lang.Object, var1591=r1, var2066=java.util.Locale, var1780=$r3, var2348=$r0, var3757=java.lang.Enum, var2528=$r2, var1127=$r4, var2148=$r5}
; {org.hibernate.metamodel.model.convert.internal.NamedEnumValueConverter=var2886, r6=var3528, java.lang.Object=var867, r1=var1591, java.util.Locale=var2066, $r3=var1780, $r0=var2348, java.lang.Enum=var3757, $r2=var2528, $r4=var1127, $r5=var2148}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.metamodel.model.convert.internal.NamedEnumValueConverter;	r1 := @parameter0: java.lang.Object;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$r2 = (java.lang.Enum) r1;	$r4 = virtualinvoke $r2.<java.lang.Enum: java.lang.String name()>();	$r0[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "\'%s\'", $r0);	return $r5
;block_num 1