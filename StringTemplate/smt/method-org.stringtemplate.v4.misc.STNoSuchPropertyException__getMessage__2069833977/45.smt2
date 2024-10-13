(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun o/-996753754 (var931) var357)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/-996753754 (var931) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var931 var931)
(declare-const null-var357 var357)
(declare-const var349 var931) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STNoSuchPropertyException 
(assert (not (= var349 null-var931)))
(define-const var1848 var357 (o/-996753754 var349)) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1848 null-var357)) ; Cond: $r1 == null 
(define-const var2174 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2174)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2174!1 String)
(assert (= var2174!1 ""))
(assert true)
(define-const var3756 String (append/672562846 var2174!1 "no such property: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such property: ") 
(declare-const var2174!2 String)
(assert (= var2174!2 (str.++ var2174!1 "no such property: ")))
(define-const var3664 String (propertyName/-996753754 var349)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.String propertyName> 
(assert true)
(define-const var195 String (append/672562846 var3756 var3664)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3756!1 String)
(assert (= var3756!1 (str.++ var3756 var3664)))
(assert true)
(define-const var947 String (toString/-2075883882 var195)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {o/-996753754=([org.stringtemplate.v4.misc.STNoSuchPropertyException], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/-996753754=([org.stringtemplate.v4.misc.STNoSuchPropertyException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var931=org.stringtemplate.v4.misc.STNoSuchPropertyException, var349=r0, var357=java.lang.Object, var1848=$r1, var2174=$r2, var3756=$r4, var3664=$r3, var195=$r5, var947=$r6}
; {org.stringtemplate.v4.misc.STNoSuchPropertyException=var931, r0=var349, java.lang.Object=var357, $r1=var1848, $r2=var2174, $r4=var3756, $r3=var3664, $r5=var195, $r6=var947}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STNoSuchPropertyException;	$r1 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such property: ");	$r3 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.String propertyName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2