(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var938 0)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/991142800 (var829) void)
(declare-fun cast-from-var938-to-var829 (var938) var829)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun buffer/-421028705 (var938) String)
(declare-const null-var938 var938)
(declare-const var938-BUFFER_SIZE Int)
(declare-const var2261 var938) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var2261 null-var938)))
(assert true)
;(assert (<init>/991142800 (cast-from-var938-to-var829 var2261))) ; Statement: specialinvoke r0.<java.io.Writer: void <init>()>() 

(declare-const var2261!1 var938)
(define-const var2185 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var749 Int var938-BUFFER_SIZE) ; Statement: $i0 = <com.github.jknack.handlebars.internal.FastStringWriter: int BUFFER_SIZE> 
(assert true)
;(assert (<init>/543593434 var2185 var749)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2185!1 String)
(declare-const var749!1 Int)
(declare-const var2261!2 var938)
(assert (not (= var2261!2 null-var938)))
(assert (= (buffer/-421028705 var2261!2) var2185!1)) ; Statement: r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/991142800=([java.io.Writer], void), cast-from-var938-to-var829=([com.github.jknack.handlebars.internal.FastStringWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder)}
; {var938=com.github.jknack.handlebars.internal.FastStringWriter, var2261=r0, var829=java.io.Writer, var2185=$r1, var749=$i0}
; {com.github.jknack.handlebars.internal.FastStringWriter=var938, r0=var2261, java.io.Writer=var829, $r1=var2185, $i0=var749}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	specialinvoke r0.<java.io.Writer: void <init>()>();	$r1 = new java.lang.StringBuilder;	$i0 = <com.github.jknack.handlebars.internal.FastStringWriter: int BUFFER_SIZE>;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i0);	r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> = $r1;	return
;block_num 1