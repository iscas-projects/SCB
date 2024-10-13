(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var346 0)
(declare-sort var3430 0)
(declare-sort var72 0)
(declare-sort var3332 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/1719669521 (var72) String)
(declare-fun getName/1227988463 (var3332) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var346 var346)
(declare-const null-var3430 var3430)
(declare-const null-Bool Bool)
(declare-const null-var72 var72)
(declare-const null-var3332 var3332)
(declare-const null-String String)
(declare-const var2649 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2649 null-ClassObject)))
(declare-const var2686 var346) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2686 null-var346)))
(declare-const var3205 var3430) ; Statement: r3 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3205 null-var3430)))
(declare-const var618 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var618 null-Bool)))
(declare-const var895 var72) ; Statement: r0 := @parameter4: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var895 null-var72)))
(declare-const var1159 var3332) ; Statement: r2 := @parameter5: java.lang.reflect.Method 
(assert (not (= var1159 null-var3332)))
(define-const var374 String (fieldName/1719669521 var895)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var374 null-String)) ; Cond: $r1 == null 
 ; Statement: if z0 == 0 goto $z1 = r3.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin> 
(assert (not (= (ite var618 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2339 String (getName/1227988463 var1159)) ; Statement: r12 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
 ; Statement: goto [?= return r12] 
(assert true) ; Non Conditional
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var2649=r7, var346=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2686=r5, var3430=com.alibaba.fastjson2.codec.BeanInfo, var3205=r3, var618=z0, var72=com.alibaba.fastjson2.codec.FieldInfo, var895=r0, var3332=java.lang.reflect.Method, var1159=r2, var374=$r1, var2521=null_type, var2339=r12}
; {r7=var2649, com.alibaba.fastjson2.writer.ObjectWriterProvider=var346, r5=var2686, com.alibaba.fastjson2.codec.BeanInfo=var3430, r3=var3205, z0=var618, com.alibaba.fastjson2.codec.FieldInfo=var72, r0=var895, java.lang.reflect.Method=var3332, r2=var1159, $r1=var374, null_type=var2521, r12=var2339}
;seq 
;cnt {}
;stmts r7 := @parameter0: java.lang.Class;	r5 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r3 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	z0 := @parameter3: boolean;	r0 := @parameter4: com.alibaba.fastjson2.codec.FieldInfo;	r2 := @parameter5: java.lang.reflect.Method;	$r1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String fieldName>;	if $r1 == null goto (branch);	if z0 == 0 goto $z1 = r3.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin>;	r12 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	goto [?= return r12];	return r12
;block_num 4