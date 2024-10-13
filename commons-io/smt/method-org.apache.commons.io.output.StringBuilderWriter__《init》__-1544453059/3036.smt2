(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3774 0)
(declare-sort var2333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/991142800 (var2333) void)
(declare-fun cast-from-var3774-to-var2333 (var3774) var2333)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun builder/-294971588 (var3774) String)
(declare-const null-var3774 var3774)
(declare-const var3648 var3774) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var3648 null-var3774)))
(assert true)
;(assert (<init>/991142800 (cast-from-var3774-to-var2333 var3648))) ; Statement: specialinvoke r0.<java.io.Writer: void <init>()>() 

(declare-const var3648!1 var3774)
(define-const var2388 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2388)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2388!1 String)
(assert (= var2388!1 ""))
(declare-const var3648!2 var3774)
(assert (not (= var3648!2 null-var3774)))
(assert (= (builder/-294971588 var3648!2) var2388!1)) ; Statement: r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/991142800=([java.io.Writer], void), cast-from-var3774-to-var2333=([org.apache.commons.io.output.StringBuilderWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder)}
; {var3774=org.apache.commons.io.output.StringBuilderWriter, var3648=r0, var2333=java.io.Writer, var2388=$r1}
; {org.apache.commons.io.output.StringBuilderWriter=var3774, r0=var3648, java.io.Writer=var2333, $r1=var2388}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	specialinvoke r0.<java.io.Writer: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r1;	return
;block_num 1