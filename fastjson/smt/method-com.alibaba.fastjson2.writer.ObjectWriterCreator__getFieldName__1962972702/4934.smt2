(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2728 0)
(declare-sort var231 0)
(declare-sort var793 0)
(declare-sort var1101 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/1719669521 (var793) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-ClassObject ClassObject)
(declare-const null-var2728 var2728)
(declare-const null-var231 var231)
(declare-const null-Bool Bool)
(declare-const null-var793 var793)
(declare-const null-var1101 var1101)
(declare-const null-String String)
(declare-const var3195 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3195 null-ClassObject)))
(declare-const var3023 var2728) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3023 null-var2728)))
(declare-const var2482 var231) ; Statement: r3 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2482 null-var231)))
(declare-const var3727 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3727 null-Bool)))
(declare-const var1912 var793) ; Statement: r0 := @parameter4: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var1912 null-var793)))
(declare-const var3752 var1101) ; Statement: r2 := @parameter5: java.lang.reflect.Method 
(assert (not (= var3752 null-var1101)))
(define-const var180 String (fieldName/1719669521 var1912)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName> 
 ; Statement: if $r1 == null goto (branch) 
(assert (not (= var180 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3079 String (fieldName/1719669521 var1912)) ; Statement: $r11 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName> 
(assert true)
(define-const var3078 Bool (isEmpty/-1285796103 var3079)) ; Statement: $z3 = virtualinvoke $r11.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto r12 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName> 
(assert (= (ite var3078 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2072 String (fieldName/1719669521 var1912)) ; Statement: r12 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName> 
(assert true) ; Non Conditional
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3195=r7, var2728=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3023=r5, var231=com.alibaba.fastjson2.codec.BeanInfo, var2482=r3, var3727=z0, var793=com.alibaba.fastjson2.codec.FieldInfo, var1912=r0, var1101=java.lang.reflect.Method, var3752=r2, var180=$r1, var3552=null_type, var3079=$r11, var3078=$z3, var2072=r12}
; {r7=var3195, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2728, r5=var3023, com.alibaba.fastjson2.codec.BeanInfo=var231, r3=var2482, z0=var3727, com.alibaba.fastjson2.codec.FieldInfo=var793, r0=var1912, java.lang.reflect.Method=var1101, r2=var3752, $r1=var180, null_type=var3552, $r11=var3079, $z3=var3078, r12=var2072}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @parameter0: java.lang.Class;	r5 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r3 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	z0 := @parameter3: boolean;	r0 := @parameter4: com.alibaba.fastjson2.codec.FieldInfo;	r2 := @parameter5: java.lang.reflect.Method;	$r1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName>;	if $r1 == null goto (branch);	$r11 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName>;	$z3 = virtualinvoke $r11.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto r12 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName>;	r12 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName>;	return r12
;block_num 4