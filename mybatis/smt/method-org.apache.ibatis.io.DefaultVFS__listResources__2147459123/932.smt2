(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var448 0)
(declare-sort var2442 0)
(declare-sort var3332 0)
(declare-sort var996 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var996-init () var996)
(declare-fun <init>/-325640736 (var996) void)
(declare-fun getNextJarEntry/-1609771985 (var2442) var2786)
(declare-const null-var448 var448)
(declare-const null-var2442 var2442)
(declare-const null-String String)
(declare-const null-var2786 var2786)
(declare-const var2490 var448) ; Statement: r17 := @this: org.apache.ibatis.io.DefaultVFS 
(assert (not (= var2490 null-var448)))
(declare-const var811 var2442) ; Statement: r1 := @parameter0: java.util.jar.JarInputStream 
(assert (not (= var811 null-var2442)))
(declare-const var2216 String) ; Statement: r18 := @parameter1: java.lang.String 
(assert (not (= var2216 null-String)))
(assert true)
(define-const var1909 Bool (startsWith/-1785782452 var2216 "/")) ; Statement: $z0 = virtualinvoke r18.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r18.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (not (= (ite var1909 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3383 Bool (endsWith/985337093 var2216 "/")) ; Statement: $z1 = virtualinvoke r18.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z1 != 0 goto $r22 = new java.util.ArrayList 
(assert (not (= (ite var3383 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2994 var996 var996-init) ; Statement: $r22 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2994)) ; Statement: specialinvoke $r22.<java.util.ArrayList: void <init>()>() 

(declare-const var2994!1 var996)
(assert true) ; Non Conditional
(assert true)
(define-const var1036 var2786 (getNextJarEntry/-1609771985 var811)) ; Statement: $r19 = virtualinvoke r1.<java.util.jar.JarInputStream: java.util.jar.JarEntry getNextJarEntry()>() 
 ; Statement: if $r19 == null goto return $r22 
(assert (= var1036 null-var2786)) ; Cond: $r19 == null 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var996-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getNextJarEntry/-1609771985=([java.util.jar.JarInputStream], java.util.jar.JarEntry)}
; {var448=org.apache.ibatis.io.DefaultVFS, var2490=r17, var2442=java.util.jar.JarInputStream, var811=r1, var2216=r18, var3332=null_type, var1909=$z0, var3383=$z1, var996=java.util.ArrayList, var2994=$r22, var2786=java.util.jar.JarEntry, var1036=$r19}
; {org.apache.ibatis.io.DefaultVFS=var448, r17=var2490, java.util.jar.JarInputStream=var2442, r1=var811, r18=var2216, null_type=var3332, $z0=var1909, $z1=var3383, java.util.ArrayList=var996, $r22=var2994, java.util.jar.JarEntry=var2786, $r19=var1036}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r17 := @this: org.apache.ibatis.io.DefaultVFS;	r1 := @parameter0: java.util.jar.JarInputStream;	r18 := @parameter1: java.lang.String;	$z0 = virtualinvoke r18.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto $z1 = virtualinvoke r18.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z1 = virtualinvoke r18.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z1 != 0 goto $r22 = new java.util.ArrayList;	$r22 = new java.util.ArrayList;	specialinvoke $r22.<java.util.ArrayList: void <init>()>();	$r19 = virtualinvoke r1.<java.util.jar.JarInputStream: java.util.jar.JarEntry getNextJarEntry()>();	if $r19 == null goto return $r22;	return $r22
;block_num 5