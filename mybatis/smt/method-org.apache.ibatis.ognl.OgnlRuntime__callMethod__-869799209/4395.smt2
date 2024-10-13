(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var3160 0)
(declare-sort var1954 0)
(declare-sort var1915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1915-init () var1915)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var1915 String) void)
(declare-const null-var2023 var2023)
(declare-const null-var3160 var3160)
(declare-const null-String String)
(declare-const null-__Array__Int__var3160__ (Array Int var3160))
(declare-const var3139 var2023) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3139 null-var2023)))
(declare-const var116 var3160) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var116 null-var3160)))
(declare-const var252 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var252 null-String)))
(declare-const var2728 (Array Int var3160)) ; Statement: r4 := @parameter3: java.lang.Object[] 
(assert (not (= var2728 null-__Array__Int__var3160__)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var116 null-var3160)))) ; Negate: Cond: r0 != null  
(define-const var448 var1915 var1915-init) ; Statement: $r7 = new java.lang.NullPointerException 
(define-const var3698 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3698)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3698!1 String)
(assert (= var3698!1 ""))
(assert true)
(define-const var219 String (append/672562846 var3698!1 "target is null for method ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for method ") 
(declare-const var3698!2 String)
(assert (= var3698!2 (str.++ var3698!1 "target is null for method ")))
(assert true)
(define-const var2459 String (append/672562846 var219 var252)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var219!1 String)
(assert (= var219!1 (str.++ var219 var252)))
(assert true)
(define-const var2767 String (toString/-2075883882 var2459)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var448 var2767)) ; Statement: specialinvoke $r7.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11) 

(declare-const var448!1 var1915)
(declare-const var2767!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1915-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var2023=org.apache.ibatis.ognl.OgnlContext, var3139=r2, var3160=java.lang.Object, var116=r0, var252=r3, var1954=null_type, var2728=r4, var1915=java.lang.NullPointerException, var448=$r7, var3698=$r8, var219=$r9, var2459=$r10, var2767=$r11}
; {org.apache.ibatis.ognl.OgnlContext=var2023, r2=var3139, java.lang.Object=var3160, r0=var116, r3=var252, null_type=var1954, r4=var2728, java.lang.NullPointerException=var1915, $r7=var448, $r8=var3698, $r9=var219, $r10=var2459, $r11=var2767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Object[];	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = new java.lang.NullPointerException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for method ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2