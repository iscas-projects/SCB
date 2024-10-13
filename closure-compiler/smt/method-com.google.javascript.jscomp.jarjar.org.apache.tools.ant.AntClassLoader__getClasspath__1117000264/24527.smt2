(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2232 0)
(declare-sort var2604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun pathComponents/-814482109 (var2232) var2604)
(declare-fun iterator/-1989401310 (var2604) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2232 var2232)
(declare-const var3474 var2232) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3474 null-var2232)))
(define-const var422 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var422)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var422!1 String)
(assert (= var422!1 ""))
(define-const var3855 var2604 (pathComponents/-814482109 var3474)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents> 
(assert true)
(define-const var2886 Iterator (iterator/-1989401310 var3855)) ; Statement: r3 = virtualinvoke $r2.<java.util.Vector: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3909 Bool (Iterator_hasNext/-1669924200 var2886)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3909 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2676 String (toString/-2075883882 var422!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), pathComponents/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), iterator/-1989401310=([java.util.Vector], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2232=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3474=r1, var422=$r0, var2604=java.util.Vector, var3855=$r2, var2886=r3, var3909=$z0, var2676=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2232, r1=var3474, $r0=var422, java.util.Vector=var2604, $r2=var3855, r3=var2886, $z0=var3909, $r4=var2676}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents>;	r3 = virtualinvoke $r2.<java.util.Vector: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3