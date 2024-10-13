(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var97 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2339-init () var2339)
(declare-fun <init>/-907292298 (var2339 Int) void)
(declare-fun read/2055644853 (var97) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun toCharArray/-1052919015 (var2339) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var97 var97)
(declare-const var879 var97) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var879 null-var97)))
(define-const var104 var2339 var2339-init) ; Statement: $r5 = new java.io.CharArrayWriter 
(assert true)
;(assert (<init>/-907292298 var104 1024)) ; Statement: specialinvoke $r5.<java.io.CharArrayWriter: void <init>(int)>(1024) 

(declare-const var104!1 var2339)
(declare-const var184 Int)
(define-const var2003 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1960 Int (read/2055644853 var879)) ; Statement: $i0 = virtualinvoke r1.<java.io.Reader: int read()>() 
(define-const var1359 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i0 == $i3 goto $r7 = new java.lang.String 
(assert (= var1960 var1359)) ; Cond: $i0 == $i3 
(define-const var28 String String-init) ; Statement: $r7 = new java.lang.String 
(assert true)
(define-const var1046 (Array Int Int) (toCharArray/-1052919015 var104!1)) ; Statement: $r3 = virtualinvoke $r5.<java.io.CharArrayWriter: char[] toCharArray()>() 
(assert true)
;(assert (<init>/-915723298 var28 var1046)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var28!1 String)
(declare-const var1046!1 (Array Int Int))
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2339-init=([], java.io.CharArrayWriter), <init>/-907292298=([java.io.CharArrayWriter, int], void), read/2055644853=([java.io.Reader], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.String), toCharArray/-1052919015=([java.io.CharArrayWriter], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var97=java.io.Reader, var879=r1, var2339=java.io.CharArrayWriter, var104=$r5, var184=1024, var2003=i1, var1960=$i0, var1359=$i3, var28=$r7, var1046=$r3}
; {java.io.Reader=var97, r1=var879, java.io.CharArrayWriter=var2339, $r5=var104, 1024=var184, i1=var2003, $i0=var1960, $i3=var1359, $r7=var28, $r3=var1046}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: java.io.Reader;	$r5 = new java.io.CharArrayWriter;	specialinvoke $r5.<java.io.CharArrayWriter: void <init>(int)>(1024);	i1 = 0;	$i0 = virtualinvoke r1.<java.io.Reader: int read()>();	$i3 = (int) -1;	if $i0 == $i3 goto $r7 = new java.lang.String;	$r7 = new java.lang.String;	$r3 = virtualinvoke $r5.<java.io.CharArrayWriter: char[] toCharArray()>();	specialinvoke $r7.<java.lang.String: void <init>(char[])>($r3);	return $r7
;block_num 3