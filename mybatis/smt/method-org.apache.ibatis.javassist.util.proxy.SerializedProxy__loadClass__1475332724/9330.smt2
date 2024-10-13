(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3229 0)
(declare-sort var148 0)
(declare-sort var1096 0)
(declare-sort var3072 0)
(declare-sort var2857 0)
(declare-sort var1385 0)
(declare-sort var1474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1096-init () var1096)
(declare-fun var2857-init () var2857)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getException/-1786102287 (var3072) var1385)
(declare-fun <init>/1642269841 (var2857 String var1474) void)
(declare-fun cast-from-var1385-to-var1474 (var1385) var1474)
(declare-const null-var3229 var3229)
(declare-const null-String String)
(declare-const null-var3072 var3072)
(declare-const var2430 var3229) ; Statement: r1 := @this: org.apache.ibatis.javassist.util.proxy.SerializedProxy 
(assert (not (= var2430 null-var3229)))
(declare-const var3982 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3982 null-String)))
(define-const var2437 var1096 var1096-init) ; Statement: $r0 = new org.apache.ibatis.javassist.util.proxy.SerializedProxy$1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var11 var3072) ; Statement: $r5 := @caughtexception 
(assert (not (= var11 null-var3072)))
(define-const var1219 var2857 var2857-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var1696 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1696)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1696!1 String)
(assert (= var1696!1 ""))
(assert true)
(define-const var2684 String (append/672562846 var1696!1 "cannot load the class: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot load the class: ") 
(declare-const var1696!2 String)
(assert (= var1696!2 (str.++ var1696!1 "cannot load the class: ")))
(assert true)
(define-const var1740 String (append/672562846 var2684 var3982)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2684!1 String)
(assert (= var2684!1 (str.++ var2684 var3982)))
(assert true)
(define-const var3140 String (toString/-2075883882 var1740)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1822 var1385 (getException/-1786102287 var11)) ; Statement: $r10 = virtualinvoke $r5.<java.security.PrivilegedActionException: java.lang.Exception getException()>() 
(assert true)
;(assert (<init>/1642269841 var1219 var3140 (cast-from-var1385-to-var1474 var1822))) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r10) 

(declare-const var1219!1 var2857)
(declare-const var3140!1 String)
(declare-const var1822!1 var1385)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1096-init=([], org.apache.ibatis.javassist.util.proxy.SerializedProxy$1), var2857-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getException/-1786102287=([java.security.PrivilegedActionException], java.lang.Exception), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1385-to-var1474=([java.lang.Exception], java.lang.Throwable)}
; {var3229=org.apache.ibatis.javassist.util.proxy.SerializedProxy, var2430=r1, var3982=r2, var148=null_type, var1096=org.apache.ibatis.javassist.util.proxy.SerializedProxy$1, var2437=$r0, var3072=java.security.PrivilegedActionException, var11=$r5, var2857=java.lang.RuntimeException, var1219=$r6, var1696=$r7, var2684=$r8, var1740=$r9, var3140=$r11, var1385=java.lang.Exception, var1822=$r10, var1474=java.lang.Throwable}
; {org.apache.ibatis.javassist.util.proxy.SerializedProxy=var3229, r1=var2430, r2=var3982, null_type=var148, org.apache.ibatis.javassist.util.proxy.SerializedProxy$1=var1096, $r0=var2437, java.security.PrivilegedActionException=var3072, $r5=var11, java.lang.RuntimeException=var2857, $r6=var1219, $r7=var1696, $r8=var2684, $r9=var1740, $r11=var3140, java.lang.Exception=var1385, $r10=var1822, java.lang.Throwable=var1474}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.util.proxy.SerializedProxy;	r2 := @parameter0: java.lang.String;	$r0 = new org.apache.ibatis.javassist.util.proxy.SerializedProxy$1;	$r5 := @caughtexception;	$r6 = new java.lang.RuntimeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot load the class: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r5.<java.security.PrivilegedActionException: java.lang.Exception getException()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r10);	throw $r6
;block_num 2