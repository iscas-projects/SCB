(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2209 0)
(declare-sort var149 0)
(declare-sort var3296 0)
(declare-sort var805 0)
(declare-sort var3072 0)
(declare-sort var3712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3712) ClassObject)
(declare-fun cast-from-var805-to-var3712 (var805) var3712)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var805) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3072_warn/-1637345203 (var3072 String) void)
(declare-const null-var2209 var2209)
(declare-const null-var149 var149)
(declare-const null-String String)
(declare-const null-var805 var805)
(declare-const var2209-log var3072)
(declare-const var2477 var2209) ; Statement: r2 := @this: org.apache.ibatis.io.ResolverUtil 
(assert (not (= var2477 null-var2209)))
(declare-const var1373 var149) ; Statement: r5 := @parameter0: org.apache.ibatis.io.ResolverUtil$Test 
(assert (not (= var1373 null-var149)))
(declare-const var1767 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1767 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1832 var805) ; Statement: $r16 := @caughtexception 
(assert (not (= var1832 null-var805)))
(define-const var2404 var3072 var2209-log) ; Statement: $r18 = <org.apache.ibatis.io.ResolverUtil: org.apache.ibatis.logging.Log log> 
(define-const var1226 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1226)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1226!1 String)
(assert (= var1226!1 ""))
(assert true)
(define-const var670 String (append/672562846 var1226!1 "Could not examine class \u0027")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not examine class \'") 
(declare-const var1226!2 String)
(assert (= var1226!2 (str.++ var1226!1 "Could not examine class \u0027")))
(assert true)
(define-const var1316 String (append/672562846 var670 var1767)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 var1767)))
(assert true)
(define-const var2219 String (append/672562846 var1316 "\u0027 due to a ")) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' due to a ") 
(declare-const var1316!1 String)
(assert (= var1316!1 (str.++ var1316 "\u0027 due to a ")))
(assert true)
(define-const var2080 ClassObject (getClass/1258963082 (cast-from-var805-to-var3712 var1832))) ; Statement: $r21 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var779 String (getName/-1958580599 var2080)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2108 String (append/672562846 var2219 var779)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2219!1 String)
(assert (= var2219!1 (str.++ var2219 var779)))
(assert true)
(define-const var2607 String (append/672562846 var2108 " with message: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with message: ") 
(declare-const var2108!1 String)
(assert (= var2108!1 (str.++ var2108 " with message: ")))
(assert true)
(define-const var2231 String (getMessage/849299655 var1832)) ; Statement: $r25 = virtualinvoke $r16.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var491 String (append/672562846 var2607 var2231)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2607!1 String)
(assert (= var2607!1 (str.++ var2607 var2231)))
(assert true)
(define-const var3745 String (toString/-2075883882 var491)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3072_warn/-1637345203 var2404 var3745)) ; Statement: interfaceinvoke $r18.<org.apache.ibatis.logging.Log: void warn(java.lang.String)>($r28) 

(declare-const var2404!1 var3072)
(declare-const var3745!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var805-to-var3712=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3072_warn/-1637345203=([org.apache.ibatis.logging.Log, java.lang.String], void)}
; {var2209=org.apache.ibatis.io.ResolverUtil, var2477=r2, var149=org.apache.ibatis.io.ResolverUtil$Test, var1373=r5, var1767=r0, var3296=null_type, var805=java.lang.Throwable, var1832=$r16, var3072=org.apache.ibatis.logging.Log, var2404=$r18, var1226=$r17, var670=$r19, var1316=$r20, var2219=$r23, var3712=java.lang.Object, var2080=$r21, var779=$r22, var2108=$r24, var2607=$r26, var2231=$r25, var491=$r27, var3745=$r28}
; {org.apache.ibatis.io.ResolverUtil=var2209, r2=var2477, org.apache.ibatis.io.ResolverUtil$Test=var149, r5=var1373, r0=var1767, null_type=var3296, java.lang.Throwable=var805, $r16=var1832, org.apache.ibatis.logging.Log=var3072, $r18=var2404, $r17=var1226, $r19=var670, $r20=var1316, $r23=var2219, java.lang.Object=var3712, $r21=var2080, $r22=var779, $r24=var2108, $r26=var2607, $r25=var2231, $r27=var491, $r28=var3745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.io.ResolverUtil;	r5 := @parameter0: org.apache.ibatis.io.ResolverUtil$Test;	r0 := @parameter1: java.lang.String;	$r16 := @caughtexception;	$r18 = <org.apache.ibatis.io.ResolverUtil: org.apache.ibatis.logging.Log log>;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not examine class \'");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' due to a ");	$r21 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>();	$r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with message: ");	$r25 = virtualinvoke $r16.<java.lang.Throwable: java.lang.String getMessage()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r18.<org.apache.ibatis.logging.Log: void warn(java.lang.String)>($r28);	return
;block_num 3