(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendTo/-463523807 (var3433 String Iterator) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3433 var3433)
(declare-const null-Iterator Iterator)
(declare-const var1094 var3433) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner 
(assert (not (= var1094 null-var3433)))
(declare-const var2046 Iterator) ; Statement: r2 := @parameter0: java.util.Iterator 
(assert (not (= var2046 null-Iterator)))
(define-const var85 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var85)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var85!1 String)
(assert (= var85!1 ""))
(assert true)
(define-const var2077 String (appendTo/-463523807 var1094 var85!1 var2046)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.util.Iterator)>($r1, r2) 
(assert true)
(define-const var1092 String (toString/-2075883882 var2077)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendTo/-463523807=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner, java.lang.StringBuilder, java.util.Iterator], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3433=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner, var1094=r0, var2046=r2, var85=$r1, var2077=$r3, var1092=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner=var3433, r0=var1094, r2=var2046, $r1=var85, $r3=var2077, $r4=var1092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner;	r2 := @parameter0: java.util.Iterator;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner: java.lang.StringBuilder appendTo(java.lang.StringBuilder,java.util.Iterator)>($r1, r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1