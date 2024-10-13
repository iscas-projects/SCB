(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3737 0)
(declare-sort var1680 0)
(declare-sort var3417 0)
(declare-sort var3602 0)
(declare-sort var2851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const __Array__Int__Int__!class ClassObject)
(declare-fun <init>/-427705100 (var3602 ClassObject) void)
(declare-fun cast-from-var3737-to-var3602 (var3737) var3602)
(declare-fun format/-1168059553 (var3737) String)
(declare-fun mask/1918454044 (var2851) Int)
(declare-fun features/-1168059553 (var3737) Int)
(declare-fun builder/-1168059553 (var3737) var1680)
(declare-const null-var3737 var3737)
(declare-const null-var1680 var1680)
(declare-const null-String String)
(declare-const var2851-Base64StringAsByteArray var2851)
(declare-const var1419 var3737) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray 
(assert (not (= var1419 null-var3737)))
(declare-const var3655 var1680) ; Statement: r3 := @parameter0: java.util.function.Function 
(assert (not (= var3655 null-var1680)))
(declare-const var3291 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3291 null-String)))
(assert true)
;(assert (<init>/-427705100 (cast-from-var3737-to-var3602 var1419) __Array__Int__Int__!class)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(class "[B") 

(declare-const var1419!1 var3737)
(declare-const var2322 ClassObject)
(declare-const var1419!2 var3737)
(assert (not (= var1419!2 null-var3737)))
(assert (= (format/-1168059553 var1419!2) var3291)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.lang.String format> = r1 
(define-const var3094 String "base64") ; Statement: $r2 = "base64" 
(assert true)
(define-const var2642 Bool (= var3094 var3291)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $l0 = 0L 
(assert (not (= (ite var2642 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var899 var2851 var2851-Base64StringAsByteArray) ; Statement: $r4 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature Base64StringAsByteArray> 
(define-const var1594 Int (mask/1918454044 var899)) ; Statement: $l0 = $r4.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0] 
(assert true) ; Non Conditional
(declare-const var1419!3 var3737)
(assert (not (= var1419!3 null-var3737)))
(assert (= (features/-1168059553 var1419!3) var1594)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0 
(declare-const var1419!4 var3737)
(assert (not (= var1419!4 null-var3737)))
(assert (= (builder/-1168059553 var1419!4) var3655)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.util.function.Function builder> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-427705100=([com.alibaba.fastjson2.reader.ObjectReaderPrimitive, java.lang.Class], void), cast-from-var3737-to-var3602=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], com.alibaba.fastjson2.reader.ObjectReaderPrimitive), format/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], java.lang.String), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), features/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], long), builder/-1168059553=([com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray], java.util.function.Function)}
; {var3737=com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray, var1419=r0, var1680=java.util.function.Function, var3655=r3, var3291=r1, var3417=null_type, var3602=com.alibaba.fastjson2.reader.ObjectReaderPrimitive, var2322=class "[B", var3094=$r2, var2642=$z0, var2851=com.alibaba.fastjson2.JSONReader$Feature, var899=$r4, var1594=$l0}
; {com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray=var3737, r0=var1419, java.util.function.Function=var1680, r3=var3655, r1=var3291, null_type=var3417, com.alibaba.fastjson2.reader.ObjectReaderPrimitive=var3602, class "[B"=var2322, $r2=var3094, $z0=var2642, com.alibaba.fastjson2.JSONReader$Feature=var2851, $r4=var899, $l0=var1594}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray;	r3 := @parameter0: java.util.function.Function;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(class "[B");	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.lang.String format> = r1;	$r2 = "base64";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $l0 = 0L;	$r4 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature Base64StringAsByteArray>;	$l0 = $r4.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	goto [?= r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0];	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long features> = $l0;	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: java.util.function.Function builder> = r3;	return
;block_num 3