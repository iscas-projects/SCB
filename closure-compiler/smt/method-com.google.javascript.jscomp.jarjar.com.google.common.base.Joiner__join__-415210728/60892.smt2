(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendTo/1893782800 (var1511 String Iterator) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1511 var1511)
(declare-const null-Iterator Iterator)
(declare-const var3898 var1511) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner 
(assert (not (= var3898 null-var1511)))
(declare-const var847 Iterator) ; Statement: r2 := @parameter0: java.util.Iterator 
(assert (not (= var847 null-Iterator)))
(define-const var2762 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2762)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2762!1 String)
(assert (= var2762!1 ""))
(assert true)
(define-const var88 String (appendTo/1893782800 var3898 var2762!1 var847)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.util.Iterator)>($r1, r2) 
(assert true)
(define-const var1748 String (toString/-2075883882 var88)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendTo/1893782800=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.StringBuilder, java.util.Iterator], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1511=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var3898=r0, var847=r2, var2762=$r1, var88=$r3, var1748=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var1511, r0=var3898, r2=var847, $r1=var2762, $r3=var88, $r4=var1748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner;	r2 := @parameter0: java.util.Iterator;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.util.Iterator)>($r1, r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1