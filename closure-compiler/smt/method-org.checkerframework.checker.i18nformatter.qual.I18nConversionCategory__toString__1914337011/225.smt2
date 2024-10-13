(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort var2586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun name/1633728430 (var2586) String)
(declare-fun cast-from-var1449-to-var2586 (var1449) var2586)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun types/-1470447717 (var1449) (Array Int ClassObject))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1449 var1449)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3098 var1449) ; Statement: r1 := @this: org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory 
(assert (not (= var3098 null-var1449)))
(define-const var465 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3297 String (name/1633728430 (cast-from-var1449-to-var2586 var3098))) ; Statement: $r2 = virtualinvoke r1.<org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: java.lang.String name()>() 
(assert true)
;(assert (<init>/-1061048412 var465 var3297)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var465!1 String)
(assert (= var465!1 var3297))
(define-const var1042 (Array Int ClassObject) (types/-1470447717 var3098)) ; Statement: $r3 = r1.<org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: java.lang.Class[] types> 
 ; Statement: if $r3 != null goto $r4 = new java.util.StringJoiner 
(assert (not (not (= var1042 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r3 != null  
(assert true)
;(assert (append/672562846 var465!1 " conversion category (all types)")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" conversion category (all types)") 
(declare-const var465!2 String)
(assert (= var465!2 (str.++ var465!1 " conversion category (all types)")))
 ; Statement: goto [?= $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3732 String (toString/-2075883882 var465!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1449-to-var2586=([org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory], java.lang.Enum), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), types/-1470447717=([org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory], java.lang.Class[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1449=org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory, var3098=r1, var465=$r0, var2586=java.lang.Enum, var3297=$r2, var1042=$r3, var3732=$r6}
; {org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory=var1449, r1=var3098, $r0=var465, java.lang.Enum=var2586, $r2=var3297, $r3=var1042, $r6=var3732}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: java.lang.String name()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = r1.<org.checkerframework.checker.i18nformatter.qual.I18nConversionCategory: java.lang.Class[] types>;	if $r3 != null goto $r4 = new java.util.StringJoiner;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" conversion category (all types)");	goto [?= $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3