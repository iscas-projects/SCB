(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2393 0)
(declare-sort var959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun header/718816679 (var2393 String String) void)
(declare-fun registerTemplate/1901428952 (var2393 String String String) void)
(declare-fun tail/-22421557 (var2393 String) void)
(declare-const null-var2393 var2393)
(declare-const null-String String)
(declare-const var2945 var2393) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper 
(assert (not (= var2945 null-var2393)))
(declare-const var3074 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3074 null-String)))
(declare-const var1158 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1158 null-String)))
(define-const var3489 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3489)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3489!1 String)
(assert (= var3489!1 ""))
(assert true)
;(assert (header/718816679 var2945 var3074 var3489!1)) ; Statement: virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void header(java.lang.String,java.lang.StringBuilder)>(r2, $r0) 

(declare-const var2945!1 var2393)
(declare-const var3074!1 String)
(declare-const var3489!2 String)
(assert true)
;(assert (registerTemplate/1901428952 var2945!1 var3489!2 var3074!1 var1158)) ; Statement: virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void registerTemplate(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r0, r2, r3) 

(declare-const var2945!2 var2393)
(declare-const var3489!3 String)
(declare-const var3074!2 String)
(declare-const var1158!1 String)
(assert true)
;(assert (tail/-22421557 var2945!2 var3489!3)) ; Statement: virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void tail(java.lang.StringBuilder)>($r0) 

(declare-const var2945!3 var2393)
(declare-const var3489!4 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), header/718816679=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, java.lang.String, java.lang.StringBuilder], void), registerTemplate/1901428952=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, java.lang.StringBuilder, java.lang.String, java.lang.String], void), tail/-22421557=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, java.lang.StringBuilder], void)}
; {var2393=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, var2945=r1, var3074=r2, var959=null_type, var1158=r3, var3489=$r0}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper=var2393, r1=var2945, r2=var3074, null_type=var959, r3=var1158, $r0=var3489}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void header(java.lang.String,java.lang.StringBuilder)>(r2, $r0);	virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void registerTemplate(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r0, r2, r3);	virtualinvoke r1.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void tail(java.lang.StringBuilder)>($r0);	return $r0
;block_num 1