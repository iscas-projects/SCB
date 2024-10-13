(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var69 0)
(declare-sort var1062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1062_makeDesc/-677107583 (String ClassObject) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1695 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1695 null-String)))
(declare-const var2189 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2189 null-ClassObject)))
(define-const var1830 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1830 var1695)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var1830!1 String)
(assert (= var1830!1 var1695))
;(assert (var1062_makeDesc/-677107583 var1830!1 var2189)) ; Statement: staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: void makeDesc(java.lang.StringBuilder,java.lang.Class)>($r0, r2) 

(declare-const var1830!2 String)
(declare-const var2189!1 ClassObject)
(assert true)
(define-const var2215 String (toString/-2075883882 var1830!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1062_makeDesc/-677107583=([java.lang.StringBuilder, java.lang.Class], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1695=r1, var69=null_type, var2189=r2, var1830=$r0, var1062=org.apache.ibatis.javassist.util.proxy.RuntimeSupport, var2215=$r3}
; {r1=var1695, null_type=var69, r2=var2189, $r0=var1830, org.apache.ibatis.javassist.util.proxy.RuntimeSupport=var1062, $r3=var2215}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: void makeDesc(java.lang.StringBuilder,java.lang.Class)>($r0, r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1