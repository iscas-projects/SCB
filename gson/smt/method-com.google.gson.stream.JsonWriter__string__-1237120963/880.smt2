(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var369 0)
(declare-sort var1172 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun htmlSafe/1632885518 (var369) Bool)
(declare-fun out/1632885518 (var369) var2005)
(declare-fun write/33947008 (var2005 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var369 var369)
(declare-const null-String String)
(declare-const var369-REPLACEMENT_CHARS (Array Int String))
(declare-const var3871 var369) ; Statement: r0 := @this: com.google.gson.stream.JsonWriter 
(assert (not (= var3871 null-var369)))
(declare-const var13 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var13 null-String)))
(define-const var1173 Bool (htmlSafe/1632885518 var3871)) ; Statement: $z0 = r0.<com.google.gson.stream.JsonWriter: boolean htmlSafe> 
 ; Statement: if $z0 == 0 goto $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert (= (ite var1173 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1608 (Array Int String) var369-REPLACEMENT_CHARS) ; Statement: $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS> 
(assert true) ; Non Conditional
(define-const var1565 (Array Int String) var1608) ; Statement: r1 = $r8 
(define-const var2922 var2005 (out/1632885518 var3871)) ; Statement: $r2 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var2922 34)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(int)>(34) 

(declare-const var2922!1 var2005)
(declare-const var2319 Int)
(define-const var1185 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2884 Int (length/-134980193 var13)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1282 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i3 goto (branch) 
(assert (>= var1282 var2884)) ; Cond: i5 >= $i3 
 ; Statement: if i4 >= $i3 goto $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert (>= var1185 var2884)) ; Cond: i4 >= $i3 
(define-const var3502 var2005 (out/1632885518 var3871)) ; Statement: $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out> 
(assert true)
;(assert (write/33947008 var3502 34)) ; Statement: virtualinvoke $r4.<java.io.Writer: void write(int)>(34) 

(declare-const var3502!1 var2005)
(declare-const var2319!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {htmlSafe/1632885518=([com.google.gson.stream.JsonWriter], boolean), out/1632885518=([com.google.gson.stream.JsonWriter], java.io.Writer), write/33947008=([java.io.Writer, int], void), length/-134980193=([java.lang.String], int)}
; {var369=com.google.gson.stream.JsonWriter, var3871=r0, var13=r3, var1172=null_type, var1173=$z0, var1608=$r8, var1565=r1, var2005=java.io.Writer, var2922=$r2, var2319=34, var1185=i4, var2884=$i3, var1282=i5, var3502=$r4}
; {com.google.gson.stream.JsonWriter=var369, r0=var3871, r3=var13, null_type=var1172, $z0=var1173, $r8=var1608, r1=var1565, java.io.Writer=var2005, $r2=var2922, 34=var2319, i4=var1185, $i3=var2884, i5=var1282, $r4=var3502}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonWriter;	r3 := @parameter0: java.lang.String;	$z0 = r0.<com.google.gson.stream.JsonWriter: boolean htmlSafe>;	if $z0 == 0 goto $r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	$r8 = <com.google.gson.stream.JsonWriter: java.lang.String[] REPLACEMENT_CHARS>;	r1 = $r8;	$r2 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r2.<java.io.Writer: void write(int)>(34);	i4 = 0;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	i5 = 0;	if i5 >= $i3 goto (branch);	if i4 >= $i3 goto $r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	$r4 = r0.<com.google.gson.stream.JsonWriter: java.io.Writer out>;	virtualinvoke $r4.<java.io.Writer: void write(int)>(34);	return
;block_num 6