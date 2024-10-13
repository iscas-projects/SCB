(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var939 0)
(declare-sort var875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun registerTemplate/1901428952 (var875 String String String) void)
(declare-fun cast-from-var2022-to-var875 (var2022) var875)
(declare-const null-var2022 var2022)
(declare-const null-String String)
(declare-const var2821 var2022) ; Statement: r2 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2 
(assert (not (= var2821 null-var2022)))
(declare-const var3381 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3381 null-String)))
(declare-const var1487 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1487 null-String)))
(declare-const var1652 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1652 null-String)))
(assert true)
(define-const var3901 Int (lastIndexOf/-1292097097 var1487 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (and true (and (>= 0 0) (>= (str.len var1487) var3901) (>= var3901 0))))
(define-const var2489 String (substring/-1240304868 var1487 0 var3901)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true)
;(assert (registerTemplate/1901428952 (cast-from-var2022-to-var875 var2821) var3381 var2489 var1652)) ; Statement: specialinvoke r2.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void registerTemplate(java.lang.StringBuilder,java.lang.String,java.lang.String)>(r3, r1, r4) 

(declare-const var2821!1 var2022)
(declare-const var3381!1 String)
(declare-const var2489!1 String)
(declare-const var1652!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), registerTemplate/1901428952=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, java.lang.StringBuilder, java.lang.String, java.lang.String], void), cast-from-var2022-to-var875=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2], com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper)}
; {var2022=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2, var2821=r2, var3381=r3, var1487=r0, var939=null_type, var1652=r4, var3901=$i0, var2489=r1, var875=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2=var2022, r2=var2821, r3=var3381, r0=var1487, null_type=var939, r4=var1652, $i0=var3901, r1=var2489, com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper=var875}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper$2;	r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	specialinvoke r2.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: void registerTemplate(java.lang.StringBuilder,java.lang.String,java.lang.String)>(r3, r1, r4);	return
;block_num 1