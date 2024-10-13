(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var2529 0)
(declare-sort var932 0)
(declare-sort var678 0)
(declare-sort var2189 0)
(declare-sort var2665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun startArray/-1126310615 (var2529) Int)
(declare-fun readString/1282532359 (var2529) String)
(declare-fun readArray/-1485646993 (var2529 ClassObject) var678)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun getContext/1000943621 (var2529) var2189)
(declare-fun getFeatures/-537711977 (var2189) Int)
(declare-fun getMethod/907737841 (var3282 Int String String var678) var2665)
(declare-const null-var3282 var3282)
(declare-const null-var2529 var2529)
(declare-const null-ClassObject ClassObject)
(declare-const null-var932 var932)
(declare-const null-Int Int)
(declare-const var881 var3282) ; Statement: r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod 
(assert (not (= var881 null-var3282)))
(declare-const var2744 var2529) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2744 null-var2529)))
(declare-const var3433 ClassObject) ; Statement: r13 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3433 null-ClassObject)))
(declare-const var1074 var932) ; Statement: r14 := @parameter2: java.lang.Object 
(assert (not (= var1074 null-var932)))
(declare-const var3084 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3084 null-Int)))
(assert true)
(define-const var296 Int (startArray/-1126310615 var2744)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
 ; Statement: if i0 == 3 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (= var296 3)) ; Cond: i0 == 3 
(assert true)
(define-const var2542 String (readString/1282532359 var2744)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var1602 String (readString/1282532359 var2744)) ; Statement: r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var2845 var678 (readArray/-1485646993 var2744 (cast-from-ClassObject-to-ClassObject String!class))) ; Statement: r3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.List readArray(java.lang.reflect.Type)>(class "Ljava/lang/String;") 
(assert true)
(define-const var3984 var2189 (getContext/1000943621 var2744)) ; Statement: $r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>() 
(assert true)
(define-const var3161 Int (getFeatures/-537711977 var3984)) ; Statement: $l2 = virtualinvoke $r5.<com.alibaba.fastjson2.JSONReader$Context: long getFeatures()>() 
(define-const var2623 Int (bv2nat (bvor ((_ int2bv 64) var3161) ((_ int2bv 64) var3084)))) ; Statement: $l3 = $l2 | l1 
(assert true)
(define-const var2517 var2665 (getMethod/907737841 var881 var2623 var1602 var2542 var2845)) ; Statement: $r6 = specialinvoke r4.<com.alibaba.fastjson2.reader.ObjectReaderImplMethod: java.lang.reflect.Method getMethod(long,java.lang.String,java.lang.String,java.util.List)>($l3, r2, r1, r3) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), readArray/-1485646993=([com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type], java.util.List), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), getContext/1000943621=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), getFeatures/-537711977=([com.alibaba.fastjson2.JSONReader$Context], long), getMethod/907737841=([com.alibaba.fastjson2.reader.ObjectReaderImplMethod, long, java.lang.String, java.lang.String, java.util.List], java.lang.reflect.Method)}
; {var3282=com.alibaba.fastjson2.reader.ObjectReaderImplMethod, var881=r4, var2529=com.alibaba.fastjson2.JSONReader, var2744=r0, var3433=r13, var932=java.lang.Object, var1074=r14, var3084=l1, var296=i0, var2542=r1, var1602=r2, var678=java.util.List, var2845=r3, var2189=com.alibaba.fastjson2.JSONReader$Context, var3984=$r5, var3161=$l2, var2623=$l3, var2665=java.lang.reflect.Method, var2517=$r6}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMethod=var3282, r4=var881, com.alibaba.fastjson2.JSONReader=var2529, r0=var2744, r13=var3433, java.lang.Object=var932, r14=var1074, l1=var3084, i0=var296, r1=var2542, r2=var1602, java.util.List=var678, r3=var2845, com.alibaba.fastjson2.JSONReader$Context=var2189, $r5=var3984, $l2=var3161, $l3=var2623, java.lang.reflect.Method=var2665, $r6=var2517}
;seq 
;cnt {}
;stmts r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r13 := @parameter1: java.lang.reflect.Type;	r14 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	if i0 == 3 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	r3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.List readArray(java.lang.reflect.Type)>(class "Ljava/lang/String;");	$r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>();	$l2 = virtualinvoke $r5.<com.alibaba.fastjson2.JSONReader$Context: long getFeatures()>();	$l3 = $l2 | l1;	$r6 = specialinvoke r4.<com.alibaba.fastjson2.reader.ObjectReaderImplMethod: java.lang.reflect.Method getMethod(long,java.lang.String,java.lang.String,java.util.List)>($l3, r2, r1, r3);	return $r6
;block_num 2