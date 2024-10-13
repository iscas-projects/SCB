(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1859 0)
(declare-sort var1111 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1859) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var132_getterName/550540436 (String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1859 var1859)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2233 var1859) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2233 null-var1859)))
(declare-const var1272 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1272 null-Bool)))
(declare-const var3908 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3908 null-String)))
(assert true)
(define-const var1658 String (getName/1227988463 var2233)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var304 Bool (startsWith/-1785782452 var1658 "is")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
 ; Statement: if $z0 == 0 goto $r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String getterName(java.lang.String,java.lang.String)>(r1, r2) 
(assert (= (ite var304 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3014 String (var132_getterName/550540436 var1658 var3908)) ; Statement: $r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String getterName(java.lang.String,java.lang.String)>(r1, r2) 
(define-const var698 String var3014) ; Statement: r10 = $r7 
(assert true)
(define-const var533 Int (length/-134980193 var3014)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto return r10 
(assert (<= var533 2)) ; Cond: $i0 <= 2 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var132_getterName/550540436=([java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1859=java.lang.reflect.Method, var2233=r0, var1272=z2, var3908=r2, var1111=null_type, var1658=r1, var304=$z0, var132=com.alibaba.fastjson2.util.BeanUtils, var3014=$r7, var698=r10, var533=$i0}
; {java.lang.reflect.Method=var1859, r0=var2233, z2=var1272, r2=var3908, null_type=var1111, r1=var1658, $z0=var304, com.alibaba.fastjson2.util.BeanUtils=var132, $r7=var3014, r10=var698, $i0=var533}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	z2 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("is");	if $z0 == 0 goto $r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String getterName(java.lang.String,java.lang.String)>(r1, r2);	$r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String getterName(java.lang.String,java.lang.String)>(r1, r2);	r10 = $r7;	$i0 = virtualinvoke $r7.<java.lang.String: int length()>();	if $i0 <= 2 goto return r10;	return r10
;block_num 3