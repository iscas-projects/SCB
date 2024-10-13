(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2150 0)
(declare-sort var269 0)
(declare-sort var1824 0)
(declare-sort var1044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2150!class ClassObject)
(declare-fun var1824-init () var1824)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1044) String)
(declare-fun cast-from-var269-to-var1044 (var269) var1044)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1824 String) void)
(declare-const null-var269 var269)
(define-const var1730 ClassObject var2150!class) ; Statement: $r0 = class "Lorg/python/core/PySystemState;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var795 var269) ; Statement: $r16 := @caughtexception 
(assert (not (= var795 null-var269)))
(define-const var2081 var1824 var1824-init) ; Statement: $r17 = new java.lang.RuntimeException 
(define-const var1563 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1563)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1563!1 String)
(assert (= var1563!1 ""))
(assert true)
(define-const var2807 String (append/672562846 var1563!1 "Failed to get Jython version: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get Jython version: ") 
(declare-const var1563!2 String)
(assert (= var1563!2 (str.++ var1563!1 "Failed to get Jython version: ")))
(assert true)
(define-const var3741 String (append/-1031950772 var2807 (cast-from-var269-to-var1044 var795))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var2807!1 String)
(assert (str.prefixof var2807 var2807!1))
(assert true)
(define-const var553 String (toString/-2075883882 var3741)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2081 var553)) ; Statement: specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String)>($r21) 

(declare-const var2081!1 var1824)
(declare-const var553!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1824-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var269-to-var1044=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2150=org.python.core.PySystemState, var1730=$r0, var269=java.lang.Exception, var795=$r16, var1824=java.lang.RuntimeException, var2081=$r17, var1563=$r18, var2807=$r19, var1044=java.lang.Object, var3741=$r20, var553=$r21}
; {org.python.core.PySystemState=var2150, $r0=var1730, java.lang.Exception=var269, $r16=var795, java.lang.RuntimeException=var1824, $r17=var2081, $r18=var1563, $r19=var2807, java.lang.Object=var1044, $r20=var3741, $r21=var553}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = class "Lorg/python/core/PySystemState;";	$r16 := @caughtexception;	$r17 = new java.lang.RuntimeException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get Jython version: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String)>($r21);	throw $r17
;block_num 2