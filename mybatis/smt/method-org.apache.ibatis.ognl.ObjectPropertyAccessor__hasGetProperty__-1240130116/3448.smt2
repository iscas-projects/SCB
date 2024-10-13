(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3841 0)
(declare-sort var2572 0)
(declare-sort var2557 0)
(declare-sort var3014 0)
(declare-sort var2498 0)
(declare-sort var2568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2498-init () var2498)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2557) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var2498 String var2568) void)
(declare-fun cast-from-var3014-to-var2568 (var3014) var2568)
(declare-const null-var3841 var3841)
(declare-const null-var2572 var2572)
(declare-const null-var2557 var2557)
(declare-const null-var3014 var3014)
(declare-const var2300 var3841) ; Statement: r11 := @this: org.apache.ibatis.ognl.ObjectPropertyAccessor 
(assert (not (= var2300 null-var3841)))
(declare-const var1375 var2572) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1375 null-var2572)))
(declare-const var2117 var2557) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2117 null-var2557)))
(declare-const var1476 var2557) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var1476 null-var2557)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var780 var3014) ; Statement: $r3 := @caughtexception 
(assert (not (= var780 null-var3014)))
(define-const var509 var2498 var2498-init) ; Statement: $r4 = new org.apache.ibatis.ognl.OgnlException 
(define-const var1353 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1353)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1353!1 String)
(assert (= var1353!1 ""))
(assert true)
(define-const var3388 String (append/672562846 var1353!1 "checking if ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("checking if ") 
(declare-const var1353!2 String)
(assert (= var1353!2 (str.++ var1353!1 "checking if ")))
(assert true)
(define-const var402 String (append/-1031950772 var3388 var2117)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
(define-const var1533 String (append/672562846 var402 " has gettable property ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has gettable property ") 
(declare-const var402!1 String)
(assert (= var402!1 (str.++ var402 " has gettable property ")))
(assert true)
(define-const var3812 String (append/-1031950772 var1533 var1476)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1533!1 String)
(assert (str.prefixof var1533 var1533!1))
(assert true)
(define-const var3043 String (toString/-2075883882 var3812)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var509 var3043 (cast-from-var3014-to-var2568 var780))) ; Statement: specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var509!1 var2498)
(declare-const var3043!1 String)
(declare-const var780!1 var3014)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2498-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var3014-to-var2568=([java.beans.IntrospectionException], java.lang.Throwable)}
; {var3841=org.apache.ibatis.ognl.ObjectPropertyAccessor, var2300=r11, var2572=org.apache.ibatis.ognl.OgnlContext, var1375=r0, var2557=java.lang.Object, var2117=r1, var1476=r2, var3014=java.beans.IntrospectionException, var780=$r3, var2498=org.apache.ibatis.ognl.OgnlException, var509=$r4, var1353=$r5, var3388=$r6, var402=$r7, var1533=$r8, var3812=$r9, var3043=$r10, var2568=java.lang.Throwable}
; {org.apache.ibatis.ognl.ObjectPropertyAccessor=var3841, r11=var2300, org.apache.ibatis.ognl.OgnlContext=var2572, r0=var1375, java.lang.Object=var2557, r1=var2117, r2=var1476, java.beans.IntrospectionException=var3014, $r3=var780, org.apache.ibatis.ognl.OgnlException=var2498, $r4=var509, $r5=var1353, $r6=var3388, $r7=var402, $r8=var1533, $r9=var3812, $r10=var3043, java.lang.Throwable=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.ognl.ObjectPropertyAccessor;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("checking if ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has gettable property ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2