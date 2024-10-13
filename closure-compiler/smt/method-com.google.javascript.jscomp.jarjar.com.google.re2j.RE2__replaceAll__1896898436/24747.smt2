(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2618 0)
(declare-sort var1425 0)
(declare-sort var757 0)
(declare-sort var881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var757-init () var757)
(declare-fun <init>/1939301191 (var757 var2618 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replaceAllFunc/-1022783119 (var2618 String var881 Int) String)
(declare-fun cast-from-var757-to-var881 (var757) var881)
(declare-const null-var2618 var2618)
(declare-const null-String String)
(declare-const var2463 var2618) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2 
(assert (not (= var2463 null-var2618)))
(declare-const var3091 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3091 null-String)))
(declare-const var565 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var565 null-String)))
(define-const var91 var757 var757-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1 
(assert true)
;(assert (<init>/1939301191 var91 var2463 var565)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1: void <init>(com.google.javascript.jscomp.jarjar.com.google.re2j.RE2,java.lang.String)>(r0, r3) 

(declare-const var91!1 var757)
(declare-const var2463!1 var2618)
(declare-const var565!1 String)
(assert true)
(define-const var3644 Int (length/-134980193 var3091)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var510 Int (* 2 var3644)) ; Statement: $i1 = 2 * $i0 
(define-const var3251 Int (+ var510 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
(define-const var3324 String (replaceAllFunc/-1022783119 var2463!1 var3091 (cast-from-var757-to-var881 var91!1) var3251)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String replaceAllFunc(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc,int)>(r1, $r2, $i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var757-init=([], com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1), <init>/1939301191=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, java.lang.String], void), length/-134980193=([java.lang.String], int), replaceAllFunc/-1022783119=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc, int], java.lang.String), cast-from-var757-to-var881=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1], com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc)}
; {var2618=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, var2463=r0, var3091=r1, var1425=null_type, var565=r3, var757=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1, var91=$r2, var3644=$i0, var510=$i1, var3251=$i2, var881=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc, var3324=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.RE2=var2618, r0=var2463, r1=var3091, null_type=var1425, r3=var565, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1=var757, $r2=var91, $i0=var3644, $i1=var510, $i2=var3251, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc=var881, $r4=var3324}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$1: void <init>(com.google.javascript.jscomp.jarjar.com.google.re2j.RE2,java.lang.String)>(r0, r3);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	$i2 = $i1 + 1;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String replaceAllFunc(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc,int)>(r1, $r2, $i2);	return $r4
;block_num 1