(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort var2983 0)
(declare-sort var39 0)
(declare-sort var524 0)
(declare-sort var3958 0)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var39_currentThread/-1037784612 () var39)
(declare-fun getContextClassLoader/1719676180 (var39) var524)
(declare-fun var3958-init () var3958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3958 String) void)
(declare-fun cast-from-var3958-to-var744 (var3958) var744)
(declare-const null-String String)
(declare-const null-var2983 var2983)
(declare-const null-var524 var524)
(declare-const var2458 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2458 null-String)))
(assert true)
(define-const var2154 Bool (startsWith/-1785782452 var2458 "/")) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if z0 == 0 goto $r13 = r0 
(assert (= (ite var2154 1 0) 0)) ; Cond: z0 == 0 
(define-const var2671 String var2458) ; Statement: $r13 = r0 
(assert true) ; Non Conditional
(define-const var2416 String var2671) ; Statement: r1 = $r13 
(define-const var3640 var2983 null-var2983) ; Statement: r14 = null 
(define-const var2670 var39 var39_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var745 var524 (getContextClassLoader/1719676180 var2670)) ; Statement: $r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if $r12 == null goto (branch) 
(assert (= var745 null-var524)) ; Cond: $r12 == null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var3640 null-var2983))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var3640 null-var2983))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto return r14 
(assert (not (not (= var3640 null-var2983)))) ; Negate: Cond: r14 != null  
(define-const var3032 var3958 var3958-init) ; Statement: $r16 = new org.hibernate.HibernateException 
(define-const var2956 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2956)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2956!1 String)
(assert (= var2956!1 ""))
(assert true)
(define-const var3456 String (append/672562846 var2956!1 var2458)) ; Statement: $r5 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2956!2 String)
(assert (= var2956!2 (str.++ var2956!1 var2458)))
(assert true)
(define-const var364 String (append/672562846 var3456 " not found")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var3456!1 String)
(assert (= var3456!1 (str.++ var3456 " not found")))
(assert true)
(define-const var3929 String (toString/-2075883882 var364)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3032 var3929)) ; Statement: specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var3032!1 var3958)
(declare-const var3929!1 String)
(define-const var303 var744 (cast-from-var3958-to-var744 var3032!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var39_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader), var3958-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3958-to-var744=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2458=r0, var2840=null_type, var2154=z0, var2671=$r13, var2416=r1, var2983=java.io.InputStream, var3640=r14, var39=java.lang.Thread, var2670=$r2, var524=java.lang.ClassLoader, var745=$r12, var3958=org.hibernate.HibernateException, var3032=$r16, var2956=$r15, var3456=$r5, var364=$r6, var3929=$r7, var744=java.lang.Throwable, var303=$r17}
; {r0=var2458, null_type=var2840, z0=var2154, $r13=var2671, r1=var2416, java.io.InputStream=var2983, r14=var3640, java.lang.Thread=var39, $r2=var2670, java.lang.ClassLoader=var524, $r12=var745, org.hibernate.HibernateException=var3958, $r16=var3032, $r15=var2956, $r5=var3456, $r6=var364, $r7=var3929, java.lang.Throwable=var744, $r17=var303}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if z0 == 0 goto $r13 = r0;	$r13 = r0;	r1 = $r13;	r14 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r12 == null goto (branch);	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto return r14;	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 7