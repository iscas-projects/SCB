(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort var2271 0)
(declare-sort var3766 0)
(declare-sort var1570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expected/-2072895586 (var1505) ClassObject)
(declare-fun getClass/1258963082 (var3766) ClassObject)
(declare-fun cast-from-var2271-to-var3766 (var2271) var3766)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1570-init () var1570)
(declare-fun <init>/-167142807 (var1570 String var2271) void)
(declare-const null-var1505 var1505)
(declare-const null-var2271 var2271)
(declare-const var2578 var1505) ; Statement: r0 := @this: org.junit.internal.runners.statements.ExpectException 
(assert (not (= var2578 null-var1505)))
(define-const var217 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3884 var2271) ; Statement: $r9 := @caughtexception 
(assert (not (= var3884 null-var2271)))
(define-const var1029 ClassObject (expected/-2072895586 var2578)) ; Statement: $r10 = r0.<org.junit.internal.runners.statements.ExpectException: java.lang.Class expected> 
(assert true)
(define-const var1736 ClassObject (getClass/1258963082 (cast-from-var2271-to-var3766 var3884))) ; Statement: $r11 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3757 Bool (isAssignableFrom/-1028998700 var1029 var1736)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r11) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var3757 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3779 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3779)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3779!1 String)
(assert (= var3779!1 ""))
(assert true)
(define-const var427 String (append/672562846 var3779!1 "Unexpected exception, expected<")) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception, expected<") 
(declare-const var3779!2 String)
(assert (= var3779!2 (str.++ var3779!1 "Unexpected exception, expected<")))
(define-const var3660 ClassObject (expected/-2072895586 var2578)) ; Statement: $r13 = r0.<org.junit.internal.runners.statements.ExpectException: java.lang.Class expected> 
(assert true)
(define-const var1403 String (getName/-1958580599 var3660)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2828 String (append/672562846 var427 var1403)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var427!1 String)
(assert (= var427!1 (str.++ var427 var1403)))
(assert true)
(define-const var1402 String (append/672562846 var2828 "> but was<")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was<") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 "> but was<")))
(assert true)
(define-const var1738 ClassObject (getClass/1258963082 (cast-from-var2271-to-var3766 var3884))) ; Statement: $r17 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2178 String (getName/-1958580599 var1738)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var638 String (append/672562846 var1402 var2178)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1402!1 String)
(assert (= var1402!1 (str.++ var1402 var2178)))
(assert true)
(define-const var3342 String (append/672562846 var638 ">")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var638!1 String)
(assert (= var638!1 (str.++ var638 ">")))
(assert true)
(define-const var2194 String (toString/-2075883882 var3342)) ; Statement: r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3177 var1570 var1570-init) ; Statement: $r23 = new java.lang.Exception 
(assert true)
;(assert (<init>/-167142807 var3177 var2194 var3884)) ; Statement: specialinvoke $r23.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>(r22, $r9) 

(declare-const var3177!1 var1570)
(declare-const var2194!1 String)
(declare-const var3884!1 var2271)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {expected/-2072895586=([org.junit.internal.runners.statements.ExpectException], java.lang.Class), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2271-to-var3766=([java.lang.Throwable], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1570-init=([], java.lang.Exception), <init>/-167142807=([java.lang.Exception, java.lang.String, java.lang.Throwable], void)}
; {var1505=org.junit.internal.runners.statements.ExpectException, var2578=r0, var217=z2, var2271=java.lang.Throwable, var3884=$r9, var1029=$r10, var3766=java.lang.Object, var1736=$r11, var3757=$z0, var3779=$r12, var427=$r15, var3660=$r13, var1403=$r14, var2828=$r16, var1402=$r19, var1738=$r17, var2178=$r18, var638=$r20, var3342=$r21, var2194=r22, var1570=java.lang.Exception, var3177=$r23}
; {org.junit.internal.runners.statements.ExpectException=var1505, r0=var2578, z2=var217, java.lang.Throwable=var2271, $r9=var3884, $r10=var1029, java.lang.Object=var3766, $r11=var1736, $z0=var3757, $r12=var3779, $r15=var427, $r13=var3660, $r14=var1403, $r16=var2828, $r19=var1402, $r17=var1738, $r18=var2178, $r20=var638, $r21=var3342, r22=var2194, java.lang.Exception=var1570, $r23=var3177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.internal.runners.statements.ExpectException;	z2 = 0;	$r9 := @caughtexception;	$r10 = r0.<org.junit.internal.runners.statements.ExpectException: java.lang.Class expected>;	$r11 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r10.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r11);	if $z0 != 0 goto (branch);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception, expected<");	$r13 = r0.<org.junit.internal.runners.statements.ExpectException: java.lang.Class expected>;	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was<");	$r17 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>();	$r18 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = new java.lang.Exception;	specialinvoke $r23.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>(r22, $r9);	throw $r23
;block_num 3