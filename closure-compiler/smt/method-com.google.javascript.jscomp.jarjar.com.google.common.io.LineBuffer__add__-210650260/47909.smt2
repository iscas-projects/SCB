(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var978) Bool)
(declare-fun line/1145894928 (var978) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var978 var978)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3149 var978) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var3149 null-var978)))
(declare-const var2589 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2589 null-__Array__Int__Int__)))
(declare-const var2643 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2643 null-Int)))
(declare-const var3020 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3020 null-Int)))
(define-const var2265 Int var2643) ; Statement: i11 = i0 
(define-const var1946 Bool (sawReturn/1145894928 var3149)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 == 0 goto i12 = i11 
(assert (= (ite var1946 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2768 Int var2265) ; Statement: i12 = i11 
(define-const var1049 Int (+ var2643 var3020)) ; Statement: $i13 = i0 + i1 
(assert true) ; Non Conditional
 ; Statement: if i11 >= $i13 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert (>= var2265 var1049)) ; Cond: i11 >= $i13 
(define-const var710 String (line/1145894928 var3149)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(define-const var58 Int (+ var2643 var3020)) ; Statement: $i2 = i0 + i1 
(define-const var2328 Int (- var58 var2768)) ; Statement: $i3 = $i2 - i12 
(assert true)
;(assert (append/-1748486345 var710 var2589 var2768 var2328)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i12, $i3) 
(declare-const var710!1 String)
(assert (str.prefixof var710 var710!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var978=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var3149=r0, var2589=r1, var2643=i0, var3020=i1, var2265=i11, var1946=$z0, var2768=i12, var1049=$i13, var710=$r2, var58=$i2, var2328=$i3}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var978, r0=var3149, r1=var2589, i0=var2643, i1=var3020, i11=var2265, $z0=var1946, i12=var2768, $i13=var1049, $r2=var710, $i2=var58, $i3=var2328}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	i11 = i0;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 == 0 goto i12 = i11;	i12 = i11;	$i13 = i0 + i1;	if i11 >= $i13 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$i2 = i0 + i1;	$i3 = $i2 - i12;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i12, $i3);	return
;block_num 4