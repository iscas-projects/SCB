(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun next/-1212382432 (var3024) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3024 var3024)
(declare-const null-Int Int)
(declare-const var1707 var3024) ; Statement: r1 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var1707 null-var3024)))
(declare-const var38 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var38 null-Int)))
(define-const var1332 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1332)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1332!1 String)
(assert (= var1332!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var1225 Int (next/-1212382432 var1707)) ; Statement: $c1 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>() 
(define-const var221 Int (cast-from-Int-to-Int var1225)) ; Statement: $i2 = (int) $c1 
(define-const var2107 Int (cast-from-Int-to-Int var38)) ; Statement: $i3 = (int) c0 
 ; Statement: if $i2 == $i3 goto (branch) 
(assert (= var221 var2107)) ; Cond: $i2 == $i3 
 ; Statement: if $c1 == 0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1225 0)) ; Cond: $c1 == 0 
(assert true)
(define-const var2420 String (toString/-2075883882 var1332!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1291 String (trim/-847153721 var2420)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-Int-to-Int=([char], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3024=cn.hutool.json.JSONTokener, var1707=r1, var38=c0, var1332=$r4, var1225=$c1, var221=$i2, var2107=$i3, var2420=$r2, var1291=$r3}
; {cn.hutool.json.JSONTokener=var3024, r1=var1707, c0=var38, $r4=var1332, $c1=var1225, $i2=var221, $i3=var2107, $r2=var2420, $r3=var1291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.json.JSONTokener;	c0 := @parameter0: char;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$c1 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>();	$i2 = (int) $c1;	$i3 = (int) c0;	if $i2 == $i3 goto (branch);	if $c1 == 0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 4