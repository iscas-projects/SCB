(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3255 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/991142800 (var985) void)
(declare-fun cast-from-var3255-to-var985 (var3255) var985)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun builder/-294971588 (var3255) String)
(declare-const null-var3255 var3255)
(declare-const null-String String)
(declare-const var1011 var3255) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var1011 null-var3255)))
(declare-const var2851 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2851 null-String)))
(assert true)
;(assert (<init>/991142800 (cast-from-var3255-to-var985 var1011))) ; Statement: specialinvoke r0.<java.io.Writer: void <init>()>() 

(declare-const var1011!1 var3255)
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2851 null-String)) ; Cond: r1 == null 
(define-const var3600 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3600)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3600!1 String)
(assert (= var3600!1 ""))
(assert true) ; Non Conditional
(declare-const var1011!2 var3255)
(assert (not (= var1011!2 null-var3255)))
(assert (= (builder/-294971588 var1011!2) var3600!1)) ; Statement: r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/991142800=([java.io.Writer], void), cast-from-var3255-to-var985=([org.apache.commons.io.output.StringBuilderWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder)}
; {var3255=org.apache.commons.io.output.StringBuilderWriter, var1011=r0, var2851=r1, var985=java.io.Writer, var3600=$r2}
; {org.apache.commons.io.output.StringBuilderWriter=var3255, r0=var1011, r1=var2851, java.io.Writer=var985, $r2=var3600}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	r1 := @parameter0: java.lang.StringBuilder;	specialinvoke r0.<java.io.Writer: void <init>()>();	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r2;	return
;block_num 3