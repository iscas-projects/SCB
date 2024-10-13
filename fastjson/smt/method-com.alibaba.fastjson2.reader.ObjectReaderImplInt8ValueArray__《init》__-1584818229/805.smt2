(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3771 0)
(declare-sort var2237 0)
(declare-sort var1568 0)
(declare-sort var3125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const __Array__Int__Int__!class ClassObject)
(declare-fun <init>/-427705100 (var3125 ClassObject) void)
(declare-fun cast-from-var3771-to-var3125 (var3771) var3125)
(declare-fun format/-1168059553 (var3771) String)
(declare-fun features/-1168059553 (var3771) Int)
(declare-fun builder/-1168059553 (var3771) var2237)
(declare-const null-var3771 var3771)
(declare-const null-var2237 var2237)
(declare-const null-String String)
(declare-const var203 var3771) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray 
(assert (not (= var203 null-var3771)))
(declare-const var113 var2237) ; Statement: r3 := @parameter0: java.util.function.Function 
(assert (not (= var113 null-var2237)))
(declare-const var2836 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2836 null-String)))
(assert true)
;(assert (<init>/-427705100 (cast-from-var3771-to-var3125 var203) __Array__Int__Int__!class)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(class "[B") 

(declare-const var203!1 var3771)
(declare-const var3783 ClassObject)
(declare-const var203!2 var3771)
(assert (not (= var203!2 null-var3771)))
(assert (= (format/-1168059553 var203!2) var2836)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.lang.String format> = r1 
(define-const var3064 String "base64") ; Statement: $r2 = "base64" 
(assert true)
(define-const var1231 Bool (= var3064 var2836)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $l0 = 0L 
(assert (= (ite var1231 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1237 Int 0) ; Statement: $l0 = 0L 
(assert true) ; Non Conditional
(declare-const var203!3 var3771)
(assert (not (= var203!3 null-var3771)))
(assert (= (features/-1168059553 var203!3) var1237)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0 
(declare-const var203!4 var3771)
(assert (not (= var203!4 null-var3771)))
(assert (= (builder/-1168059553 var203!4) var113)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.util.function.Function builder> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-427705100=([com.alibaba.fastjson2.reader.ObjectReaderPrimitive, java.lang.Class], void), cast-from-var3771-to-var3125=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], com.alibaba.fastjson2.reader.ObjectReaderPrimitive), format/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], java.lang.String), features/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], long), builder/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], java.util.function.Function)}
; {var3771=com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray, var203=r0, var2237=java.util.function.Function, var113=r3, var2836=r1, var1568=null_type, var3125=com.alibaba.fastjson2.reader.ObjectReaderPrimitive, var3783=class "[B", var3064=$r2, var1231=$z0, var1237=$l0}
; {com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray=var3771, r0=var203, java.util.function.Function=var2237, r3=var113, r1=var2836, null_type=var1568, com.alibaba.fastjson2.reader.ObjectReaderPrimitive=var3125, class "[B"=var3783, $r2=var3064, $z0=var1231, $l0=var1237}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray;	r3 := @parameter0: java.util.function.Function;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(class "[B");	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.lang.String format> = r1;	$r2 = "base64";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $l0 = 0L;	$l0 = 0L;	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0;	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.util.function.Function builder> = r3;	return
;block_num 3