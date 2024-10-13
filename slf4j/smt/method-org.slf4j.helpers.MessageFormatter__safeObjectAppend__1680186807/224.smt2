(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort var941 0)
(declare-sort var3004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var430) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3004_error/-1177226043 (String var941) void)
(declare-const null-String String)
(declare-const null-var430 var430)
(declare-const null-var941 var941)
(declare-const var2218 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2218 null-String)))
(declare-const var1590 var430) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1590 null-var430)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var778 var941) ; Statement: $r2 := @caughtexception 
(assert (not (= var778 null-var941)))
(define-const var3928 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3928)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3928!1 String)
(assert (= var3928!1 ""))
(assert true)
(define-const var196 String (append/672562846 var3928!1 "Failed toString() invocation on an object of type [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed toString() invocation on an object of type [") 
(declare-const var3928!2 String)
(assert (= var3928!2 (str.++ var3928!1 "Failed toString() invocation on an object of type [")))
(assert true)
(define-const var1896 ClassObject (getClass/1258963082 var1590)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3303 String (getName/-1958580599 var1896)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3803 String (append/672562846 var196 var3303)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var196!1 String)
(assert (= var196!1 (str.++ var196 var3303)))
(assert true)
(define-const var3280 String (append/672562846 var3803 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3803!1 String)
(assert (= var3803!1 (str.++ var3803 "]")))
(assert true)
(define-const var1713 String (toString/-2075883882 var3280)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3004_error/-1177226043 var1713 var778)) ; Statement: staticinvoke <org.slf4j.helpers.Reporter: void error(java.lang.String,java.lang.Throwable)>($r9, $r2) 

(declare-const var1713!1 String)
(declare-const var778!1 var941)
(assert true)
;(assert (append/672562846 var2218 "[FAILED toString()]")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[FAILED toString()]") 
(declare-const var2218!1 String)
(assert (= var2218!1 (str.++ var2218 "[FAILED toString()]")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3004_error/-1177226043=([java.lang.String, java.lang.Throwable], void)}
; {var2218=r1, var430=java.lang.Object, var1590=r0, var941=java.lang.Throwable, var778=$r2, var3928=$r3, var196=$r6, var1896=$r4, var3303=$r5, var3803=$r7, var3280=$r8, var1713=$r9, var3004=org.slf4j.helpers.Reporter}
; {r1=var2218, java.lang.Object=var430, r0=var1590, java.lang.Throwable=var941, $r2=var778, $r3=var3928, $r6=var196, $r4=var1896, $r5=var3303, $r7=var3803, $r8=var3280, $r9=var1713, org.slf4j.helpers.Reporter=var3004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Object;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed toString() invocation on an object of type [");	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.slf4j.helpers.Reporter: void error(java.lang.String,java.lang.Throwable)>($r9, $r2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[FAILED toString()]");	return
;block_num 3