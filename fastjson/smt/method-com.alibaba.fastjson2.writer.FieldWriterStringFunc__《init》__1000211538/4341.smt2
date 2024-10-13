(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var2955 0)
(declare-sort var3403 0)
(declare-sort var1254 0)
(declare-sort var444 0)
(declare-sort var2790 0)
(declare-sort var1179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/-830230060 (var2790 String Int Int String var1179 String ClassObject ClassObject var3403 var1254) void)
(declare-fun cast-from-var3437-to-var2790 (var3437) var2790)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun function/183600230 (var3437) var444)
(declare-fun symbol/183600230 (var3437) Bool)
(declare-fun trim/183600230 (var3437) Bool)
(declare-fun raw/183600230 (var3437) Bool)
(declare-const null-var3437 var3437)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3403 var3403)
(declare-const null-var1254 var1254)
(declare-const null-var444 var444)
(declare-const null-NullType var2955)
(declare-const null-var1179 var1179)
(declare-const var3913 var3437) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringFunc 
(assert (not (= var3913 null-var3437)))
(declare-const var2921 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2921 null-String)))
(declare-const var1930 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1930 null-Int)))
(declare-const var2989 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var2989 null-Int)))
(declare-const var974 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var974 null-String)))
(declare-const var3823 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var3823 null-String)))
(declare-const var2198 var3403) ; Statement: r4 := @parameter5: java.lang.reflect.Field 
(assert (not (= var2198 null-var3403)))
(declare-const var1398 var1254) ; Statement: r5 := @parameter6: java.lang.reflect.Method 
(assert (not (= var1398 null-var1254)))
(declare-const var3607 var444) ; Statement: r6 := @parameter7: java.util.function.Function 
(assert (not (= var3607 null-var444)))
(assert true)
;(assert (<init>/-830230060 (cast-from-var3437-to-var2790 var3913) var2921 var1930 var2989 var974 null-var1179 var3823 (cast-from-ClassObject-to-ClassObject String!class) String!class var2198 var1398)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.FieldWriter: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r1, i0, l1, r2, null, r3, class "Ljava/lang/String;", class "Ljava/lang/String;", r4, r5) 

(declare-const var3913!1 var3437)
(declare-const var2921!1 String)
(declare-const var1930!1 Int)
(declare-const var2989!1 Int)
(declare-const var974!1 String)
(declare-const var3689 var2955)
(declare-const var3823!1 String)
(declare-const var728 ClassObject)
(declare-const var728!1 ClassObject)
(declare-const var2198!1 var3403)
(declare-const var1398!1 var1254)
(declare-const var3913!2 var3437)
(assert (not (= var3913!2 null-var3437)))
(assert (= (function/183600230 var3913!2) var3607)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: java.util.function.Function function> = r6 
(define-const var2283 String "symbol") ; Statement: $r7 = "symbol" 
(assert true)
(define-const var1663 Bool (= var2283 var974!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(declare-const var3913!3 var3437)
(assert (not (= var3913!3 null-var3437)))
(assert (= (symbol/183600230 var3913!3) var1663)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean symbol> = $z0 
(define-const var2743 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1379 Bool (= var2743 var974!1)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(declare-const var3913!4 var3437)
(assert (not (= var3913!4 null-var3437)))
(assert (= (trim/183600230 var3913!4) var1379)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean trim> = $z1 
(define-const var3552 Int (bv2nat (bvand ((_ int2bv 64) var2989!1) ((_ int2bv 64) 1125899906842624)))) ; Statement: $l2 = l1 & 1125899906842624L 
(define-const var986 Int (ite (> var3552 0) 1 (ite (< var3552 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $z2 = 0 
(assert (not (= var986 0))) ; Negate: Cond: $b3 == 0  
(define-const var655 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2] 
(assert true) ; Non Conditional
(declare-const var3913!5 var3437)
(assert (not (= var3913!5 null-var3437)))
(assert (= (raw/183600230 var3913!5) var655)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-830230060=([com.alibaba.fastjson2.writer.FieldWriter, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), cast-from-var3437-to-var2790=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], com.alibaba.fastjson2.writer.FieldWriter), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), function/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], java.util.function.Function), symbol/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean), trim/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean), raw/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean)}
; {var3437=com.alibaba.fastjson2.writer.FieldWriterStringFunc, var3913=r0, var2921=r1, var2955=null_type, var1930=i0, var2989=l1, var974=r2, var3823=r3, var3403=java.lang.reflect.Field, var2198=r4, var1254=java.lang.reflect.Method, var1398=r5, var444=java.util.function.Function, var3607=r6, var2790=com.alibaba.fastjson2.writer.FieldWriter, var1179=java.util.Locale, var3689=null, var728=class "Ljava/lang/String;", var2283=$r7, var1663=$z0, var2743=$r8, var1379=$z1, var3552=$l2, var986=$b3, var655=$z2}
; {com.alibaba.fastjson2.writer.FieldWriterStringFunc=var3437, r0=var3913, r1=var2921, null_type=var2955, i0=var1930, l1=var2989, r2=var974, r3=var3823, java.lang.reflect.Field=var3403, r4=var2198, java.lang.reflect.Method=var1254, r5=var1398, java.util.function.Function=var444, r6=var3607, com.alibaba.fastjson2.writer.FieldWriter=var2790, java.util.Locale=var1179, null=var3689, class "Ljava/lang/String;"=var728, $r7=var2283, $z0=var1663, $r8=var2743, $z1=var1379, $l2=var3552, $b3=var986, $z2=var655}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringFunc;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	l1 := @parameter2: long;	r2 := @parameter3: java.lang.String;	r3 := @parameter4: java.lang.String;	r4 := @parameter5: java.lang.reflect.Field;	r5 := @parameter6: java.lang.reflect.Method;	r6 := @parameter7: java.util.function.Function;	specialinvoke r0.<com.alibaba.fastjson2.writer.FieldWriter: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r1, i0, l1, r2, null, r3, class "Ljava/lang/String;", class "Ljava/lang/String;", r4, r5);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: java.util.function.Function function> = r6;	$r7 = "symbol";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r2);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean symbol> = $z0;	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean trim> = $z1;	$l2 = l1 & 1125899906842624L;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2];	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2;	return
;block_num 3