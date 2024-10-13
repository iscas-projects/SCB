(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2174 0)
(declare-sort var2256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun o/-996753754 (var2174) var2256)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2256) ClassObject)
(declare-fun append/-1031950772 (String var2256) String)
(declare-fun cast-from-ClassObject-to-var2256 (ClassObject) var2256)
(declare-fun propertyName/-996753754 (var2174) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2174 var2174)
(declare-const null-var2256 var2256)
(declare-const var284 var2174) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STNoSuchPropertyException 
(assert (not (= var284 null-var2174)))
(define-const var3568 var2256 (o/-996753754 var284)) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3568 null-var2256))) ; Negate: Cond: $r1 == null  
(define-const var3890 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3890)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3890!1 String)
(assert (= var3890!1 ""))
(assert true)
(define-const var2030 String (append/672562846 var3890!1 "object ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object ") 
(declare-const var3890!2 String)
(assert (= var3890!2 (str.++ var3890!1 "object ")))
(define-const var755 var2256 (o/-996753754 var284)) ; Statement: $r8 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o> 
(assert true)
(define-const var416 ClassObject (getClass/1258963082 var755)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var288 String (append/-1031950772 var2030 (cast-from-ClassObject-to-var2256 var416))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2030!1 String)
(assert (str.prefixof var2030 var2030!1))
(assert true)
(define-const var3427 String (append/672562846 var288 " has no ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no ") 
(declare-const var288!1 String)
(assert (= var288!1 (str.++ var288 " has no ")))
(define-const var474 String (propertyName/-996753754 var284)) ; Statement: $r12 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.String propertyName> 
(assert true)
(define-const var1019 String (append/672562846 var3427 var474)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3427!1 String)
(assert (= var3427!1 (str.++ var3427 var474)))
(assert true)
(define-const var574 String (append/672562846 var1019 " property")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" property") 
(declare-const var1019!1 String)
(assert (= var1019!1 (str.++ var1019 " property")))
(assert true)
(define-const var3727 String (toString/-2075883882 var574)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {o/-996753754=([org.stringtemplate.v4.misc.STNoSuchPropertyException], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2256=([java.lang.Class], java.lang.Object), propertyName/-996753754=([org.stringtemplate.v4.misc.STNoSuchPropertyException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2174=org.stringtemplate.v4.misc.STNoSuchPropertyException, var284=r0, var2256=java.lang.Object, var3568=$r1, var3890=$r7, var2030=$r10, var755=$r8, var416=$r9, var288=$r11, var3427=$r13, var474=$r12, var1019=$r14, var574=$r15, var3727=$r16}
; {org.stringtemplate.v4.misc.STNoSuchPropertyException=var2174, r0=var284, java.lang.Object=var2256, $r1=var3568, $r7=var3890, $r10=var2030, $r8=var755, $r9=var416, $r11=var288, $r13=var3427, $r12=var474, $r14=var1019, $r15=var574, $r16=var3727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STNoSuchPropertyException;	$r1 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object ");	$r8 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.Object o>;	$r9 = virtualinvoke $r8.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no ");	$r12 = r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: java.lang.String propertyName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" property");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2