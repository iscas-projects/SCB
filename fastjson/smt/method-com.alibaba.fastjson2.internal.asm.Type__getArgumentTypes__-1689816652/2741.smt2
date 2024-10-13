(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var493 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var3486-TYPES_1 (Array Int var3486))
(declare-const var1177 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1177 null-String)))
(define-const var3788 Int (- 1)) ; Statement: b14 = -1 
(assert true)
(define-const var3010 Int (hashCode/-467973558 var1177)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1010649456: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -470836938: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -176321095: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case 39797: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 470778755: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     default: goto tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; }; } 
(assert (and (not (= var3010 1014040867)) (and (not (= var3010 835331803)) (and (not (= var3010 470778755)) (and (not (= var3010 39797)) (and (not (= var3010 (- 176321095))) (and (not (= var3010 (- 470836938))) (and (not (= var3010 (- 1010649456))) true)))))))) ; Intersect: Negate: Cond: $i0 == 1014040867   and Intersect: Negate: Cond: $i0 == 835331803   and Intersect: Negate: Cond: $i0 == 470778755   and Intersect: Negate: Cond: $i0 == 39797   and Intersect: Negate: Cond: $i0 == -176321095   and Intersect: Negate: Cond: $i0 == -470836938   and Intersect: Negate: Cond: $i0 == -1010649456   and Non Conditional       
 ; Statement: tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; } 
(assert (and (= var3788 4) (and (not (= var3788 3)) (and (not (= var3788 2)) (and (not (= var3788 1)) (and (not (= var3788 0)) true)))))) ; Intersect: Cond: b14 == 4  and Intersect: Negate: Cond: b14 == 3   and Intersect: Negate: Cond: b14 == 2   and Intersect: Negate: Cond: b14 == 1   and Intersect: Negate: Cond: b14 == 0   and Non Conditional     
(define-const var3363 (Array Int var3486) var3486-TYPES_1) ; Statement: $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1177=r0, var493=null_type, var3788=b14, var3010=$i0, var3486=com.alibaba.fastjson2.internal.asm.Type, var3363=$r3}
; {r0=var1177, null_type=var493, b14=var3788, $i0=var3010, com.alibaba.fastjson2.internal.asm.Type=var3486, $r3=var3363}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b14 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1010649456: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -470836938: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -176321095: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case 39797: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 470778755: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     default: goto tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; }; };	tableswitch(b14) {     case 0: goto $r6 = newarray (com.alibaba.fastjson2.internal.asm.Type)[0];     case 1: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 2: goto $r5 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_3>;     case 3: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_0>;     case 4: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;     case 5: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_2>;     case 6: goto $r1 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_4>;     default: goto i15 = 0; };	$r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type[] TYPES_1>;	return $r3
;block_num 3