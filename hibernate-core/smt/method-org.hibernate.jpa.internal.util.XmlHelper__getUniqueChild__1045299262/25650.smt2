(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort var197 0)
(declare-sort var3838 0)
(declare-sort var2485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3838_getChildrenByTagName/17305823 (var1196 String) Iterator)
(declare-fun var2485-init () var2485)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var2485 String) void)
(declare-const null-var1196 var1196)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var922 var1196) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var922 null-var1196)))
(declare-const var687 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var687 null-String)))
(define-const var1081 Iterator (var3838_getChildrenByTagName/17305823 var922 var687)) ; Statement: r2 = staticinvoke <org.hibernate.jpa.internal.util.XmlHelper: java.util.Iterator getChildrenByTagName(org.w3c.dom.Element,java.lang.String)>(r0, r1) 
 ; Statement: if r2 == null goto $r3 = new java.lang.Exception 
(assert (= var1081 null-Iterator)) ; Cond: r2 == null 
(define-const var427 var2485 var2485-init) ; Statement: $r3 = new java.lang.Exception 
(define-const var3072 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3072)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3072!1 String)
(assert (= var3072!1 ""))
(assert true)
(define-const var1 String (append/672562846 var3072!1 "expected one ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected one ") 
(declare-const var3072!2 String)
(assert (= var3072!2 (str.++ var3072!1 "expected one ")))
(assert true)
(define-const var2164 String (append/672562846 var1 var687)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1!1 String)
(assert (= var1!1 (str.++ var1 var687)))
(assert true)
(define-const var3103 String (append/672562846 var2164 " tag")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tag") 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 " tag")))
(assert true)
(define-const var1466 String (toString/-2075883882 var3103)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var427 var1466)) ; Statement: specialinvoke $r3.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var427!1 var2485)
(declare-const var1466!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3838_getChildrenByTagName/17305823=([org.w3c.dom.Element, java.lang.String], java.util.Iterator), var2485-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var1196=org.w3c.dom.Element, var922=r0, var687=r1, var197=null_type, var3838=org.hibernate.jpa.internal.util.XmlHelper, var1081=r2, var2485=java.lang.Exception, var427=$r3, var3072=$r4, var1=$r5, var2164=$r6, var3103=$r7, var1466=$r8}
; {org.w3c.dom.Element=var1196, r0=var922, r1=var687, null_type=var197, org.hibernate.jpa.internal.util.XmlHelper=var3838, r2=var1081, java.lang.Exception=var2485, $r3=var427, $r4=var3072, $r5=var1, $r6=var2164, $r7=var3103, $r8=var1466}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.lang.String;	r2 = staticinvoke <org.hibernate.jpa.internal.util.XmlHelper: java.util.Iterator getChildrenByTagName(org.w3c.dom.Element,java.lang.String)>(r0, r1);	if r2 == null goto $r3 = new java.lang.Exception;	$r3 = new java.lang.Exception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected one ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tag");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.Exception: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2