(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var751 0)
(declare-sort var3235 0)
(declare-sort var902 0)
(declare-sort var2549 0)
(declare-sort var3829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startArray/-1126310615 (var3235) Int)
(declare-fun readString/1282532359 (var3235) String)
(declare-fun getContext/1000943621 (var3235) var2549)
(declare-fun getFeatures/-537711977 (var2549) Int)
(declare-fun getField/1020461724 (var751 Int String String) var3829)
(declare-const null-var751 var751)
(declare-const null-var3235 var3235)
(declare-const null-ClassObject ClassObject)
(declare-const null-var902 var902)
(declare-const null-Int Int)
(declare-const var2102 var751) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField 
(assert (not (= var2102 null-var751)))
(declare-const var3819 var3235) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3819 null-var3235)))
(declare-const var3160 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3160 null-ClassObject)))
(declare-const var3862 var902) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var3862 null-var902)))
(declare-const var1831 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1831 null-Int)))
(assert true)
(define-const var2139 Int (startArray/-1126310615 var3819)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
 ; Statement: if i0 == 2 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (= var2139 2)) ; Cond: i0 == 2 
(assert true)
(define-const var1461 String (readString/1282532359 var3819)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var460 String (readString/1282532359 var3819)) ; Statement: r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var2890 var2549 (getContext/1000943621 var3819)) ; Statement: $r4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>() 
(assert true)
(define-const var1634 Int (getFeatures/-537711977 var2890)) ; Statement: $l2 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONReader$Context: long getFeatures()>() 
(define-const var470 Int (bv2nat (bvor ((_ int2bv 64) var1634) ((_ int2bv 64) var1831)))) ; Statement: $l3 = $l2 | l1 
(assert true)
(define-const var2786 var3829 (getField/1020461724 var2102 var470 var460 var1461)) ; Statement: $r5 = specialinvoke r3.<com.alibaba.fastjson2.reader.ObjectReaderImplField: java.lang.reflect.Field getField(long,java.lang.String,java.lang.String)>($l3, r2, r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), getContext/1000943621=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), getFeatures/-537711977=([com.alibaba.fastjson2.JSONReader$Context], long), getField/1020461724=([com.alibaba.fastjson2.reader.ObjectReaderImplField, long, java.lang.String, java.lang.String], java.lang.reflect.Field)}
; {var751=com.alibaba.fastjson2.reader.ObjectReaderImplField, var2102=r3, var3235=com.alibaba.fastjson2.JSONReader, var3819=r0, var3160=r12, var902=java.lang.Object, var3862=r13, var1831=l1, var2139=i0, var1461=r1, var460=r2, var2549=com.alibaba.fastjson2.JSONReader$Context, var2890=$r4, var1634=$l2, var470=$l3, var3829=java.lang.reflect.Field, var2786=$r5}
; {com.alibaba.fastjson2.reader.ObjectReaderImplField=var751, r3=var2102, com.alibaba.fastjson2.JSONReader=var3235, r0=var3819, r12=var3160, java.lang.Object=var902, r13=var3862, l1=var1831, i0=var2139, r1=var1461, r2=var460, com.alibaba.fastjson2.JSONReader$Context=var2549, $r4=var2890, $l2=var1634, $l3=var470, java.lang.reflect.Field=var3829, $r5=var2786}
;seq 
;cnt {}
;stmts r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	if i0 == 2 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>();	$l2 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONReader$Context: long getFeatures()>();	$l3 = $l2 | l1;	$r5 = specialinvoke r3.<com.alibaba.fastjson2.reader.ObjectReaderImplField: java.lang.reflect.Field getField(long,java.lang.String,java.lang.String)>($l3, r2, r1);	return $r5
;block_num 2