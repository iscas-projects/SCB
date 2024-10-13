(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1548 0)
(declare-sort var1184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1548 var1548)
(declare-const null-String String)
(declare-const var3 var1548) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var3 null-var1548)))
(declare-const var1082 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1082 null-String)))
(define-const var2180 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var422 Int (hashCode/-467973558 var1082)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -129768706: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/List");     case 196938807: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/ArrayList");     case 2080463411: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/lang/Object");     default: goto tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); }; } 
(assert (and (not (= var422 2080463411)) (and (not (= var422 196938807)) (and (not (= var422 (- 129768706))) true)))) ; Intersect: Negate: Cond: $i0 == 2080463411   and Intersect: Negate: Cond: $i0 == 196938807   and Intersect: Negate: Cond: $i0 == -129768706   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); } 
(assert (and (= var2180 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
 ; Statement: return class "Ljava/util/List;" 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1548=com.alibaba.fastjson2.internal.asm.ClassWriter, var3=r1, var1082=r0, var1184=null_type, var2180=b1, var422=$i0}
; {com.alibaba.fastjson2.internal.asm.ClassWriter=var1548, r1=var3, r0=var1082, null_type=var1184, b1=var2180, $i0=var422}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -129768706: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/List");     case 196938807: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/ArrayList");     case 2080463411: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/lang/Object");     default: goto tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); }; };	tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); };	return class "Ljava/util/List;"
;block_num 3