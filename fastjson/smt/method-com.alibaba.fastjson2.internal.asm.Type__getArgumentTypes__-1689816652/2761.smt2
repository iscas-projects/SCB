(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var599-TYPES_4 (Array Int var599))
(declare-const var1223 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1223 null-String)))
(define-const var1468 Int (- 1)) ; Statement: b14 = -1 
(assert true)
(define-const var3634 Int (hashCode/-467973558 var1223)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1010649456: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -470836938: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -176321095: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case 39797: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 470778755: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     default: goto tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; }; } 
(assert (and (not (= var3634 1014040867)) (and (not (= var3634 835331803)) (and (not (= var3634 470778755)) (and (not (= var3634 39797)) (and (not (= var3634 (- 176321095))) (and (not (= var3634 (- 470836938))) (and (not (= var3634 (- 1010649456))) true)))))))) ; Intersect: Negate: Cond: $i0 == 1014040867   and Intersect: Negate: Cond: $i0 == 835331803   and Intersect: Negate: Cond: $i0 == 470778755   and Intersect: Negate: Cond: $i0 == 39797   and Intersect: Negate: Cond: $i0 == -176321095   and Intersect: Negate: Cond: $i0 == -470836938   and Intersect: Negate: Cond: $i0 == -1010649456   and Non Conditional       
 ; Statement: tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; } 
(assert (and (= var1468 6) (and (not (= var1468 5)) (and (not (= var1468 4)) (and (not (= var1468 3)) (and (not (= var1468 2)) (and (not (= var1468 1)) (and (not (= var1468 0)) true)))))))) ; Intersect: Cond: b14 == 6  and Intersect: Negate: Cond: b14 == 5   and Intersect: Negate: Cond: b14 == 4   and Intersect: Negate: Cond: b14 == 3   and Intersect: Negate: Cond: b14 == 2   and Intersect: Negate: Cond: b14 == 1   and Intersect: Negate: Cond: b14 == 0   and Non Conditional       
(define-const var2869 (Array Int var599) var599-TYPES_4) ; Statement: $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1223=r0, var574=null_type, var1468=b14, var3634=$i0, var599=com.alibaba.fastjson2.internal.asm.Type, var2869=$r1}
; {r0=var1223, null_type=var574, b14=var1468, $i0=var3634, com.alibaba.fastjson2.internal.asm.Type=var599, $r1=var2869}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b14 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1010649456: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -470836938: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -176321095: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case 39797: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 470778755: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     default: goto tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; }; };	tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; };	$r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;	return $r1
;block_num 3