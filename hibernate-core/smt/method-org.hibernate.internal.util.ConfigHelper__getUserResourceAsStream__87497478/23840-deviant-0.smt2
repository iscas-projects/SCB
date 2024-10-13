(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var2110 0)
(declare-sort var623 0)
(declare-sort var1910 0)
(declare-sort var2433 0)
(declare-sort var3668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var623_currentThread/-1037784612 () var623)
(declare-fun getContextClassLoader/1719676180 (var623) var1910)
(declare-fun var2433-init () var2433)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2433 String) void)
(declare-fun cast-from-var2433-to-var3668 (var2433) var3668)
(declare-const null-String String)
(declare-const null-var2110 var2110)
(declare-const null-var1910 var1910)
(declare-const var20 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var20 null-String)))
(assert true)
(define-const var3342 Bool (startsWith/-1785782452 var20 "/")) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if z0 == 0 goto $r13 = r0 
(assert (not (= (ite var3342 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var20) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), var623_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader), var2433-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2433-to-var3668=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var20=r0, var2717=null_type, var3342=z0, var3010=$r13, var3058=r1, var2110=java.io.InputStream, var2365=r14, var623=java.lang.Thread, var957=$r2, var1910=java.lang.ClassLoader, var2301=$r12, var2433=org.hibernate.HibernateException, var1377=$r16, var1068=$r15, var403=$r5, var887=$r6, var3356=$r7, var3668=java.lang.Throwable, var2198=$r17}
; {r0=var20, null_type=var2717, z0=var3342, $r13=var3010, r1=var3058, java.io.InputStream=var2110, r14=var2365, java.lang.Thread=var623, $r2=var957, java.lang.ClassLoader=var1910, $r12=var2301, org.hibernate.HibernateException=var2433, $r16=var1377, $r15=var1068, $r5=var403, $r6=var887, $r7=var3356, java.lang.Throwable=var3668, $r17=var2198}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if z0 == 0 goto $r13 = r0;	$r13 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= r1 = $r13];	r1 = $r13;	r14 = null;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r2.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if $r12 == null goto (branch);	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto return r14;	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 7