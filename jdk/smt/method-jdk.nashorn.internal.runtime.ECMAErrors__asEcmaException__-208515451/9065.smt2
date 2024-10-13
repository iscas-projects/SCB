(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var918 0)
(declare-sort var1292 0)
(declare-sort var942 0)
(declare-sort var1458 0)
(declare-sort var3187 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var1292) var942)
(declare-fun var3187-init () var3187)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var191) String)
(declare-fun cast-from-var1292-to-var191 (var1292) var191)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3187 var191) void)
(declare-fun cast-from-String-to-var191 (String) var191)
(declare-const null-var918 var918)
(declare-const null-var1292 var1292)
(declare-const var1458-$assertionsDisabled Bool)
(declare-const null-var942 var942)
(declare-const var1098 var918) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var1098 null-var918)))
(declare-const var3311 var1292) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3311 null-var1292)))
(assert true)
(define-const var1465 var942 (getErrorType/-890517346 var3311)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var1192 Bool var1458-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (not (= (ite var1192 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r1 != null goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (not (= var1465 null-var942)))) ; Negate: Cond: r1 != null  
(define-const var1789 var3187 var3187-init) ; Statement: $r21 = new java.lang.AssertionError 
(define-const var1997 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1997)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1997!1 String)
(assert (= var1997!1 ""))
(assert true)
(define-const var3368 String (append/672562846 var1997!1 "error type for ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error type for ") 
(declare-const var1997!2 String)
(assert (= var1997!2 (str.++ var1997!1 "error type for ")))
(assert true)
(define-const var932 String (append/-1031950772 var3368 (cast-from-var1292-to-var191 var3311))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3368!1 String)
(assert (str.prefixof var3368 var3368!1))
(assert true)
(define-const var261 String (append/672562846 var932 " was null")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was null") 
(declare-const var932!1 String)
(assert (= var932!1 (str.++ var932 " was null")))
(assert true)
(define-const var1427 String (toString/-2075883882 var261)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1789 (cast-from-String-to-var191 var1427))) ; Statement: specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26) 

(declare-const var1789!1 var3187)
(declare-const var1427!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), var3187-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1292-to-var191=([jdk.nashorn.internal.runtime.ParserException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var191=([java.lang.String], java.lang.Object)}
; {var918=jdk.nashorn.internal.objects.Global, var1098=r2, var1292=jdk.nashorn.internal.runtime.ParserException, var3311=r0, var942=jdk.nashorn.internal.runtime.JSErrorType, var1465=r1, var1458=jdk.nashorn.internal.runtime.ECMAErrors, var1192=$z0, var3187=java.lang.AssertionError, var1789=$r21, var1997=$r22, var3368=$r23, var191=java.lang.Object, var932=$r24, var261=$r25, var1427=$r26}
; {jdk.nashorn.internal.objects.Global=var918, r2=var1098, jdk.nashorn.internal.runtime.ParserException=var1292, r0=var3311, jdk.nashorn.internal.runtime.JSErrorType=var942, r1=var1465, jdk.nashorn.internal.runtime.ECMAErrors=var1458, $z0=var1192, java.lang.AssertionError=var3187, $r21=var1789, $r22=var1997, $r23=var3368, java.lang.Object=var191, $r24=var932, $r25=var261, $r26=var1427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	if r1 != null goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r21 = new java.lang.AssertionError;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error type for ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was null");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26);	throw $r21
;block_num 3