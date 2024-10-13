(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var857 0)
(declare-sort var3577 0)
(declare-sort var589 0)
(declare-sort var542 0)
(declare-sort var3580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPackagePath/-647345558 (var3103 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var542_error/-1179021239 (var542 String var3580) void)
(declare-fun cast-from-var589-to-var3580 (var589) var3580)
(declare-const null-var3103 var3103)
(declare-const null-var857 var857)
(declare-const null-String String)
(declare-const null-var589 var589)
(declare-const var3103-log var542)
(declare-const var1964 var3103) ; Statement: r0 := @this: org.apache.ibatis.io.ResolverUtil 
(assert (not (= var1964 null-var3103)))
(declare-const var1372 var857) ; Statement: r7 := @parameter0: org.apache.ibatis.io.ResolverUtil$Test 
(assert (not (= var1372 null-var857)))
(declare-const var1178 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1178 null-String)))
(assert true)
(define-const var1029 String (getPackagePath/-647345558 var1964 var1178)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.io.ResolverUtil: java.lang.String getPackagePath(java.lang.String)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1232 var589) ; Statement: $r8 := @caughtexception 
(assert (not (= var1232 null-var589)))
(define-const var1512 var542 var3103-log) ; Statement: $r10 = <org.apache.ibatis.io.ResolverUtil: org.apache.ibatis.logging.Log log> 
(define-const var2470 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2470)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2470!1 String)
(assert (= var2470!1 ""))
(assert true)
(define-const var3355 String (append/672562846 var2470!1 "Could not read package: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read package: ") 
(declare-const var2470!2 String)
(assert (= var2470!2 (str.++ var2470!1 "Could not read package: ")))
(assert true)
(define-const var1192 String (append/672562846 var3355 var1178)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3355!1 String)
(assert (= var3355!1 (str.++ var3355 var1178)))
(assert true)
(define-const var3223 String (toString/-2075883882 var1192)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var542_error/-1179021239 var1512 var3223 (cast-from-var589-to-var3580 var1232))) ; Statement: interfaceinvoke $r10.<org.apache.ibatis.logging.Log: void error(java.lang.String,java.lang.Throwable)>($r13, $r8) 

(declare-const var1512!1 var542)
(declare-const var3223!1 String)
(declare-const var1232!1 var589)
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPackagePath/-647345558=([org.apache.ibatis.io.ResolverUtil, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var542_error/-1179021239=([org.apache.ibatis.logging.Log, java.lang.String, java.lang.Throwable], void), cast-from-var589-to-var3580=([java.io.IOException], java.lang.Throwable)}
; {var3103=org.apache.ibatis.io.ResolverUtil, var1964=r0, var857=org.apache.ibatis.io.ResolverUtil$Test, var1372=r7, var1178=r1, var3577=null_type, var1029=r2, var589=java.io.IOException, var1232=$r8, var542=org.apache.ibatis.logging.Log, var1512=$r10, var2470=$r9, var3355=$r11, var1192=$r12, var3223=$r13, var3580=java.lang.Throwable}
; {org.apache.ibatis.io.ResolverUtil=var3103, r0=var1964, org.apache.ibatis.io.ResolverUtil$Test=var857, r7=var1372, r1=var1178, null_type=var3577, r2=var1029, java.io.IOException=var589, $r8=var1232, org.apache.ibatis.logging.Log=var542, $r10=var1512, $r9=var2470, $r11=var3355, $r12=var1192, $r13=var3223, java.lang.Throwable=var3580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.io.ResolverUtil;	r7 := @parameter0: org.apache.ibatis.io.ResolverUtil$Test;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<org.apache.ibatis.io.ResolverUtil: java.lang.String getPackagePath(java.lang.String)>(r1);	$r8 := @caughtexception;	$r10 = <org.apache.ibatis.io.ResolverUtil: org.apache.ibatis.logging.Log log>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read package: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r10.<org.apache.ibatis.logging.Log: void error(java.lang.String,java.lang.Throwable)>($r13, $r8);	return r0
;block_num 3