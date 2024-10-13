(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2208 0)
(declare-sort var864 0)
(declare-sort var554 0)
(declare-sort var293 0)
(declare-sort var3568 0)
(declare-sort var165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var864-init () (Array Int var864))
(declare-fun var3568-init () var3568)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var3568 String var165) void)
(declare-fun cast-from-var293-to-var165 (var293) var165)
(declare-const null-var2208 var2208)
(declare-const null-var864 var864)
(declare-const null-String String)
(declare-const null-__Array__Int__var864__ (Array Int var864))
(declare-const null-var293 var293)
(declare-const var2545 var2208) ; Statement: r12 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2545 null-var2208)))
(declare-const var3150 var864) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3150 null-var864)))
(declare-const var1378 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1378 null-String)))
(declare-const var55 var864) ; Statement: r1 := @parameter3: java.lang.Object 
(assert (not (= var55 null-var864)))
(declare-const var3028 var864) ; Statement: r2 := @parameter4: java.lang.Object 
(assert (not (= var3028 null-var864)))
(define-const var2116 (Array Int var864) arr-var864-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var2116!1 (Array Int var864))
(assert (not (= var2116!1 null-__Array__Int__var864__)))
(assert (= (select var2116!1 0) var55)) ; Statement: $r0[0] = r1 
(declare-const var2116!2 (Array Int var864))
(assert (not (= var2116!2 null-__Array__Int__var864__)))
(assert (= (select var2116!2 1) var3028)) ; Statement: $r0[1] = r2 
 ; Statement: if r3 != null goto $r24 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var3150 null-var864)))) ; Negate: Cond: r3 != null  
(declare-const var994 var293) ; Statement: $r16 := @caughtexception 
(assert (not (= var994 null-var293)))
(define-const var3274 var3568 var3568-init) ; Statement: $r17 = new org.apache.ibatis.ognl.OgnlException 
(define-const var375 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var375)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var375!1 String)
(assert (= var375!1 ""))
(assert true)
(define-const var2876 String (append/672562846 var375!1 "getting indexed property descriptor for \u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getting indexed property descriptor for \'") 
(declare-const var375!2 String)
(assert (= var375!2 (str.++ var375!1 "getting indexed property descriptor for \u0027")))
(assert true)
(define-const var1406 String (append/672562846 var2876 var1378)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2876!1 String)
(assert (= var2876!1 (str.++ var2876 var1378)))
(assert true)
(define-const var2167 String (append/672562846 var1406 "\u0027")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1406!1 String)
(assert (= var1406!1 (str.++ var1406 "\u0027")))
(assert true)
(define-const var3179 String (toString/-2075883882 var2167)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var3274 var3179 (cast-from-var293-to-var165 var994))) ; Statement: specialinvoke $r17.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16) 

(declare-const var3274!1 var3568)
(declare-const var3179!1 String)
(declare-const var994!1 var293)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var864-init=([], java.lang.Object[]), var3568-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var293-to-var165=([java.lang.Exception], java.lang.Throwable)}
; {var2208=org.apache.ibatis.ognl.OgnlContext, var2545=r12, var864=java.lang.Object, var3150=r3, var1378=r4, var554=null_type, var55=r1, var3028=r2, var2116=$r0, var293=java.lang.Exception, var994=$r16, var3568=org.apache.ibatis.ognl.OgnlException, var3274=$r17, var375=$r18, var2876=$r19, var1406=$r20, var2167=$r21, var3179=$r22, var165=java.lang.Throwable}
; {org.apache.ibatis.ognl.OgnlContext=var2208, r12=var2545, java.lang.Object=var864, r3=var3150, r4=var1378, null_type=var554, r1=var55, r2=var3028, $r0=var2116, java.lang.Exception=var293, $r16=var994, org.apache.ibatis.ognl.OgnlException=var3568, $r17=var3274, $r18=var375, $r19=var2876, $r20=var1406, $r21=var2167, $r22=var3179, java.lang.Throwable=var165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.Object;	r2 := @parameter4: java.lang.Object;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = r1;	$r0[1] = r2;	if r3 != null goto $r24 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r16 := @caughtexception;	$r17 = new org.apache.ibatis.ognl.OgnlException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getting indexed property descriptor for \'");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16);	throw $r17
;block_num 2