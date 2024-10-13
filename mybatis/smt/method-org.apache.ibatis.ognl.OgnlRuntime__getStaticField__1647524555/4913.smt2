(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var557 0)
(declare-sort var862 0)
(declare-sort var1206 0)
(declare-sort var92 0)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var92-init () var92)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var92 String var3817) void)
(declare-fun cast-from-var1206-to-var3817 (var1206) var3817)
(declare-const null-var557 var557)
(declare-const null-String String)
(declare-const null-var1206 var1206)
(declare-const var3046 var557) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3046 null-var557)))
(declare-const var1479 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1479 null-String)))
(declare-const var3881 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3881 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2671 var1206) ; Statement: $r26 := @caughtexception 
(assert (not (= var2671 null-var1206)))
(define-const var983 var92 var92-init) ; Statement: $r27 = new org.apache.ibatis.ognl.OgnlException 
(define-const var2340 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2340)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2340!1 String)
(assert (= var2340!1 ""))
(assert true)
(define-const var2703 String (append/672562846 var2340!1 "Could not get static field ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ") 
(declare-const var2340!2 String)
(assert (= var2340!2 (str.++ var2340!1 "Could not get static field ")))
(assert true)
(define-const var2606 String (append/672562846 var2703 var3881)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2703!1 String)
(assert (= var2703!1 (str.++ var2703 var3881)))
(assert true)
(define-const var295 String (append/672562846 var2606 " from class ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ") 
(declare-const var2606!1 String)
(assert (= var2606!1 (str.++ var2606 " from class ")))
(assert true)
(define-const var3799 String (append/672562846 var295 var1479)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var295!1 String)
(assert (= var295!1 (str.++ var295 var1479)))
(assert true)
(define-const var3894 String (toString/-2075883882 var3799)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var983 var3894 (cast-from-var1206-to-var3817 var2671))) ; Statement: specialinvoke $r27.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r26) 

(declare-const var983!1 var92)
(declare-const var3894!1 String)
(declare-const var2671!1 var1206)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var92-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var1206-to-var3817=([java.lang.Exception], java.lang.Throwable)}
; {var557=org.apache.ibatis.ognl.OgnlContext, var3046=r0, var1479=r1, var862=null_type, var3881=r2, var1206=java.lang.Exception, var2671=$r26, var92=org.apache.ibatis.ognl.OgnlException, var983=$r27, var2340=$r28, var2703=$r29, var2606=$r30, var295=$r31, var3799=$r32, var3894=$r33, var3817=java.lang.Throwable}
; {org.apache.ibatis.ognl.OgnlContext=var557, r0=var3046, r1=var1479, null_type=var862, r2=var3881, java.lang.Exception=var1206, $r26=var2671, org.apache.ibatis.ognl.OgnlException=var92, $r27=var983, $r28=var2340, $r29=var2703, $r30=var2606, $r31=var295, $r32=var3799, $r33=var3894, java.lang.Throwable=var3817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$r26 := @caughtexception;	$r27 = new org.apache.ibatis.ognl.OgnlException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r26);	throw $r27
;block_num 2