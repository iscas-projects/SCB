(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3769 0)
(declare-sort var1723 0)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var1723) void)
(declare-fun var3769_accept/-1719009877 (var3769 String) void)
(declare-const null-var3769 var3769)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2077-UTF_8 var1723)
(declare-const var1185 var3769) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ValueConsumer 
(assert (not (= var1185 null-var3769)))
(declare-const var2739 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var2739 null-__Array__Int__Int__)))
(declare-const var251 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var251 null-Int)))
(declare-const var2022 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2022 null-Int)))
(define-const var3851 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var713 var1723 var2077-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var3851 var2739 var251 var2022 var713)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r2, i0, i1, $r3) 

(declare-const var3851!1 String)
(declare-const var2739!1 (Array Int Int))
(declare-const var251!1 Int)
(declare-const var2022!1 Int)
(declare-const var713!1 var1723)
;(assert (var3769_accept/-1719009877 var1185 var3851!1)) ; Statement: interfaceinvoke r0.<com.alibaba.fastjson2.reader.ValueConsumer: void accept(java.lang.String)>($r1) 

(declare-const var1185!1 var3769)
(declare-const var3851!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), var3769_accept/-1719009877=([com.alibaba.fastjson2.reader.ValueConsumer, java.lang.String], void)}
; {var3769=com.alibaba.fastjson2.reader.ValueConsumer, var1185=r0, var2739=r2, var251=i0, var2022=i1, var3851=$r1, var1723=java.nio.charset.Charset, var2077=java.nio.charset.StandardCharsets, var713=$r3}
; {com.alibaba.fastjson2.reader.ValueConsumer=var3769, r0=var1185, r2=var2739, i0=var251, i1=var2022, $r1=var3851, java.nio.charset.Charset=var1723, java.nio.charset.StandardCharsets=var2077, $r3=var713}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ValueConsumer;	r2 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r1 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r1.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r2, i0, i1, $r3);	interfaceinvoke r0.<com.alibaba.fastjson2.reader.ValueConsumer: void accept(java.lang.String)>($r1);	return
;block_num 1