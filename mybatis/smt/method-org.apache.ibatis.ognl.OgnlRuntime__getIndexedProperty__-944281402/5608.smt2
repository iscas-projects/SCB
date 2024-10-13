(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2886 0)
(declare-sort var3784 0)
(declare-sort var1625 0)
(declare-sort var582 0)
(declare-sort var2705 0)
(declare-sort var1656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3784-init () (Array Int var3784))
(declare-fun var2705-init () var2705)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var2705 String var1656) void)
(declare-fun cast-from-var582-to-var1656 (var582) var1656)
(declare-const null-var2886 var2886)
(declare-const null-var3784 var3784)
(declare-const null-String String)
(declare-const null-__Array__Int__var3784__ (Array Int var3784))
(declare-const null-var582 var582)
(declare-const var220 var2886) ; Statement: r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var220 null-var2886)))
(declare-const var2079 var3784) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2079 null-var3784)))
(declare-const var1402 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1402 null-String)))
(declare-const var2099 var3784) ; Statement: r1 := @parameter3: java.lang.Object 
(assert (not (= var2099 null-var3784)))
(define-const var2109 (Array Int var3784) arr-var3784-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var2109!1 (Array Int var3784))
(assert (not (= var2109!1 null-__Array__Int__var3784__)))
(assert (= (select var2109!1 0) var2099)) ; Statement: $r0[0] = r1 
 ; Statement: if r2 != null goto $r24 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var2079 null-var3784)))) ; Negate: Cond: r2 != null  
(declare-const var2337 var582) ; Statement: $r16 := @caughtexception 
(assert (not (= var2337 null-var582)))
(define-const var2726 var2705 var2705-init) ; Statement: $r17 = new org.apache.ibatis.ognl.OgnlException 
(define-const var3156 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3156)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3156!1 String)
(assert (= var3156!1 ""))
(assert true)
(define-const var176 String (append/672562846 var3156!1 "getting indexed property descriptor for \u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getting indexed property descriptor for \'") 
(declare-const var3156!2 String)
(assert (= var3156!2 (str.++ var3156!1 "getting indexed property descriptor for \u0027")))
(assert true)
(define-const var843 String (append/672562846 var176 var1402)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var176!1 String)
(assert (= var176!1 (str.++ var176 var1402)))
(assert true)
(define-const var2154 String (append/672562846 var843 "\u0027")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var843!1 String)
(assert (= var843!1 (str.++ var843 "\u0027")))
(assert true)
(define-const var3816 String (toString/-2075883882 var2154)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var2726 var3816 (cast-from-var582-to-var1656 var2337))) ; Statement: specialinvoke $r17.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16) 

(declare-const var2726!1 var2705)
(declare-const var3816!1 String)
(declare-const var2337!1 var582)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3784-init=([], java.lang.Object[]), var2705-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var582-to-var1656=([java.lang.Exception], java.lang.Throwable)}
; {var2886=org.apache.ibatis.ognl.OgnlContext, var220=r11, var3784=java.lang.Object, var2079=r2, var1402=r3, var1625=null_type, var2099=r1, var2109=$r0, var582=java.lang.Exception, var2337=$r16, var2705=org.apache.ibatis.ognl.OgnlException, var2726=$r17, var3156=$r18, var176=$r19, var843=$r20, var2154=$r21, var3816=$r22, var1656=java.lang.Throwable}
; {org.apache.ibatis.ognl.OgnlContext=var2886, r11=var220, java.lang.Object=var3784, r2=var2079, r3=var1402, null_type=var1625, r1=var2099, $r0=var2109, java.lang.Exception=var582, $r16=var2337, org.apache.ibatis.ognl.OgnlException=var2705, $r17=var2726, $r18=var3156, $r19=var176, $r20=var843, $r21=var2154, $r22=var3816, java.lang.Throwable=var1656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.Object;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	if r2 != null goto $r24 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r16 := @caughtexception;	$r17 = new org.apache.ibatis.ognl.OgnlException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getting indexed property descriptor for \'");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16);	throw $r17
;block_num 2