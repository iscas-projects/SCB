(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2097 0)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentTokenIndex/-1211218298 (var2097) Int)
(declare-fun getBufferStartIndex/-1061114896 (var2097) Int)
(declare-fun var567-init () var567)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var567 String) void)
(declare-const null-var2097 var2097)
(declare-const null-Int Int)
(declare-const var845 var2097) ; Statement: r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream 
(assert (not (= var845 null-var2097)))
(declare-const var2992 Int) ; Statement: i16 := @parameter0: int 
(assert (not (= var2992 null-Int)))
(define-const var951 Int (currentTokenIndex/-1211218298 var845)) ; Statement: $i0 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex> 
 ; Statement: if i16 != $i0 goto $i1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex> 
(assert (not (= var2992 var951))) ; Cond: i16 != $i0 
(define-const var1697 Int (currentTokenIndex/-1211218298 var845)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex> 
 ; Statement: if i16 <= $i1 goto $i14 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>() 
(assert (<= var2992 var1697)) ; Cond: i16 <= $i1 
(assert true)
(define-const var383 Int (getBufferStartIndex/-1061114896 var845)) ; Statement: $i14 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>() 
(define-const var716 Int (- var2992 var383)) ; Statement: $i15 = i16 - $i14 
 ; Statement: if $i15 >= 0 goto $i2 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int n> 
(assert (not (>= var716 0))) ; Negate: Cond: $i15 >= 0  
(define-const var3733 var567 var567-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var2403 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2403)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2403!1 String)
(assert (= var2403!1 ""))
(assert true)
(define-const var404 String (append/672562846 var2403!1 "cannot seek to negative index ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot seek to negative index ") 
(declare-const var2403!2 String)
(assert (= var2403!2 (str.++ var2403!1 "cannot seek to negative index ")))
(assert true)
(define-const var2907 String (append/-1001720160 var404 var2992)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i16) 
(declare-const var404!1 String)
(assert (str.prefixof var404 var404!1))
(assert true)
(define-const var1015 String (toString/-2075883882 var2907)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3733 var1015)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var3733!1 var567)
(declare-const var1015!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {currentTokenIndex/-1211218298=([org.antlr.v4.runtime.UnbufferedTokenStream], int), getBufferStartIndex/-1061114896=([org.antlr.v4.runtime.UnbufferedTokenStream], int), var567-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2097=org.antlr.v4.runtime.UnbufferedTokenStream, var845=r0, var2992=i16, var951=$i0, var1697=$i1, var383=$i14, var716=$i15, var567=java.lang.IllegalArgumentException, var3733=$r13, var2403=$r14, var404=$r15, var2907=$r16, var1015=$r17}
; {org.antlr.v4.runtime.UnbufferedTokenStream=var2097, r0=var845, i16=var2992, $i0=var951, $i1=var1697, $i14=var383, $i15=var716, java.lang.IllegalArgumentException=var567, $r13=var3733, $r14=var2403, $r15=var404, $r16=var2907, $r17=var1015}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream;	i16 := @parameter0: int;	$i0 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex>;	if i16 != $i0 goto $i1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex>;	$i1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int currentTokenIndex>;	if i16 <= $i1 goto $i14 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>();	$i14 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>();	$i15 = i16 - $i14;	if $i15 >= 0 goto $i2 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int n>;	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot seek to negative index ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i16);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 4