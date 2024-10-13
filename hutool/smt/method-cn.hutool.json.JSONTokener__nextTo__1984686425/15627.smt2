(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var762 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun next/-1212382432 (var762) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var762 var762)
(declare-const null-String String)
(declare-const var3252 var762) ; Statement: r1 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var3252 null-var762)))
(declare-const var976 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var976 null-String)))
(define-const var2528 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2528)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2528!1 String)
(assert (= var2528!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var508 Int (next/-1212382432 var3252)) ; Statement: $c1 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>() 
(define-const var1499 Int (cast-from-Int-to-Int var508)) ; Statement: $i2 = (int) $c1 
(assert true)
(define-const var1044 Int (indexOf/-1037706067 var976 var1499)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($i2) 
 ; Statement: if $i0 >= 0 goto (branch) 
(assert (>= var1044 0)) ; Cond: $i0 >= 0 
 ; Statement: if $c1 == 0 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var508 0)) ; Cond: $c1 == 0 
(assert true)
(define-const var3237 String (toString/-2075883882 var2528!1)) ; Statement: $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3851 String (trim/-847153721 var3237)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var762=cn.hutool.json.JSONTokener, var3252=r1, var976=r2, var378=null_type, var2528=$r5, var508=$c1, var1499=$i2, var1044=$i0, var3237=$r3, var3851=$r4}
; {cn.hutool.json.JSONTokener=var762, r1=var3252, r2=var976, null_type=var378, $r5=var2528, $c1=var508, $i2=var1499, $i0=var1044, $r3=var3237, $r4=var3851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.json.JSONTokener;	r2 := @parameter0: java.lang.String;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$c1 = virtualinvoke r1.<cn.hutool.json.JSONTokener: char next()>();	$i2 = (int) $c1;	$i0 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($i2);	if $i0 >= 0 goto (branch);	if $c1 == 0 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	return $r4
;block_num 4