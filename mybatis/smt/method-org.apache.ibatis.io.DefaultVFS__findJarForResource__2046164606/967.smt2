(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var954 0)
(declare-sort var1604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1604_isDebugEnabled/1799377200 (var1604) Bool)
(declare-fun String-init () String)
(declare-fun toExternalForm/431506284 (var954) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun lastIndexOf/987165568 (String String) Int)
(declare-const null-var1942 var1942)
(declare-const null-var954 var954)
(declare-const var1942-log var1604)
(declare-const var2624 var1942) ; Statement: r6 := @this: org.apache.ibatis.io.DefaultVFS 
(assert (not (= var2624 null-var1942)))
(declare-const var254 var954) ; Statement: r69 := @parameter0: java.net.URL 
(assert (not (= var254 null-var954)))
(define-const var836 var1604 var1942-log) ; Statement: $r0 = <org.apache.ibatis.io.DefaultVFS: org.apache.ibatis.logging.Log log> 
(define-const var3449 Bool (var1604_isDebugEnabled/1799377200 var836)) ; Statement: $z0 = interfaceinvoke $r0.<org.apache.ibatis.logging.Log: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto z11 = 1 
(assert (= (ite var3449 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2296 Bool (ite (= 1 1) true false)) ; Statement: z11 = 1 
(assert true) ; Non Conditional
 ; Statement: if z11 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2296 1 0) 0)) ; Cond: z11 == 0 
(define-const var3298 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var3861 String (toExternalForm/431506284 var254)) ; Statement: $r2 = virtualinvoke r69.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
;(assert (<init>/-1061048412 var3298 var3861)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3298!1 String)
(assert (= var3298!1 var3861))
(assert true)
(define-const var3459 Int (lastIndexOf/987165568 var3298!1 ".jar")) ; Statement: i0 = virtualinvoke $r1.<java.lang.StringBuilder: int lastIndexOf(java.lang.String)>(".jar") 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 4 
(assert (not (>= var3459 0))) ; Negate: Cond: i0 >= 0  
(define-const var578 var1604 var1942-log) ; Statement: $r41 = <org.apache.ibatis.io.DefaultVFS: org.apache.ibatis.logging.Log log> 
(define-const var822 Bool (var1604_isDebugEnabled/1799377200 var578)) ; Statement: $z9 = interfaceinvoke $r41.<org.apache.ibatis.logging.Log: boolean isDebugEnabled()>() 
 ; Statement: if $z9 == 0 goto return null 
(assert (= (ite var822 1 0) 0)) ; Cond: $z9 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1604_isDebugEnabled/1799377200=([org.apache.ibatis.logging.Log], boolean), String-init=([], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), lastIndexOf/987165568=([java.lang.StringBuilder, java.lang.String], int)}
; {var1942=org.apache.ibatis.io.DefaultVFS, var2624=r6, var954=java.net.URL, var254=r69, var1604=org.apache.ibatis.logging.Log, var836=$r0, var3449=$z0, var2296=z11, var3298=$r1, var3861=$r2, var3459=i0, var578=$r41, var822=$z9}
; {org.apache.ibatis.io.DefaultVFS=var1942, r6=var2624, java.net.URL=var954, r69=var254, org.apache.ibatis.logging.Log=var1604, $r0=var836, $z0=var3449, z11=var2296, $r1=var3298, $r2=var3861, i0=var3459, $r41=var578, $z9=var822}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int lastIndexOf(java.lang.String)>": 1}
;stmts r6 := @this: org.apache.ibatis.io.DefaultVFS;	r69 := @parameter0: java.net.URL;	$r0 = <org.apache.ibatis.io.DefaultVFS: org.apache.ibatis.logging.Log log>;	$z0 = interfaceinvoke $r0.<org.apache.ibatis.logging.Log: boolean isDebugEnabled()>();	if $z0 == 0 goto z11 = 1;	z11 = 1;	if z11 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	$r2 = virtualinvoke r69.<java.net.URL: java.lang.String toExternalForm()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	i0 = virtualinvoke $r1.<java.lang.StringBuilder: int lastIndexOf(java.lang.String)>(".jar");	if i0 >= 0 goto $i1 = i0 + 4;	$r41 = <org.apache.ibatis.io.DefaultVFS: org.apache.ibatis.logging.Log log>;	$z9 = interfaceinvoke $r41.<org.apache.ibatis.logging.Log: boolean isDebugEnabled()>();	if $z9 == 0 goto return null;	return null
;block_num 6