(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2052548810 (String String) void)
(declare-const null-String String)
(declare-const var1152 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1152 null-String)))
(define-const var3270 Bool true) ; Statement: $z0 = r0 instanceof java.lang.StringBuilder 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3270 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1941 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/2052548810 var1941 var1152)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r0) 

(declare-const var1941!1 String)
(declare-const var1152!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/2052548810=([java.lang.StringBuilder, java.lang.CharSequence], void)}
; {var1152=r0, var3270=$z0, var1941=$r1}
; {r0=var1152, $z0=var3270, $r1=var1941}
;seq <java.lang.StringBuilder: void <init>(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$z0 = r0 instanceof java.lang.StringBuilder;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r0);	return $r1
;block_num 3