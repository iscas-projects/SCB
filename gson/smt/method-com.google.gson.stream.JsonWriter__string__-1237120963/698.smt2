(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1870 0)
(declare-sort var2918 0)
(declare-sort var769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun htmlSafe/1632885518 (var1870) Bool)
(declare-fun out/1632885518 (var1870) var769)
(declare-fun write/33947008 (var769 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1870 var1870)
(declare-const null-String String)
(declare-const var1870-HTML_SAFE_REPLACEMENT_CHARS (Array Int String))
(declare-const var1393 var1870) ; Statement: r0 := @this: com.google.gson.stream.JsonWriter 
(assert (not (= var1393 null-var1870)))
(declare-const var2416 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2416 null-String)))
(define-const var761 Bool (htmlSafe/1632885518 var1393)) ; Statement: $z0 = r0.<com.google.gson.stream.JsonWriter: boolean htmlSafe> 
 ; Statement: if $z0 == 0 goto $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert (not (= (ite var761 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2138 (Array Int String) var1870-HTML_SAFE_REPLACEMENT_CHARS) ; Statement: $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] HTML_SAFE_REPLACEMENT_CHARS> 
 ; Statement: goto [?= r1 = $r8] 
(assert true) ; Non Conditional
(define-const var3648 (Array Int String) var2138) ; Statement: r1 = $r8 
(define-const var1254 var769 (out/1632885518 var1393)) ; Statement: $r2 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var1254 34)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(int)>(34) 

(declare-const var1254!1 var769)
(declare-const var2378 Int)
(define-const var753 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2913 Int (length/-134980193 var2416)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var129 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i3 goto (branch) 
(assert (>= var129 var2913)) ; Cond: i5 >= $i3 
 ; Statement: if i4 >= $i3 goto $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert (>= var753 var2913)) ; Cond: i4 >= $i3 
(define-const var3558 var769 (out/1632885518 var1393)) ; Statement: $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var3558 34)) ; Statement: virtualinvoke $r4.<java.io.Writer: void write(int)>(34) 

(declare-const var3558!1 var769)
(declare-const var2378!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {htmlSafe/1632885518=([com.google.gson.stream.JsonWriter], boolean), out/1632885518=([com.google.gson.stream.JsonWriter], java.io.Writer), write/33947008=([java.io.Writer, int], void), length/-134980193=([java.lang.String], int)}
; {var1870=com.google.gson.stream.JsonWriter, var1393=r0, var2416=r3, var2918=null_type, var761=$z0, var2138=$r8, var3648=r1, var769=java.io.Writer, var1254=$r2, var2378=34, var753=i4, var2913=$i3, var129=i5, var3558=$r4}
; {com.google.gson.stream.JsonWriter=var1870, r0=var1393, r3=var2416, null_type=var2918, $z0=var761, $r8=var2138, r1=var3648, java.io.Writer=var769, $r2=var1254, 34=var2378, i4=var753, $i3=var2913, i5=var129, $r4=var3558}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonWriter;	r3 := @parameter0: java.lang.String;	$z0 = r0.<com.google.gson.stream.JsonWriter: boolean htmlSafe>;	if $z0 == 0 goto $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	$r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] HTML_SAFE_REPLACEMENT_CHARS>;	goto [?= r1 = $r8];	r1 = $r8;	$r2 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r2.<java.io.Writer: void write(int)>(34);	i4 = 0;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	i5 = 0;	if i5 >= $i3 goto (branch);	if i4 >= $i3 goto $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	$r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r4.<java.io.Writer: void write(int)>(34);	return
;block_num 6