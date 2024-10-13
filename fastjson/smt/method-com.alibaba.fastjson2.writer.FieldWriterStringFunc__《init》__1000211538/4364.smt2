(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1598 0)
(declare-sort var3089 0)
(declare-sort var1222 0)
(declare-sort var2822 0)
(declare-sort var1695 0)
(declare-sort var2098 0)
(declare-sort var3777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun <init>/-830230060 (var2098 String Int Int String var3777 String ClassObject ClassObject var1222 var2822) void)
(declare-fun cast-from-var1598-to-var2098 (var1598) var2098)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun function/183600230 (var1598) var1695)
(declare-fun symbol/183600230 (var1598) Bool)
(declare-fun trim/183600230 (var1598) Bool)
(declare-fun raw/183600230 (var1598) Bool)
(declare-const null-var1598 var1598)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1222 var1222)
(declare-const null-var2822 var2822)
(declare-const null-var1695 var1695)
(declare-const null-NullType var3089)
(declare-const null-var3777 var3777)
(declare-const var3492 var1598) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringFunc 
(assert (not (= var3492 null-var1598)))
(declare-const var3245 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3245 null-String)))
(declare-const var2401 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2401 null-Int)))
(declare-const var1011 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var1011 null-Int)))
(declare-const var1178 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var1178 null-String)))
(declare-const var3275 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var3275 null-String)))
(declare-const var2073 var1222) ; Statement: r4 := @parameter5: java.lang.reflect.Field 
(assert (not (= var2073 null-var1222)))
(declare-const var2830 var2822) ; Statement: r5 := @parameter6: java.lang.reflect.Method 
(assert (not (= var2830 null-var2822)))
(declare-const var2962 var1695) ; Statement: r6 := @parameter7: java.util.function.Function 
(assert (not (= var2962 null-var1695)))
(assert true)
;(assert (<init>/-830230060 (cast-from-var1598-to-var2098 var3492) var3245 var2401 var1011 var1178 null-var3777 var3275 (cast-from-ClassObject-to-ClassObject String!class) String!class var2073 var2830)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.FieldWriter: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r1, i0, l1, r2, null, r3, class "Ljava/lang/String;", class "Ljava/lang/String;", r4, r5) 

(declare-const var3492!1 var1598)
(declare-const var3245!1 String)
(declare-const var2401!1 Int)
(declare-const var1011!1 Int)
(declare-const var1178!1 String)
(declare-const var1207 var3089)
(declare-const var3275!1 String)
(declare-const var3119 ClassObject)
(declare-const var3119!1 ClassObject)
(declare-const var2073!1 var1222)
(declare-const var2830!1 var2822)
(declare-const var3492!2 var1598)
(assert (not (= var3492!2 null-var1598)))
(assert (= (function/183600230 var3492!2) var2962)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: java.util.function.Function function> = r6 
(define-const var1301 String "symbol") ; Statement: $r7 = "symbol" 
(assert true)
(define-const var802 Bool (= var1301 var1178!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(declare-const var3492!3 var1598)
(assert (not (= var3492!3 null-var1598)))
(assert (= (symbol/183600230 var3492!3) var802)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean symbol> = $z0 
(define-const var2082 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var3085 Bool (= var2082 var1178!1)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(declare-const var3492!4 var1598)
(assert (not (= var3492!4 null-var1598)))
(assert (= (trim/183600230 var3492!4) var3085)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean trim> = $z1 
(define-const var3629 Int (bv2nat (bvand ((_ int2bv 64) var1011!1) ((_ int2bv 64) 1125899906842624)))) ; Statement: $l2 = l1 & 1125899906842624L 
(define-const var1311 Int (ite (> var3629 0) 1 (ite (< var3629 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $z2 = 0 
(assert (= var1311 0)) ; Cond: $b3 == 0 
(define-const var3088 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var3492!5 var1598)
(assert (not (= var3492!5 null-var1598)))
(assert (= (raw/183600230 var3492!5) var3088)) ; Statement: r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-830230060=([com.alibaba.fastjson2.writer.FieldWriter, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), cast-from-var1598-to-var2098=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], com.alibaba.fastjson2.writer.FieldWriter), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), function/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], java.util.function.Function), symbol/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean), trim/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean), raw/183600230=([com.alibaba.fastjson2.writer.FieldWriterStringFunc], boolean)}
; {var1598=com.alibaba.fastjson2.writer.FieldWriterStringFunc, var3492=r0, var3245=r1, var3089=null_type, var2401=i0, var1011=l1, var1178=r2, var3275=r3, var1222=java.lang.reflect.Field, var2073=r4, var2822=java.lang.reflect.Method, var2830=r5, var1695=java.util.function.Function, var2962=r6, var2098=com.alibaba.fastjson2.writer.FieldWriter, var3777=java.util.Locale, var1207=null, var3119=class "Ljava/lang/String;", var1301=$r7, var802=$z0, var2082=$r8, var3085=$z1, var3629=$l2, var1311=$b3, var3088=$z2}
; {com.alibaba.fastjson2.writer.FieldWriterStringFunc=var1598, r0=var3492, r1=var3245, null_type=var3089, i0=var2401, l1=var1011, r2=var1178, r3=var3275, java.lang.reflect.Field=var1222, r4=var2073, java.lang.reflect.Method=var2822, r5=var2830, java.util.function.Function=var1695, r6=var2962, com.alibaba.fastjson2.writer.FieldWriter=var2098, java.util.Locale=var3777, null=var1207, class "Ljava/lang/String;"=var3119, $r7=var1301, $z0=var802, $r8=var2082, $z1=var3085, $l2=var3629, $b3=var1311, $z2=var3088}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringFunc;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	l1 := @parameter2: long;	r2 := @parameter3: java.lang.String;	r3 := @parameter4: java.lang.String;	r4 := @parameter5: java.lang.reflect.Field;	r5 := @parameter6: java.lang.reflect.Method;	r6 := @parameter7: java.util.function.Function;	specialinvoke r0.<com.alibaba.fastjson2.writer.FieldWriter: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r1, i0, l1, r2, null, r3, class "Ljava/lang/String;", class "Ljava/lang/String;", r4, r5);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: java.util.function.Function function> = r6;	$r7 = "symbol";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r2);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean symbol> = $z0;	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2);	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean trim> = $z1;	$l2 = l1 & 1125899906842624L;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $z2 = 0;	$z2 = 0;	r0.<com.alibaba.fastjson2.writer.FieldWriterStringFunc: boolean raw> = $z2;	return
;block_num 3