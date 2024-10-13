(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var1755 0)
(declare-sort var3837 0)
(declare-sort var2678 0)
(declare-sort var629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2678) String)
(declare-fun getModifiers/-1049741209 (var2678) Int)
(declare-fun var629_isPublic/-426263739 (Int) Bool)
(declare-fun features/1719669521 (var3837) Int)
(declare-const null-var486 var486)
(declare-const null-String String)
(declare-const null-var3837 var3837)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2678 var2678)
(declare-const var1763 var486) ; Statement: r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor 
(assert (not (= var1763 null-var486)))
(declare-const var21 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var21 null-String)))
(declare-const var3951 var3837) ; Statement: r7 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var3951 null-var3837)))
(declare-const var1124 ClassObject) ; Statement: r9 := @parameter2: java.lang.Class 
(assert (not (= var1124 null-ClassObject)))
(declare-const var1067 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1067 null-String)))
(declare-const var1038 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var1038 null-String)))
(declare-const var410 var2678) ; Statement: r0 := @parameter5: java.lang.reflect.Field 
(assert (not (= var410 null-var2678)))
(assert true)
(define-const var1178 String (getName/1618348824 var410)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var1084 Bool (= var1178 var21)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (not (= (ite var1084 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1997 Int (getModifiers/-1049741209 var410)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var3083 Bool (var629_isPublic/-426263739 var1997)) ; Statement: $z7 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>(i0) 
 ; Statement: if $z7 != 0 goto $l1 = r7.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(assert (not (= (ite var3083 1 0) 0))) ; Cond: $z7 != 0 
(define-const var2721 Int (features/1719669521 var3951)) ; Statement: $l1 = r7.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var117 Int (bv2nat (bvor ((_ int2bv 64) var2721) ((_ int2bv 64) 4503599627370496)))) ; Statement: $l2 = $l1 | 4503599627370496L 
(declare-const var3951!1 var3837)
(assert (not (= var3951!1 null-var3837)))
(assert (= (features/1719669521 var3951!1) var117)) ; Statement: r7.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), getModifiers/-1049741209=([java.lang.reflect.Field], int), var629_isPublic/-426263739=([int], boolean), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long)}
; {var486=com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor, var1763=r8, var21=r1, var1755=null_type, var3837=com.alibaba.fastjson2.codec.FieldInfo, var3951=r7, var1124=r9, var1067=r3, var1038=r5, var2678=java.lang.reflect.Field, var410=r0, var1178=$r2, var1084=$z0, var1997=i0, var629=java.lang.reflect.Modifier, var3083=$z7, var2721=$l1, var117=$l2}
; {com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor=var486, r8=var1763, r1=var21, null_type=var1755, com.alibaba.fastjson2.codec.FieldInfo=var3837, r7=var3951, r9=var1124, r3=var1067, r5=var1038, java.lang.reflect.Field=var2678, r0=var410, $r2=var1178, $z0=var1084, i0=var1997, java.lang.reflect.Modifier=var629, $z7=var3083, $l1=var2721, $l2=var117}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo;	r9 := @parameter2: java.lang.Class;	r3 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String;	r0 := @parameter5: java.lang.reflect.Field;	$r2 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z7 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>(i0);	if $z7 != 0 goto $l1 = r7.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l1 = r7.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | 4503599627370496L;	r7.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	goto [?= return];	return
;block_num 4