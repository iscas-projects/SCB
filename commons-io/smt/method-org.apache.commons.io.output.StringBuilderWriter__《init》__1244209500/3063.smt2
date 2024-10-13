(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1983 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/991142800 (var1406) void)
(declare-fun cast-from-var1983-to-var1406 (var1983) var1406)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun builder/-294971588 (var1983) String)
(declare-const null-var1983 var1983)
(declare-const null-Int Int)
(declare-const var3642 var1983) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var3642 null-var1983)))
(declare-const var2291 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2291 null-Int)))
(assert true)
;(assert (<init>/991142800 (cast-from-var1983-to-var1406 var3642))) ; Statement: specialinvoke r0.<java.io.Writer: void <init>()>() 

(declare-const var3642!1 var1983)
(define-const var3556 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3556 var2291)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var3556!1 String)
(declare-const var2291!1 Int)
(declare-const var3642!2 var1983)
(assert (not (= var3642!2 null-var1983)))
(assert (= (builder/-294971588 var3642!2) var3556!1)) ; Statement: r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/991142800=([java.io.Writer], void), cast-from-var1983-to-var1406=([org.apache.commons.io.output.StringBuilderWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder)}
; {var1983=org.apache.commons.io.output.StringBuilderWriter, var3642=r0, var2291=i0, var1406=java.io.Writer, var3556=$r1}
; {org.apache.commons.io.output.StringBuilderWriter=var1983, r0=var3642, i0=var2291, java.io.Writer=var1406, $r1=var3556}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	i0 := @parameter0: int;	specialinvoke r0.<java.io.Writer: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0);	r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> = $r1;	return
;block_num 1