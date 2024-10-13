(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2535-init () var2535)
(declare-fun <init>/833573775 (var2535 String Int Int) void)
(declare-const null-String String)
(declare-const var1649 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1649 null-String)))
(assert true)
(define-const var2096 Int (indexOf/-1037706067 var1649 92)) ; Statement: i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var3709 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i24 = (int) -1 
 ; Statement: if i14 != $i24 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2096 var3709))) ; Cond: i14 != $i24 
(assert true)
(define-const var2824 Int (length/-134980193 var1649)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3045 Int (- var2824 1)) ; Statement: i1 = $i0 - 1 
(define-const var1570 Int 0) ; Statement: i15 = 0 
(define-const var3917 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3917 var3045)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var3917!1 String)
(declare-const var3045!1 Int)
(assert true) ; Non Conditional
(assert (and true (and (>= var1570 0) (>= (str.len var1649) var2096) (>= var2096 var1570))))
(define-const var1445 String (substring/-1240304868 var1649 var1570 var2096)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i15, i14) 
(assert true)
;(assert (append/672562846 var3917!1 var1445)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3917!2 String)
(assert (= var3917!2 (str.++ var3917!1 var1445)))
 ; Statement: if i14 < i1 goto $i2 = i14 + 1 
(assert (not (< var2096 var3045!1))) ; Negate: Cond: i14 < i1  
(define-const var2662 var2535 var2535-init) ; Statement: $r14 = new freemarker.core.ParseException 
(assert true)
;(assert (<init>/833573775 var2662 "The last character of string literal is backslash" 0 0)) ; Statement: specialinvoke $r14.<freemarker.core.ParseException: void <init>(java.lang.String,int,int)>("The last character of string literal is backslash", 0, 0) 

(declare-const var2662!1 var2535)
(declare-const var2476 String)
(declare-const var2469 Int)
(declare-const var2469!1 Int)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2535-init=([], freemarker.core.ParseException), <init>/833573775=([freemarker.core.ParseException, java.lang.String, int, int], void)}
; {var1649=r0, var1580=null_type, var2096=i14, var3709=$i24, var2824=$i0, var3045=i1, var1570=i15, var3917=$r13, var1445=$r2, var2535=freemarker.core.ParseException, var2662=$r14, var2476="The last character of string literal is backslash", var2469=0}
; {r0=var1649, null_type=var1580, i14=var2096, $i24=var3709, $i0=var2824, i1=var3045, i15=var1570, $r13=var3917, $r2=var1445, freemarker.core.ParseException=var2535, $r14=var2662, "The last character of string literal is backslash"=var2476, 0=var2469}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i24 = (int) -1;	if i14 != $i24 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = $i0 - 1;	i15 = 0;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>(int)>(i1);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i15, i14);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if i14 < i1 goto $i2 = i14 + 1;	$r14 = new freemarker.core.ParseException;	specialinvoke $r14.<freemarker.core.ParseException: void <init>(java.lang.String,int,int)>("The last character of string literal is backslash", 0, 0);	throw $r14
;block_num 4