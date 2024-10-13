(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort var2242 0)
(declare-sort var3613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun htmlSafe/-1499488963 (var3104) Bool)
(declare-fun out/-1499488963 (var3104) var3613)
(declare-fun write/33947008 (var3613 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3104 var3104)
(declare-const null-String String)
(declare-const var3104-REPLACEMENT_CHARS (Array Int String))
(declare-const var3956 var3104) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var3956 null-var3104)))
(declare-const var2184 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2184 null-String)))
(define-const var793 Bool (htmlSafe/-1499488963 var3956)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: boolean htmlSafe> 
 ; Statement: if $z0 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert (= (ite var793 1 0) 0)) ; Cond: $z0 == 0 
(define-const var435 (Array Int String) var3104-REPLACEMENT_CHARS) ; Statement: $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert true) ; Non Conditional
(define-const var3385 (Array Int String) var435) ; Statement: r1 = $r8 
(define-const var1284 var3613 (out/-1499488963 var3956)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var1284 34)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(int)>(34) 

(declare-const var1284!1 var3613)
(declare-const var1797 Int)
(define-const var1477 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var1732 Int (length/-134980193 var2184)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1087 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i3 goto (branch) 
(assert (>= var1087 var1732)) ; Cond: i5 >= $i3 
 ; Statement: if i4 >= $i3 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert (>= var1477 var1732)) ; Cond: i4 >= $i3 
(define-const var2392 var3613 (out/-1499488963 var3956)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var2392 34)) ; Statement: virtualinvoke $r4.<java.io.Writer: void write(int)>(34) 

(declare-const var2392!1 var3613)
(declare-const var1797!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {htmlSafe/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], boolean), out/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.io.Writer), write/33947008=([java.io.Writer, int], void), length/-134980193=([java.lang.String], int)}
; {var3104=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var3956=r0, var2184=r3, var2242=null_type, var793=$z0, var435=$r8, var3385=r1, var3613=java.io.Writer, var1284=$r2, var1797=34, var1477=i4, var1732=$i3, var1087=i5, var2392=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var3104, r0=var3956, r3=var2184, null_type=var2242, $z0=var793, $r8=var435, r1=var3385, java.io.Writer=var3613, $r2=var1284, 34=var1797, i4=var1477, $i3=var1732, i5=var1087, $r4=var2392}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r3 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: boolean htmlSafe>;	if $z0 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	$r8 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	r1 = $r8;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r2.<java.io.Writer: void write(int)>(34);	i4 = 0;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	i5 = 0;	if i5 >= $i3 goto (branch);	if i4 >= $i3 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r4.<java.io.Writer: void write(int)>(34);	return
;block_num 6