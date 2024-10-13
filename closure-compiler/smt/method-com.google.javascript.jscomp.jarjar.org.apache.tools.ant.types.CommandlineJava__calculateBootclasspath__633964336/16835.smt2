(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var279 0)
(declare-sort var3578 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun vmVersion/473681453 (var2991) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun bootclasspath/473681453 (var2991) var279)
(declare-fun var279-init () var279)
(declare-fun <init>/-1939937668 (var279 var3578) void)
(declare-const null-var2991 var2991)
(declare-const null-Bool Bool)
(declare-const null-var279 var279)
(declare-const null-NullType var1383)
(declare-const null-var3578 var3578)
(declare-const var625 var2991) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava 
(assert (not (= var625 null-var2991)))
(declare-const var1622 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1622 null-Bool)))
(define-const var3928 String (vmVersion/473681453 var625)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String vmVersion> 
(assert true)
(define-const var253 Bool (startsWith/-1785782452 var3928 "1.1")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("1.1") 
 ; Statement: if $z0 == 0 goto r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path bootclasspath> 
(assert (not (= (ite var253 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1681 var279 (bootclasspath/473681453 var625)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path bootclasspath> 
 ; Statement: if $r5 == null goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (= var1681 null-var279)) ; Cond: $r5 == null 
(define-const var3326 var279 var279-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert true)
;(assert (<init>/-1939937668 var3326 null-var3578)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(null) 

(declare-const var3326!1 var279)
(declare-const var564 var1383)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {vmVersion/473681453=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), bootclasspath/473681453=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), var279-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), <init>/-1939937668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void)}
; {var2991=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var625=r0, var1622=z2, var3928=$r1, var253=$z0, var279=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1681=$r5, var3326=$r9, var3578=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var564=null, var1383=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var2991, r0=var625, z2=var1622, $r1=var3928, $z0=var253, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var279, $r5=var1681, $r9=var3326, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3578, null=var564, null_type=var1383}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava;	z2 := @parameter0: boolean;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String vmVersion>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("1.1");	if $z0 == 0 goto r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path bootclasspath>;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path bootclasspath>;	if $r5 == null goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(null);	return $r9
;block_num 3