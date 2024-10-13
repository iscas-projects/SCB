(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1596 0)
(declare-sort var1797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun next/-1212382432 (var1596) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun syntaxError/603127542 (var1596 String) var1797)
(declare-const null-var1596 var1596)
(declare-const null-Int Int)
(declare-const var2852 var1596) ; Statement: r1 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var2852 null-var1596)))
(declare-const var2905 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var2905 null-Int)))
(define-const var2238 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2238)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2238!1 String)
(assert (= var2238!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var2770 Int (next/-1212382432 var2852)) ; Statement: $c3 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>() 
(define-const var3096 Int (cast-from-Int-to-Int var2770)) ; Statement: $i5 = (int) $c3 
 ; Statement: lookupswitch($i5) {     case 0: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 10: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 13: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 92: goto c4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>();     default: goto $i7 = (int) $c3; } 
(assert (and (= var3096 0) true)) ; Intersect: Cond: $i5 == 0  and Non Conditional 
(assert true)
(define-const var1190 var1797 (syntaxError/603127542 var2852 "Unterminated string")) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string") 
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-Int-to-Int=([char], int), syntaxError/603127542=([cn.hutool.json.JSONTokener, java.lang.String], cn.hutool.json.JSONException)}
; {var1596=cn.hutool.json.JSONTokener, var2852=r1, var2905=c2, var2238=$r6, var2770=$c3, var3096=$i5, var1797=cn.hutool.json.JSONException, var1190=$r4}
; {cn.hutool.json.JSONTokener=var1596, r1=var2852, c2=var2905, $r6=var2238, $c3=var2770, $i5=var3096, cn.hutool.json.JSONException=var1797, $r4=var1190}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: cn.hutool.json.JSONTokener;	c2 := @parameter0: char;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$c3 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>();	$i5 = (int) $c3;	lookupswitch($i5) {     case 0: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 10: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 13: goto $r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");     case 92: goto c4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>();     default: goto $i7 = (int) $c3; };	$r4 = virtualinvoke r1.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>("Unterminated string");	throw $r4
;block_num 3