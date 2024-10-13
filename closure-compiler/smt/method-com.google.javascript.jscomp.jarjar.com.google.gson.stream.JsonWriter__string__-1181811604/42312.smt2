(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var3840 0)
(declare-sort var575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun htmlSafe/-1499488963 (var2396) Bool)
(declare-fun out/-1499488963 (var2396) var575)
(declare-fun write/33947008 (var575 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2396 var2396)
(declare-const null-String String)
(declare-const var2396-HTML_SAFE_REPLACEMENT_CHARS (Array Int String))
(declare-const var296 var2396) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var296 null-var2396)))
(declare-const var808 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var808 null-String)))
(define-const var142 Bool (htmlSafe/-1499488963 var296)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: boolean htmlSafe> 
 ; Statement: if $z0 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert (not (= (ite var142 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var344 (Array Int String) var2396-HTML_SAFE_REPLACEMENT_CHARS) ; Statement: $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] HTML_SAFE_REPLACEMENT_CHARS> 
 ; Statement: goto [?= r1 = $r8] 
(assert true) ; Non Conditional
(define-const var2514 (Array Int String) var344) ; Statement: r1 = $r8 
(define-const var219 var575 (out/-1499488963 var296)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var219 34)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(int)>(34) 

(declare-const var219!1 var575)
(declare-const var3682 Int)
(define-const var3321 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var697 Int (length/-134980193 var808)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var3833 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i3 goto (branch) 
(assert (>= var3833 var697)) ; Cond: i5 >= $i3 
 ; Statement: if i4 >= $i3 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert (>= var3321 var697)) ; Cond: i4 >= $i3 
(define-const var3653 var575 (out/-1499488963 var296)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var3653 34)) ; Statement: virtualinvoke $r4.<java.io.Writer: void write(int)>(34) 

(declare-const var3653!1 var575)
(declare-const var3682!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {htmlSafe/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], boolean), out/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.io.Writer), write/33947008=([java.io.Writer, int], void), length/-134980193=([java.lang.String], int)}
; {var2396=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var296=r0, var808=r3, var3840=null_type, var142=$z0, var344=$r8, var2514=r1, var575=java.io.Writer, var219=$r2, var3682=34, var3321=i4, var697=$i3, var3833=i5, var3653=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var2396, r0=var296, r3=var808, null_type=var3840, $z0=var142, $r8=var344, r1=var2514, java.io.Writer=var575, $r2=var219, 34=var3682, i4=var3321, $i3=var697, i5=var3833, $r4=var3653}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r3 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: boolean htmlSafe>;	if $z0 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	$r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] HTML_SAFE_REPLACEMENT_CHARS>;	goto [?= r1 = $r8];	r1 = $r8;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r2.<java.io.Writer: void write(int)>(34);	i4 = 0;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	i5 = 0;	if i5 >= $i3 goto (branch);	if i4 >= $i3 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r4.<java.io.Writer: void write(int)>(34);	return
;block_num 6