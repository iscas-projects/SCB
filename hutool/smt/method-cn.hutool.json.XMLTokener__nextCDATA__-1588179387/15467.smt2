(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var2554 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun next/-1212382432 (var2554) Int)
(declare-fun cast-from-var526-to-var2554 (var526) var2554)
(declare-fun end/-13710854 (var2554) Bool)
(declare-fun syntaxError/603127542 (var2554 String) var2719)
(declare-const null-var526 var526)
(declare-const var2427 var526) ; Statement: r1 := @this: cn.hutool.json.XMLTokener 
(assert (not (= var2427 null-var526)))
(define-const var1712 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1712)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1712!1 String)
(assert (= var1712!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var2341 Int (next/-1212382432 (cast-from-var526-to-var2554 var2427))) ; Statement: $c7 = virtualinvoke r1.<cn.hutool.json.XMLTokener: char next()>() 
(assert true)
(define-const var2242 Bool (end/-13710854 (cast-from-var526-to-var2554 var2427))) ; Statement: $z0 = virtualinvoke r1.<cn.hutool.json.XMLTokener: boolean end()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c7) 
(assert (not (= (ite var2242 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3717 var2719 (syntaxError/603127542 (cast-from-var526-to-var2554 var2427) "Unclosed CDATA")) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.json.XMLTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unclosed CDATA") 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-var526-to-var2554=([cn.hutool.json.XMLTokener], cn.hutool.json.JSONTokener), end/-13710854=([cn.hutool.json.JSONTokener], boolean), syntaxError/603127542=([cn.hutool.json.JSONTokener, java.lang.String], cn.hutool.json.JSONException)}
; {var526=cn.hutool.json.XMLTokener, var2427=r1, var1712=$r4, var2554=cn.hutool.json.JSONTokener, var2341=$c7, var2242=$z0, var2719=cn.hutool.json.JSONException, var3717=$r3}
; {cn.hutool.json.XMLTokener=var526, r1=var2427, $r4=var1712, cn.hutool.json.JSONTokener=var2554, $c7=var2341, $z0=var2242, cn.hutool.json.JSONException=var2719, $r3=var3717}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: cn.hutool.json.XMLTokener;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$c7 = virtualinvoke r1.<cn.hutool.json.XMLTokener: char next()>();	$z0 = virtualinvoke r1.<cn.hutool.json.XMLTokener: boolean end()>();	if $z0 == 0 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c7);	$r3 = virtualinvoke r1.<cn.hutool.json.XMLTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unclosed CDATA");	throw $r3
;block_num 3