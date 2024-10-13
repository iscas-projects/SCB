(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3508 0)
(declare-sort var2390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2390) void)
(declare-fun cast-from-var3508-to-var2390 (var3508) var2390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun line/1145894928 (var3508) String)
(declare-const null-var3508 var3508)
(declare-const var3020 var3508) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var3020 null-var3508)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3508-to-var2390 var3020))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3020!1 var3508)
(define-const var2882 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2882)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2882!1 String)
(assert (= var2882!1 ""))
(declare-const var3020!2 var3508)
(assert (not (= var3020!2 null-var3508)))
(assert (= (line/1145894928 var3020!2) var2882!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3508-to-var2390=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder)}
; {var3508=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var3020=r0, var2390=java.lang.Object, var2882=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var3508, r0=var3020, java.lang.Object=var2390, $r1=var2882}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r1;	return
;block_num 1