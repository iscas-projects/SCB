(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var81 0)
(declare-sort var3746 0)
(declare-sort var2287 0)
(declare-sort var1659 0)
(declare-sort var2 0)
(declare-sort var3955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var81) var2287)
(declare-fun var2-init () var2)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var2 String) void)
(declare-fun initCause/2003336360 (var3955 var3955) var3955)
(declare-fun cast-from-var2-to-var3955 (var2) var3955)
(declare-fun cast-from-var1659-to-var3955 (var1659) var3955)
(declare-const null-var81 var81)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var1659 var1659)
(declare-const var2673 var81) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var2673 null-var81)))
(declare-const var2947 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2947 null-ClassObject)))
(declare-const var1506 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1506 null-String)))
(declare-const var321 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var321 null-ClassObject)))
(define-const var3265 var2287 (lookup/-920752463 var2673)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3194 var1659) ; Statement: $r18 := @caughtexception 
(assert (not (= var3194 null-var1659)))
(define-const var2548 var2 var2-init) ; Statement: $r19 = new java.lang.IllegalAccessError 
(define-const var376 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var376)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var376!1 String)
(assert (= var376!1 ""))
(assert true)
(define-const var796 String (append/672562846 var376!1 "Failed to access getter for field ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access getter for field ") 
(declare-const var376!2 String)
(assert (= var376!2 (str.++ var376!1 "Failed to access getter for field ")))
(assert true)
(define-const var3942 String (getName/-1958580599 var2947)) ; Statement: $r21 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3757 String (append/672562846 var796 var3942)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 var3942)))
(assert true)
(define-const var522 String (append/672562846 var3757 ".")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3757!1 String)
(assert (= var3757!1 (str.++ var3757 ".")))
(assert true)
(define-const var1281 String (append/672562846 var522 var1506)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var522!1 String)
(assert (= var522!1 (str.++ var522 var1506)))
(assert true)
(define-const var2146 String (append/672562846 var1281 " of type ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of type ") 
(declare-const var1281!1 String)
(assert (= var1281!1 (str.++ var1281 " of type ")))
(assert true)
(define-const var2122 String (getName/-1958580599 var321)) ; Statement: $r26 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1785 String (append/672562846 var2146 var2122)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2146!1 String)
(assert (= var2146!1 (str.++ var2146 var2122)))
(assert true)
(define-const var971 String (toString/-2075883882 var1785)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var2548 var971)) ; Statement: specialinvoke $r19.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r29) 

(declare-const var2548!1 var2)
(declare-const var971!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2-to-var3955 var2548!1) (cast-from-var1659-to-var3955 var3194))) ; Statement: virtualinvoke $r19.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r18) 

(declare-const var2548!2 var2)
(declare-const var3194!1 var1659)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var2-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2-to-var3955=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var1659-to-var3955=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var81=jdk.internal.dynalink.support.Lookup, var2673=r0, var2947=r1, var1506=r2, var3746=null_type, var321=r3, var2287=java.lang.invoke.MethodHandles$Lookup, var3265=$r4, var1659=java.lang.IllegalAccessException, var3194=$r18, var2=java.lang.IllegalAccessError, var2548=$r19, var376=$r20, var796=$r22, var3942=$r21, var3757=$r23, var522=$r24, var1281=$r25, var2146=$r27, var2122=$r26, var1785=$r28, var971=$r29, var3955=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var81, r0=var2673, r1=var2947, r2=var1506, null_type=var3746, r3=var321, java.lang.invoke.MethodHandles$Lookup=var2287, $r4=var3265, java.lang.IllegalAccessException=var1659, $r18=var3194, java.lang.IllegalAccessError=var2, $r19=var2548, $r20=var376, $r22=var796, $r21=var3942, $r23=var3757, $r24=var522, $r25=var1281, $r27=var2146, $r26=var2122, $r28=var1785, $r29=var971, java.lang.Throwable=var3955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r18 := @caughtexception;	$r19 = new java.lang.IllegalAccessError;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access getter for field ");	$r21 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of type ");	$r26 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r29);	virtualinvoke $r19.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r18);	throw $r19
;block_num 2