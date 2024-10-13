(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3616 0)
(declare-sort var1241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3616!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1241-init () var1241)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1241 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var3843 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3843 null-ClassObject)))
 ; Statement: if r0 == null goto $r1 = <freemarker.ext.dom.NodeModel: java.lang.Object STATIC_LOCK> 
(assert (not (= var3843 null-ClassObject))) ; Negate: Cond: r0 == null  
(define-const var2062 ClassObject var3616!class) ; Statement: $r2 = class "Lfreemarker/ext/dom/XPathSupport;" 
(assert true)
(define-const var735 Bool (isAssignableFrom/-1028998700 var2062 var3843)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r1 = <freemarker.ext.dom.NodeModel: java.lang.Object STATIC_LOCK> 
(assert (not (not (= (ite var735 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2774 var1241 var1241-init) ; Statement: $r3 = new java.lang.RuntimeException 
(define-const var3302 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3302)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3302!1 String)
(assert (= var3302!1 ""))
(assert true)
(define-const var2407 String (append/672562846 var3302!1 "Class ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3302!2 String)
(assert (= var3302!2 (str.++ var3302!1 "Class ")))
(assert true)
(define-const var2023 String (getName/-1958580599 var3843)) ; Statement: $r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3768 String (append/672562846 var2407 var2023)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2407!1 String)
(assert (= var2407!1 (str.++ var2407 var2023)))
(assert true)
(define-const var2313 String (append/672562846 var3768 " does not implement freemarker.ext.dom.XPathSupport")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement freemarker.ext.dom.XPathSupport") 
(declare-const var3768!1 String)
(assert (= var3768!1 (str.++ var3768 " does not implement freemarker.ext.dom.XPathSupport")))
(assert true)
(define-const var3058 String (toString/-2075883882 var2313)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2774 var3058)) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var2774!1 var1241)
(declare-const var3058!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1241-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3843=r0, var3616=freemarker.ext.dom.XPathSupport, var2062=$r2, var735=$z0, var1241=java.lang.RuntimeException, var2774=$r3, var3302=$r4, var2407=$r6, var2023=$r5, var3768=$r7, var2313=$r8, var3058=$r9}
; {r0=var3843, freemarker.ext.dom.XPathSupport=var3616, $r2=var2062, $z0=var735, java.lang.RuntimeException=var1241, $r3=var2774, $r4=var3302, $r6=var2407, $r5=var2023, $r7=var3768, $r8=var2313, $r9=var3058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	if r0 == null goto $r1 = <freemarker.ext.dom.NodeModel: java.lang.Object STATIC_LOCK>;	$r2 = class "Lfreemarker/ext/dom/XPathSupport;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r1 = <freemarker.ext.dom.NodeModel: java.lang.Object STATIC_LOCK>;	$r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement freemarker.ext.dom.XPathSupport");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 3