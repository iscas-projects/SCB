(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1709 0)
(declare-sort var1394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fileName/-323537676 (var1709) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1709 var1709)
(declare-const null-String String)
(declare-const var3470 var1709) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert (not (= var3470 null-var1709)))
(define-const var1361 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1361)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1361!1 String)
(assert (= var1361!1 ""))
(define-const var3468 String (fileName/-323537676 var3470)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> 
 ; Statement: if $r2 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3468 null-String)) ; Cond: $r2 == null 
(assert true)
(define-const var1132 String (toString/-2075883882 var1361!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fileName/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1709=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3470=r1, var1361=$r0, var3468=$r2, var1394=null_type, var1132=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1709, r1=var3470, $r0=var1361, $r2=var3468, null_type=var1394, $r4=var1132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName>;	if $r2 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2