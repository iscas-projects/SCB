(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var3790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3790) void)
(declare-fun cast-from-var2264-to-var3790 (var2264) var3790)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/1997898014 (var2264) String)
(declare-const null-var2264 var2264)
(declare-const var3621 var2264) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var3621 null-var2264)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2264-to-var3790 var3621))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3621!1 var2264)
(define-const var2458 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2458)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2458!1 String)
(assert (= var2458!1 ""))
(declare-const var3621!2 var2264)
(assert (not (= var3621!2 null-var2264)))
(assert (= (buffer/1997898014 var3621!2) var2458!1)) ; Statement: r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2264-to-var3790=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder)}
; {var2264=com.github.jknack.handlebars.Options$InMemoryBuffer, var3621=r0, var3790=java.lang.Object, var2458=$r1}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var2264, r0=var3621, java.lang.Object=var3790, $r1=var2458}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> = $r1;	return
;block_num 1