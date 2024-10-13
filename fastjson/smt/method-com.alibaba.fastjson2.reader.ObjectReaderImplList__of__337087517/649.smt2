(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort var3826 0)
(declare-sort var2752 0)
(declare-sort var3984 0)
(declare-sort var140 0)
(declare-sort var1925 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2233!class ClassObject)
(declare-const var2752!class ClassObject)
(declare-const var3984!class ClassObject)
(declare-fun cast-from-ClassObject-to-var2233 (ClassObject) var2233)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun ClassObject_getTypeName/420978524 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var140-init () var140)
(declare-fun var2820_emptyList/582664469 () var1925)
(declare-fun <init>/369918448 (var140 ClassObject var2233) void)
(declare-fun cast-from-var1925-to-var2233 (var1925) var2233)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var3826 var3826)
(declare-const var328 ClassObject) ; Statement: r28 := @parameter0: java.lang.reflect.Type 
(assert (not (= var328 null-ClassObject)))
(declare-const var1973 ClassObject) ; Statement: r29 := @parameter1: java.lang.Class 
(assert (not (= var1973 null-ClassObject)))
(declare-const var185 Int) ; Statement: l3 := @parameter2: long 
(assert (not (= var185 null-Int)))
 ; Statement: if r29 != r28 goto r30 = class "Ljava/lang/Object;" 
(assert (not (= (cast-from-ClassObject-to-var2233 var1973) (cast-from-ClassObject-to-var2233 var328)))) ; Cond: r29 != r28 
(define-const var3591 ClassObject (cast-from-ClassObject-to-ClassObject var2233!class)) ; Statement: r30 = class "Ljava/lang/Object;" 
(define-const var656 Bool true) ; Statement: $z21 = r28 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z21 == 0 goto r32 = r28 
(assert (= (ite var656 1 0) 0)) ; Cond: $z21 == 0 
(define-const var3471 ClassObject var328) ; Statement: r32 = r28 
 ; Statement: if r29 == null goto (branch) 
(assert (= var1973 null-ClassObject)) ; Cond: r29 == null 
 ; Statement: if r29 != null goto r37 = null 
(assert (not (= var1973 null-ClassObject))) ; Cond: r29 != null 
(define-const var2991 var3826 null-var3826) ; Statement: r37 = null 
 ; Statement: if r29 == class "Ljava/lang/Iterable;" goto r38 = class "Ljava/util/ArrayList;" 
(assert (= var1973 var2752!class)) ; Cond: r29 == class "Ljava/lang/Iterable;" 
(define-const var879 ClassObject var3984!class) ; Statement: r38 = class "Ljava/util/ArrayList;" 
 ; Statement: goto [?= $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>()] 
(assert true) ; Non Conditional
(define-const var3836 String (ClassObject_getTypeName/420978524 var328)) ; Statement: $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>() 
(define-const var1020 Int (- 1)) ; Statement: b5 = -1 
(assert true)
(define-const var1484 Int (hashCode/-467973558 var3836)) ; Statement: $i6 = virtualinvoke $r40.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i6) {     case -1815537371: goto $z4 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyList");     case -413656092: goto $z3 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptySet");     case 61358428: goto $z2 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyList");     case 357082875: goto $z0 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptySet");     default: goto tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); }; } 
(assert (and (not (= var1484 357082875)) (and (not (= var1484 61358428)) (and (not (= var1484 (- 413656092))) (and (not (= var1484 (- 1815537371))) true))))) ; Intersect: Negate: Cond: $i6 == 357082875   and Intersect: Negate: Cond: $i6 == 61358428   and Intersect: Negate: Cond: $i6 == -413656092   and Intersect: Negate: Cond: $i6 == -1815537371   and Non Conditional    
 ; Statement: tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); } 
(assert (and (= var1020 3) (and (not (= var1020 2)) (and (not (= var1020 1)) (and (not (= var1020 0)) true))))) ; Intersect: Cond: b5 == 3  and Intersect: Negate: Cond: b5 == 2   and Intersect: Negate: Cond: b5 == 1   and Intersect: Negate: Cond: b5 == 0   and Non Conditional    
(define-const var2058 var140 var140-init) ; Statement: $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList 
(define-const var1992 ClassObject (cast-from-ClassObject-to-ClassObject var328)) ; Statement: $r2 = (java.lang.Class) r28 
(define-const var1578 var1925 var2820_emptyList/582664469) ; Statement: $r1 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
(assert true)
;(assert (<init>/369918448 var2058 var1992 (cast-from-var1925-to-var2233 var1578))) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.reader.ObjectReaderImplList: void <init>(java.lang.Class,java.lang.Object)>($r2, $r1) 

(declare-const var2058!1 var140)
(declare-const var1992!1 ClassObject)
(declare-const var1578!1 var1925)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-ClassObject-to-var2233=([java.lang.Class], java.lang.Object), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), ClassObject_getTypeName/420978524=([java.lang.reflect.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var140-init=([], com.alibaba.fastjson2.reader.ObjectReaderImplList), var2820_emptyList/582664469=([], java.util.List), <init>/369918448=([com.alibaba.fastjson2.reader.ObjectReaderImplList, java.lang.Class, java.lang.Object], void), cast-from-var1925-to-var2233=([java.util.List], java.lang.Object)}
; {var328=r28, var1973=r29, var185=l3, var2233=java.lang.Object, var3591=r30, var656=$z21, var3471=r32, var3826=java.util.function.Function, var2991=r37, var2752=java.lang.Iterable, var3984=java.util.ArrayList, var879=r38, var3836=$r40, var1020=b5, var1484=$i6, var140=com.alibaba.fastjson2.reader.ObjectReaderImplList, var2058=$r0, var1992=$r2, var1925=java.util.List, var2820=java.util.Collections, var1578=$r1}
; {r28=var328, r29=var1973, l3=var185, java.lang.Object=var2233, r30=var3591, $z21=var656, r32=var3471, java.util.function.Function=var3826, r37=var2991, java.lang.Iterable=var2752, java.util.ArrayList=var3984, r38=var879, $r40=var3836, b5=var1020, $i6=var1484, com.alibaba.fastjson2.reader.ObjectReaderImplList=var140, $r0=var2058, $r2=var1992, java.util.List=var1925, java.util.Collections=var2820, $r1=var1578}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r28 := @parameter0: java.lang.reflect.Type;	r29 := @parameter1: java.lang.Class;	l3 := @parameter2: long;	if r29 != r28 goto r30 = class "Ljava/lang/Object;";	r30 = class "Ljava/lang/Object;";	$z21 = r28 instanceof java.lang.reflect.ParameterizedType;	if $z21 == 0 goto r32 = r28;	r32 = r28;	if r29 == null goto (branch);	if r29 != null goto r37 = null;	r37 = null;	if r29 == class "Ljava/lang/Iterable;" goto r38 = class "Ljava/util/ArrayList;";	r38 = class "Ljava/util/ArrayList;";	goto [?= $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>()];	$r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>();	b5 = -1;	$i6 = virtualinvoke $r40.<java.lang.String: int hashCode()>();	lookupswitch($i6) {     case -1815537371: goto $z4 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyList");     case -413656092: goto $z3 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptySet");     case 61358428: goto $z2 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyList");     case 357082875: goto $z0 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptySet");     default: goto tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); }; };	tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); };	$r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;	$r2 = (java.lang.Class) r28;	$r1 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	specialinvoke $r0.<com.alibaba.fastjson2.reader.ObjectReaderImplList: void <init>(java.lang.Class,java.lang.Object)>($r2, $r1);	return $r0
;block_num 9