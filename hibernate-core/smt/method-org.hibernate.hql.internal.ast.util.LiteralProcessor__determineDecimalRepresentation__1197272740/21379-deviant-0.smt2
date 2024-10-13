(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3354 0)
(declare-sort var2956 0)
(declare-sort var2655 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1297-init () var1297)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1297 String var2655) void)
(declare-fun cast-from-var1297-to-var2655 (var1297) var2655)
(declare-const null-var3354 var3354)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2655 var2655)
(declare-const var2772 var3354) ; Statement: r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var2772 null-var3354)))
(declare-const var3538 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3538 null-String)))
(declare-const var2972 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2972 null-Int)))
(define-const var1047 String var3538) ; Statement: r12 = r0 
 ; Statement: if i0 != 102 goto (branch) 
(assert (not (not (= var2972 102)))) ; Negate: Cond: i0 != 102  
(assert true)
(define-const var1027 Bool (endsWith/985337093 var3538 "f")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("f") 
 ; Statement: if $z4 != 0 goto $i5 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var1027 1 0) 0))) ; Cond: $z4 != 0 
(assert true)
(define-const var3973 Int (length/-134980193 var3538)) ; Statement: $i5 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var916 Int (- var3973 1)) ; Statement: $i6 = $i5 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var3538) var916) (>= var916 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1297-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1297-to-var2655=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3354=org.hibernate.hql.internal.ast.util.LiteralProcessor, var2772=r11, var3538=r0, var2956=null_type, var2972=i0, var1047=r12, var1027=$z4, var3973=$i5, var916=$i6, var2655=java.lang.Throwable, var2882=$r4, var1297=org.hibernate.HibernateException, var550=$r16, var2914=$r15, var1817=$r7, var3463=$r8, var661=$r9, var2273=$r10, var3046=$r17}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var3354, r11=var2772, r0=var3538, null_type=var2956, i0=var2972, r12=var1047, $z4=var1027, $i5=var3973, $i6=var916, java.lang.Throwable=var2655, $r4=var2882, org.hibernate.HibernateException=var1297, $r16=var550, $r15=var2914, $r7=var1817, $r8=var3463, $r9=var661, $r10=var2273, $r17=var3046}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r12 = r0;	if i0 != 102 goto (branch);	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("f");	if $z4 != 0 goto $i5 = virtualinvoke r0.<java.lang.String: int length()>();	$i5 = virtualinvoke r0.<java.lang.String: int length()>();	$i6 = $i5 - 1;	r12 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	goto [?= $r14 = new java.math.BigDecimal];	$r4 := @caughtexception;	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as big-decimal");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 4