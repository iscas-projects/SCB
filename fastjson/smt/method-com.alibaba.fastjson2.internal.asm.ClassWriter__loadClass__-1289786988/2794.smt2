(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort var3709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3715 var3715)
(declare-const null-String String)
(declare-const var2177 var3715) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var2177 null-var3715)))
(declare-const var2941 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2941 null-String)))
(define-const var2851 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var772 Int (hashCode/-467973558 var2941)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -129768706: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/List");     case 196938807: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/ArrayList");     case 2080463411: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/lang/Object");     default: goto tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); }; } 
(assert (and (not (= var772 2080463411)) (and (not (= var772 196938807)) (and (not (= var772 (- 129768706))) true)))) ; Intersect: Negate: Cond: $i0 == 2080463411   and Intersect: Negate: Cond: $i0 == 196938807   and Intersect: Negate: Cond: $i0 == -129768706   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); } 
(assert (and (= var2851 1) (and (not (= var2851 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
 ; Statement: return class "Ljava/util/ArrayList;" 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var3715=com.alibaba.fastjson2.internal.asm.ClassWriter, var2177=r1, var2941=r0, var3709=null_type, var2851=b1, var772=$i0}
; {com.alibaba.fastjson2.internal.asm.ClassWriter=var3715, r1=var2177, r0=var2941, null_type=var3709, b1=var2851, $i0=var772}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -129768706: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/List");     case 196938807: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/util/ArrayList");     case 2080463411: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java/lang/Object");     default: goto tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); }; };	tableswitch(b1) {     case 0: goto return class "Ljava/util/List;";     case 1: goto return class "Ljava/util/ArrayList;";     case 2: goto return class "Ljava/lang/Object;";     default: goto r5 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46); };	return class "Ljava/util/ArrayList;"
;block_num 3