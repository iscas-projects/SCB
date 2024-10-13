(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2361 0)
(declare-sort var317 0)
(declare-sort var1952 0)
(declare-sort var3553 0)
(declare-sort var2150 0)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2150-init () var2150)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var2150 String var2954) void)
(declare-fun cast-from-var3553-to-var2954 (var3553) var2954)
(declare-const null-var2361 var2361)
(declare-const null-var317 var317)
(declare-const null-String String)
(declare-const null-var3553 var3553)
(declare-const var669 var2361) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var669 null-var2361)))
(declare-const var747 var317) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var747 null-var317)))
(declare-const var1142 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1142 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var85 var3553) ; Statement: $r3 := @caughtexception 
(assert (not (= var85 null-var3553)))
(define-const var3183 var2150 var2150-init) ; Statement: $r4 = new org.apache.ibatis.ognl.OgnlException 
(define-const var700 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var700)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var700!1 String)
(assert (= var700!1 ""))
(assert true)
(define-const var1043 String (append/672562846 var700!1 "No such class: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such class: ") 
(declare-const var700!2 String)
(assert (= var700!2 (str.++ var700!1 "No such class: ")))
(assert true)
(define-const var1653 String (append/672562846 var1043 var1142)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1043!1 String)
(assert (= var1043!1 (str.++ var1043 var1142)))
(assert true)
(define-const var780 String (toString/-2075883882 var1653)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var3183 var780 (cast-from-var3553-to-var2954 var85))) ; Statement: specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3) 

(declare-const var3183!1 var2150)
(declare-const var780!1 String)
(declare-const var85!1 var3553)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2150-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var3553-to-var2954=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var2361=org.apache.ibatis.ognl.OgnlContext, var669=r0, var317=java.lang.Object, var747=r2, var1142=r1, var1952=null_type, var3553=java.lang.ClassNotFoundException, var85=$r3, var2150=org.apache.ibatis.ognl.OgnlException, var3183=$r4, var700=$r5, var1043=$r6, var1653=$r7, var780=$r8, var2954=java.lang.Throwable}
; {org.apache.ibatis.ognl.OgnlContext=var2361, r0=var669, java.lang.Object=var317, r2=var747, r1=var1142, null_type=var1952, java.lang.ClassNotFoundException=var3553, $r3=var85, org.apache.ibatis.ognl.OgnlException=var2150, $r4=var3183, $r5=var700, $r6=var1043, $r7=var1653, $r8=var780, java.lang.Throwable=var2954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.String;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such class: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3);	throw $r4
;block_num 2