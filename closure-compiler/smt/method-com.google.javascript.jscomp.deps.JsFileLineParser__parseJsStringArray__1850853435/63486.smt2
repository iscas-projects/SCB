(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var3718 0)
(declare-sort var992 0)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var992-init () var992)
(declare-fun <init>/-325640736 (var992) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3029-init () var3029)
(declare-fun <init>/-102679163 (var3029 String Bool) void)
(declare-const null-var966 var966)
(declare-const null-String String)
(declare-const var1476 var966) ; Statement: r5 := @this: com.google.javascript.jscomp.deps.JsFileLineParser 
(assert (not (= var1476 null-var966)))
(declare-const var3471 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3471 null-String)))
(define-const var760 var992 var992-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var760)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var760!1 var992)
(assert true)
(define-const var2663 Int (indexOf/-1037706067 var3471 91)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(91) 
(assert true)
(define-const var2606 Int (lastIndexOf/-1292097097 var3471 93)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(93) 
(define-const var1513 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 == $i9 goto $r21 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException 
(assert (= var2663 var1513)) ; Cond: i0 == $i9 
(define-const var3143 var3029 var3029-init) ; Statement: $r21 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException 
(assert true)
;(assert (<init>/-102679163 var3143 "Syntax error when parsing JS array" (ite (= 1 1) true false))) ; Statement: specialinvoke $r21.<com.google.javascript.jscomp.deps.JsFileLineParser$ParseException: void <init>(java.lang.String,boolean)>("Syntax error when parsing JS array", 1) 

(declare-const var3143!1 var3029)
(declare-const var2762 String)
(declare-const var3420 Int)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var992-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3029-init=([], com.google.javascript.jscomp.deps.JsFileLineParser$ParseException), <init>/-102679163=([com.google.javascript.jscomp.deps.JsFileLineParser$ParseException, java.lang.String, boolean], void)}
; {var966=com.google.javascript.jscomp.deps.JsFileLineParser, var1476=r5, var3471=r1, var3718=null_type, var992=java.util.ArrayList, var760=$r20, var2663=i0, var2606=i1, var1513=$i9, var3029=com.google.javascript.jscomp.deps.JsFileLineParser$ParseException, var3143=$r21, var2762="Syntax error when parsing JS array", var3420=1}
; {com.google.javascript.jscomp.deps.JsFileLineParser=var966, r5=var1476, r1=var3471, null_type=var3718, java.util.ArrayList=var992, $r20=var760, i0=var2663, i1=var2606, $i9=var1513, com.google.javascript.jscomp.deps.JsFileLineParser$ParseException=var3029, $r21=var3143, "Syntax error when parsing JS array"=var2762, 1=var3420}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.deps.JsFileLineParser;	r1 := @parameter0: java.lang.String;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(91);	i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(93);	$i9 = (int) -1;	if i0 == $i9 goto $r21 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException;	$r21 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException;	specialinvoke $r21.<com.google.javascript.jscomp.deps.JsFileLineParser$ParseException: void <init>(java.lang.String,boolean)>("Syntax error when parsing JS array", 1);	throw $r21
;block_num 2