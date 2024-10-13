(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1634 0)
(declare-sort var2856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2856) void)
(declare-fun cast-from-var1634-to-var2856 (var1634) var2856)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun out/-1920232736 (var1634) String)
(declare-const null-var1634 var1634)
(declare-const var613 var1634) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var613 null-var1634)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1634-to-var2856 var613))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var613!1 var1634)
(define-const var1088 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1088)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1088!1 String)
(assert (= var1088!1 ""))
(declare-const var613!2 var1634)
(assert (not (= var613!2 null-var1634)))
(assert (= (out/-1920232736 var613!2) var1088!1)) ; Statement: r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1634-to-var2856=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), out/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.StringBuilder)}
; {var1634=com.google.javascript.jscomp.base.format.SimpleFormat, var613=r0, var2856=java.lang.Object, var1088=$r1}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var1634, r0=var613, java.lang.Object=var2856, $r1=var1088}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out> = $r1;	return
;block_num 1