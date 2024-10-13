(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var132 0)
(declare-sort var1316 0)
(declare-sort var3532 0)
(declare-sort var1243 0)
(declare-sort var823 0)
(declare-sort var2707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3532_currentThread/-1037784612 () var3532)
(declare-fun getContextClassLoader/1719676180 (var3532) var1243)
(declare-fun var823-init () var823)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var823 String) void)
(declare-fun cast-from-var823-to-var2707 (var823) var2707)
(declare-const null-String String)
(declare-const null-var1316 var1316)
(declare-const null-var1243 var1243)
(declare-const var1009 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1009 null-String)))
(assert true)
(define-const var2872 Bool (startsWith/-1785782452 var1009 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r12 = r0 
(assert (= (ite var2872 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2015 String var1009) ; Statement: $r12 = r0 
(assert true) ; Non Conditional
(define-const var1916 String var2015) ; Statement: r1 = $r12 
(define-const var16 var1316 null-var1316) ; Statement: r13 = null 
(define-const var2732 var3532 var3532_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1458 var1243 (getContextClassLoader/1719676180 var2732)) ; Statement: $r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r11 == null goto (branch) 
(assert (= var1458 null-var1243)) ; Cond: $r11 == null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var16 null-var1316))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var16 null-var1316))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto return r13 
(assert (not (not (= var16 null-var1316)))) ; Negate: Cond: r13 != null  
(define-const var3920 var823 var823-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var1301 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1301)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1301!1 String)
(assert (= var1301!1 ""))
(assert true)
(define-const var1690 String (append/672562846 var1301!1 var1009)) ; Statement: $r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1301!2 String)
(assert (= var1301!2 (str.++ var1301!1 var1009)))
(assert true)
(define-const var3718 String (append/672562846 var1690 " not found")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 " not found")))
(assert true)
(define-const var3562 String (toString/-2075883882 var3718)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3920 var3562)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var3920!1 var823)
(declare-const var3562!1 String)
(define-const var2830 var2707 (cast-from-var823-to-var2707 var3920!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3532_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader), var823-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var823-to-var2707=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1009=r0, var132=null_type, var2872=$z0, var2015=$r12, var1916=r1, var1316=java.io.InputStream, var16=r13, var3532=java.lang.Thread, var2732=$r2, var1243=java.lang.ClassLoader, var1458=$r11, var823=org.hibernate.HibernateException, var3920=$r15, var1301=$r14, var1690=$r5, var3718=$r6, var3562=$r7, var2707=java.lang.Throwable, var2830=$r16}
; {r0=var1009, null_type=var132, $z0=var2872, $r12=var2015, r1=var1916, java.io.InputStream=var1316, r13=var16, java.lang.Thread=var3532, $r2=var2732, java.lang.ClassLoader=var1243, $r11=var1458, org.hibernate.HibernateException=var823, $r15=var3920, $r14=var1301, $r5=var1690, $r6=var3718, $r7=var3562, java.lang.Throwable=var2707, $r16=var2830}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r12 = r0;	$r12 = r0;	r1 = $r12;	r13 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r11 == null goto (branch);	if r13 != null goto (branch);	if r13 != null goto (branch);	if r13 != null goto return r13;	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 7