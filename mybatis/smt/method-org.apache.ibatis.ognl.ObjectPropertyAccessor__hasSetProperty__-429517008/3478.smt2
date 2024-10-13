(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3814 0)
(declare-sort var3037 0)
(declare-sort var598 0)
(declare-sort var1111 0)
(declare-sort var3934 0)
(declare-sort var2219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3934-init () var3934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var598) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var3934 String var2219) void)
(declare-fun cast-from-var1111-to-var2219 (var1111) var2219)
(declare-const null-var3814 var3814)
(declare-const null-var3037 var3037)
(declare-const null-var598 var598)
(declare-const null-var1111 var1111)
(declare-const var252 var3814) ; Statement: r11 := @this: org.apache.ibatis.ognl.ObjectPropertyAccessor 
(assert (not (= var252 null-var3814)))
(declare-const var3247 var3037) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3247 null-var3037)))
(declare-const var443 var598) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var443 null-var598)))
(declare-const var3782 var598) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var3782 null-var598)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2201 var1111) ; Statement: $r3 := @caughtexception 
(assert (not (= var2201 null-var1111)))
(define-const var3716 var3934 var3934-init) ; Statement: $r4 = new org.apache.ibatis.ognl.OgnlException 
(define-const var3726 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3726)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3726!1 String)
(assert (= var3726!1 ""))
(assert true)
(define-const var683 String (append/672562846 var3726!1 "checking if ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("checking if ") 
(declare-const var3726!2 String)
(assert (= var3726!2 (str.++ var3726!1 "checking if ")))
(assert true)
(define-const var1906 String (append/-1031950772 var683 var443)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var683!1 String)
(assert (str.prefixof var683 var683!1))
(assert true)
(define-const var1666 String (append/672562846 var1906 " has settable property ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has settable property ") 
(declare-const var1906!1 String)
(assert (= var1906!1 (str.++ var1906 " has settable property ")))
(assert true)
(define-const var2789 String (append/-1031950772 var1666 var3782)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1666!1 String)
(assert (str.prefixof var1666 var1666!1))
(assert true)
(define-const var3099 String (toString/-2075883882 var2789)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var3716 var3099 (cast-from-var1111-to-var2219 var2201))) ; Statement: specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var3716!1 var3934)
(declare-const var3099!1 String)
(declare-const var2201!1 var1111)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3934-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var1111-to-var2219=([java.beans.IntrospectionException], java.lang.Throwable)}
; {var3814=org.apache.ibatis.ognl.ObjectPropertyAccessor, var252=r11, var3037=org.apache.ibatis.ognl.OgnlContext, var3247=r0, var598=java.lang.Object, var443=r1, var3782=r2, var1111=java.beans.IntrospectionException, var2201=$r3, var3934=org.apache.ibatis.ognl.OgnlException, var3716=$r4, var3726=$r5, var683=$r6, var1906=$r7, var1666=$r8, var2789=$r9, var3099=$r10, var2219=java.lang.Throwable}
; {org.apache.ibatis.ognl.ObjectPropertyAccessor=var3814, r11=var252, org.apache.ibatis.ognl.OgnlContext=var3037, r0=var3247, java.lang.Object=var598, r1=var443, r2=var3782, java.beans.IntrospectionException=var1111, $r3=var2201, org.apache.ibatis.ognl.OgnlException=var3934, $r4=var3716, $r5=var3726, $r6=var683, $r7=var1906, $r8=var1666, $r9=var2789, $r10=var3099, java.lang.Throwable=var2219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.ognl.ObjectPropertyAccessor;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("checking if ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has settable property ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2