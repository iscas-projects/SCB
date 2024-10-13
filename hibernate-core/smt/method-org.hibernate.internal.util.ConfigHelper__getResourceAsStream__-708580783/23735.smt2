(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1934 0)
(declare-sort var3661 0)
(declare-sort var3309 0)
(declare-sort var590 0)
(declare-sort var1092 0)
(declare-sort var569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3309_currentThread/-1037784612 () var3309)
(declare-fun getContextClassLoader/1719676180 (var3309) var590)
(declare-fun var1092-init () var1092)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1092 String) void)
(declare-fun cast-from-var1092-to-var569 (var1092) var569)
(declare-const null-String String)
(declare-const null-var3661 var3661)
(declare-const null-var590 var590)
(declare-const var3845 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3845 null-String)))
(assert true)
(define-const var2747 Bool (startsWith/-1785782452 var3845 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r12 = r0 
(assert (not (= (ite var2747 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var3845) 1))))
(define-const var419 String (substring/850833817 var3845 1)) ; Statement: $r12 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= r1 = $r12] 
(assert true) ; Non Conditional
(define-const var1216 String var419) ; Statement: r1 = $r12 
(define-const var2665 var3661 null-var3661) ; Statement: r13 = null 
(define-const var2983 var3309 var3309_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3354 var590 (getContextClassLoader/1719676180 var2983)) ; Statement: $r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r11 == null goto (branch) 
(assert (= var3354 null-var590)) ; Cond: $r11 == null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var2665 null-var3661))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var2665 null-var3661))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto return r13 
(assert (not (not (= var2665 null-var3661)))) ; Negate: Cond: r13 != null  
(define-const var79 var1092 var1092-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var3343 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3343)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3343!1 String)
(assert (= var3343!1 ""))
(assert true)
(define-const var2138 String (append/672562846 var3343!1 var3845)) ; Statement: $r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3343!2 String)
(assert (= var3343!2 (str.++ var3343!1 var3845)))
(assert true)
(define-const var1179 String (append/672562846 var2138 " not found")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var2138!1 String)
(assert (= var2138!1 (str.++ var2138 " not found")))
(assert true)
(define-const var3369 String (toString/-2075883882 var1179)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var79 var3369)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var79!1 var1092)
(declare-const var3369!1 String)
(define-const var3161 var569 (cast-from-var1092-to-var569 var79!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var3309_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader), var1092-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1092-to-var569=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3845=r0, var1934=null_type, var2747=$z0, var419=$r12, var1216=r1, var3661=java.io.InputStream, var2665=r13, var3309=java.lang.Thread, var2983=$r2, var590=java.lang.ClassLoader, var3354=$r11, var1092=org.hibernate.HibernateException, var79=$r15, var3343=$r14, var2138=$r5, var1179=$r6, var3369=$r7, var569=java.lang.Throwable, var3161=$r16}
; {r0=var3845, null_type=var1934, $z0=var2747, $r12=var419, r1=var1216, java.io.InputStream=var3661, r13=var2665, java.lang.Thread=var3309, $r2=var2983, java.lang.ClassLoader=var590, $r11=var3354, org.hibernate.HibernateException=var1092, $r15=var79, $r14=var3343, $r5=var2138, $r6=var1179, $r7=var3369, java.lang.Throwable=var569, $r16=var3161}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r12 = r0;	$r12 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= r1 = $r12];	r1 = $r12;	r13 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r11 == null goto (branch);	if r13 != null goto (branch);	if r13 != null goto (branch);	if r13 != null goto return r13;	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 7