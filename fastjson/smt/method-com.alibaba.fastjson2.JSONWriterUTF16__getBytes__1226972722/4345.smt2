(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3253 0)
(declare-sort var2730 0)
(declare-sort var3395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun off/1442430106 (var3395) Int)
(declare-fun cast-from-var3253-to-var3395 (var3253) var3395)
(declare-fun String-init () String)
(declare-fun chars/1482366354 (var3253) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun getBytes/-163691139 (String var2730) (Array Int Int))
(declare-const null-var3253 var3253)
(declare-const null-var2730 var2730)
(declare-const var3877 var3253) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var3877 null-var3253)))
(declare-const var1478 var2730) ; Statement: r9 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1478 null-var2730)))
(define-const var3921 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var3989 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var211 Int (off/1442430106 (cast-from-var3253-to-var3395 var3877))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
 ; Statement: if i5 >= $i0 goto (branch) 
(assert (>= var3989 var211)) ; Cond: i5 >= $i0 
 ; Statement: if z0 == 0 goto $r11 = new java.lang.String 
(assert (= (ite var3921 1 0) 0)) ; Cond: z0 == 0 
(define-const var1128 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var1321 (Array Int Int) (chars/1482366354 var3877)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var3800 Int (off/1442430106 (cast-from-var3253-to-var3395 var3877))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(assert true)
;(assert (<init>/-253222812 var1128 var1321 0 var3800)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i1) 

(declare-const var1128!1 String)
(declare-const var1321!1 (Array Int Int))
(declare-const var498 Int)
(declare-const var3800!1 Int)
 ; Statement: if r9 != null goto $r3 = virtualinvoke $r11.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r9) 
(assert (not (= var1478 null-var2730))) ; Cond: r9 != null 
(assert true)
(define-const var1273 (Array Int Int) (getBytes/-163691139 var1128!1 var1478)) ; Statement: $r3 = virtualinvoke $r11.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r9) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var3253-to-var3395=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), String-init=([], java.lang.String), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var3253=com.alibaba.fastjson2.JSONWriterUTF16, var3877=r0, var2730=java.nio.charset.Charset, var1478=r9, var3921=z0, var3989=i5, var3395=com.alibaba.fastjson2.JSONWriter, var211=$i0, var1128=$r11, var1321=$r2, var3800=$i1, var498=0, var1273=$r3}
; {com.alibaba.fastjson2.JSONWriterUTF16=var3253, r0=var3877, java.nio.charset.Charset=var2730, r9=var1478, z0=var3921, i5=var3989, com.alibaba.fastjson2.JSONWriter=var3395, $i0=var211, $r11=var1128, $r2=var1321, $i1=var3800, 0=var498, $r3=var1273}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r9 := @parameter0: java.nio.charset.Charset;	z0 = 1;	i5 = 0;	$i0 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	if i5 >= $i0 goto (branch);	if z0 == 0 goto $r11 = new java.lang.String;	$r11 = new java.lang.String;	$r2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i1);	if r9 != null goto $r3 = virtualinvoke $r11.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r9);	$r3 = virtualinvoke $r11.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r9);	return $r3
;block_num 5