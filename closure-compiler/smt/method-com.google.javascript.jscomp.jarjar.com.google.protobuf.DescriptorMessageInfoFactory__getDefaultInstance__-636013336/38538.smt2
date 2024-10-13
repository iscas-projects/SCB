(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var2972 0)
(declare-sort var518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2972-init () var2972)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var2972 String var518) void)
(declare-fun cast-from-var3632-to-var518 (var3632) var518)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3632 var3632)
(declare-const var1272 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1272 null-ClassObject)))
(define-const var306 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2932 var3632) ; Statement: $r5 := @caughtexception 
(assert (not (= var2932 null-var3632)))
(define-const var57 var2972 var2972-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3377 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3377)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3377!1 String)
(assert (= var3377!1 ""))
(assert true)
(define-const var906 String (append/672562846 var3377!1 "Unable to get default instance for message class ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to get default instance for message class ") 
(declare-const var3377!2 String)
(assert (= var3377!2 (str.++ var3377!1 "Unable to get default instance for message class ")))
(assert true)
(define-const var1514 String (getName/-1958580599 var1272)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2452 String (append/672562846 var906 var1514)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var906!1 String)
(assert (= var906!1 (str.++ var906 var1514)))
(assert true)
(define-const var199 String (toString/-2075883882 var2452)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var57 var199 (cast-from-var3632-to-var518 var2932))) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var57!1 var2972)
(declare-const var199!1 String)
(declare-const var2932!1 var3632)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var2972-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var3632-to-var518=([java.lang.Exception], java.lang.Throwable)}
; {var1272=r0, var306=$r1, var3632=java.lang.Exception, var2932=$r5, var2972=java.lang.IllegalArgumentException, var57=$r6, var3377=$r7, var906=$r9, var1514=$r8, var2452=$r10, var199=$r11, var518=java.lang.Throwable}
; {r0=var1272, $r1=var306, java.lang.Exception=var3632, $r5=var2932, java.lang.IllegalArgumentException=var2972, $r6=var57, $r7=var3377, $r9=var906, $r8=var1514, $r10=var2452, $r11=var199, java.lang.Throwable=var518}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r5 := @caughtexception;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to get default instance for message class ");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2