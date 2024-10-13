(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/-488737871 (var1084) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-fun ordinal/-488737871 (var1084) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1084 var1084)
(declare-const var1836 var1084) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReader 
(assert (not (= var1836 null-var1084)))
(declare-const var3804 var1084) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.reader.FieldReader 
(assert (not (= var3804 null-var1084)))
(define-const var213 String (fieldName/-488737871 var1836)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String fieldName> 
(define-const var2969 String (fieldName/-488737871 var3804)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String fieldName> 
(assert true)
(define-const var30 Int (compareTo/1411385946 var213 var2969)) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var213 var2969)) (this<=other (str.<= var213 var2969)) (compareRes (compareTo/1411385946 var213 var2969))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: boolean isReadOnly()>() 
(assert (not (= var30 0))) ; Negate: Cond: i0 == 0  
(define-const var1575 Int (ordinal/-488737871 var1836)) ; Statement: $i4 = r0.<com.alibaba.fastjson2.reader.FieldReader: int ordinal> 
(define-const var2046 Int (ordinal/-488737871 var3804)) ; Statement: $i3 = r1.<com.alibaba.fastjson2.reader.FieldReader: int ordinal> 
 ; Statement: if $i4 >= $i3 goto $i6 = r0.<com.alibaba.fastjson2.reader.FieldReader: int ordinal> 
(assert (not (>= var1575 var2046))) ; Negate: Cond: $i4 >= $i3  
(define-const var1340 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: return $i16 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int), ordinal/-488737871=([com.alibaba.fastjson2.reader.FieldReader], int), cast-from-Int-to-Int=([int], int)}
; {var1084=com.alibaba.fastjson2.reader.FieldReader, var1836=r0, var3804=r1, var213=$r3, var2969=$r2, var30=i0, var1575=$i4, var2046=$i3, var1340=$i16}
; {com.alibaba.fastjson2.reader.FieldReader=var1084, r0=var1836, r1=var3804, $r3=var213, $r2=var2969, i0=var30, $i4=var1575, $i3=var2046, $i16=var1340}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReader;	r1 := @parameter0: com.alibaba.fastjson2.reader.FieldReader;	$r3 = r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String fieldName>;	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String fieldName>;	i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	if i0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: boolean isReadOnly()>();	$i4 = r0.<com.alibaba.fastjson2.reader.FieldReader: int ordinal>;	$i3 = r1.<com.alibaba.fastjson2.reader.FieldReader: int ordinal>;	if $i4 >= $i3 goto $i6 = r0.<com.alibaba.fastjson2.reader.FieldReader: int ordinal>;	$i16 = (int) -1;	return $i16
;block_num 3