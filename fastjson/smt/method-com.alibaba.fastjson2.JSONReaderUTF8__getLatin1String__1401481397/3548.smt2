(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort var1498 0)
(declare-sort var3192 0)
(declare-sort var3056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun bytes/956814203 (var1267) (Array Int Int))
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3192) void)
(declare-const null-var1267 var1267)
(declare-const null-Int Int)
(declare-const var1498-ANDROID_SDK_INT Int)
(declare-const var3056-ISO_8859_1 var3192)
(declare-const var716 var1267) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var716 null-var1267)))
(declare-const var526 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var526 null-Int)))
(declare-const var2840 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2840 null-Int)))
(define-const var219 Int var1498-ANDROID_SDK_INT) ; Statement: $i0 = <com.alibaba.fastjson2.util.JDKUtils: int ANDROID_SDK_INT> 
 ; Statement: if $i0 < 34 goto r16 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char[] charBuf> 
(assert (not (< var219 34))) ; Negate: Cond: $i0 < 34  
(define-const var2658 String String-init) ; Statement: $r17 = new java.lang.String 
(define-const var1145 (Array Int Int) (bytes/956814203 var716)) ; Statement: $r15 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var3739 var3192 var3056-ISO_8859_1) ; Statement: $r14 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-1019213948 var2658 var1145 var526 var2840 var3739)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r15, i2, i1, $r14) 

(declare-const var2658!1 String)
(declare-const var1145!1 (Array Int Int))
(declare-const var526!1 Int)
(declare-const var2840!1 Int)
(declare-const var3739!1 var3192)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var1267=com.alibaba.fastjson2.JSONReaderUTF8, var716=r0, var526=i2, var2840=i1, var1498=com.alibaba.fastjson2.util.JDKUtils, var219=$i0, var2658=$r17, var1145=$r15, var3192=java.nio.charset.Charset, var3056=java.nio.charset.StandardCharsets, var3739=$r14}
; {com.alibaba.fastjson2.JSONReaderUTF8=var1267, r0=var716, i2=var526, i1=var2840, com.alibaba.fastjson2.util.JDKUtils=var1498, $i0=var219, $r17=var2658, $r15=var1145, java.nio.charset.Charset=var3192, java.nio.charset.StandardCharsets=var3056, $r14=var3739}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	i2 := @parameter0: int;	i1 := @parameter1: int;	$i0 = <com.alibaba.fastjson2.util.JDKUtils: int ANDROID_SDK_INT>;	if $i0 < 34 goto r16 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char[] charBuf>;	$r17 = new java.lang.String;	$r15 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	$r14 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r15, i2, i1, $r14);	return $r17
;block_num 2