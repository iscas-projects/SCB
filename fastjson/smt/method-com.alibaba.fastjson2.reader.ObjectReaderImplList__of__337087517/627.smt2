(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2387 0)
(declare-sort var701 0)
(declare-sort var3902 0)
(declare-sort var1916 0)
(declare-sort var1529 0)
(declare-sort var2984 0)
(declare-sort var2726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2387!class ClassObject)
(declare-const var3902!class ClassObject)
(declare-const var1916!class ClassObject)
(declare-fun cast-from-ClassObject-to-var2387 (ClassObject) var2387)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun ClassObject_getTypeName/420978524 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1529-init () var1529)
(declare-fun var2726_emptySet/2131139019 () var2984)
(declare-fun <init>/369918448 (var1529 ClassObject var2387) void)
(declare-fun cast-from-var2984-to-var2387 (var2984) var2387)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var701 var701)
(declare-const var1894 ClassObject) ; Statement: r28 := @parameter0: java.lang.reflect.Type 
(assert (not (= var1894 null-ClassObject)))
(declare-const var2501 ClassObject) ; Statement: r29 := @parameter1: java.lang.Class 
(assert (not (= var2501 null-ClassObject)))
(declare-const var202 Int) ; Statement: l3 := @parameter2: long 
(assert (not (= var202 null-Int)))
 ; Statement: if r29 != r28 goto r30 = class "Ljava/lang/Object;" 
(assert (not (= (cast-from-ClassObject-to-var2387 var2501) (cast-from-ClassObject-to-var2387 var1894)))) ; Cond: r29 != r28 
(define-const var363 ClassObject (cast-from-ClassObject-to-ClassObject var2387!class)) ; Statement: r30 = class "Ljava/lang/Object;" 
(define-const var358 Bool true) ; Statement: $z21 = r28 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z21 == 0 goto r32 = r28 
(assert (= (ite var358 1 0) 0)) ; Cond: $z21 == 0 
(define-const var1723 ClassObject var1894) ; Statement: r32 = r28 
 ; Statement: if r29 == null goto (branch) 
(assert (= var2501 null-ClassObject)) ; Cond: r29 == null 
 ; Statement: if r29 != null goto r37 = null 
(assert (not (= var2501 null-ClassObject))) ; Cond: r29 != null 
(define-const var3111 var701 null-var701) ; Statement: r37 = null 
 ; Statement: if r29 == class "Ljava/lang/Iterable;" goto r38 = class "Ljava/util/ArrayList;" 
(assert (= var2501 var3902!class)) ; Cond: r29 == class "Ljava/lang/Iterable;" 
(define-const var3324 ClassObject var1916!class) ; Statement: r38 = class "Ljava/util/ArrayList;" 
 ; Statement: goto [?= $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>()] 
(assert true) ; Non Conditional
(define-const var2257 String (ClassObject_getTypeName/420978524 var1894)) ; Statement: $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>() 
(define-const var2646 Int (- 1)) ; Statement: b5 = -1 
(assert true)
(define-const var1965 Int (hashCode/-467973558 var2257)) ; Statement: $i6 = virtualinvoke $r40.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i6) {     case -1815537371: goto $z4 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyList");     case -413656092: goto $z3 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptySet");     case 61358428: goto $z2 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyList");     case 357082875: goto $z0 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptySet");     default: goto tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); }; } 
(assert (and (not (= var1965 357082875)) (and (not (= var1965 61358428)) (and (not (= var1965 (- 413656092))) (and (not (= var1965 (- 1815537371))) true))))) ; Intersect: Negate: Cond: $i6 == 357082875   and Intersect: Negate: Cond: $i6 == 61358428   and Intersect: Negate: Cond: $i6 == -413656092   and Intersect: Negate: Cond: $i6 == -1815537371   and Non Conditional    
 ; Statement: tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); } 
(assert (and (= var2646 2) (and (not (= var2646 1)) (and (not (= var2646 0)) true)))) ; Intersect: Cond: b5 == 2  and Intersect: Negate: Cond: b5 == 1   and Intersect: Negate: Cond: b5 == 0   and Non Conditional   
(define-const var2633 var1529 var1529-init) ; Statement: $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList 
(define-const var936 ClassObject (cast-from-ClassObject-to-ClassObject var1894)) ; Statement: $r5 = (java.lang.Class) r28 
(define-const var3456 var2984 var2726_emptySet/2131139019) ; Statement: $r4 = staticinvoke <java.util.Collections: java.util.Set emptySet()>() 
(assert true)
;(assert (<init>/369918448 var2633 var936 (cast-from-var2984-to-var2387 var3456))) ; Statement: specialinvoke $r3.<com.alibaba.fastjson2.reader.ObjectReaderImplList: void <init>(java.lang.Class,java.lang.Object)>($r5, $r4) 

(declare-const var2633!1 var1529)
(declare-const var936!1 ClassObject)
(declare-const var3456!1 var2984)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-ClassObject-to-var2387=([java.lang.Class], java.lang.Object), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), ClassObject_getTypeName/420978524=([java.lang.reflect.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1529-init=([], com.alibaba.fastjson2.reader.ObjectReaderImplList), var2726_emptySet/2131139019=([], java.util.Set), <init>/369918448=([com.alibaba.fastjson2.reader.ObjectReaderImplList, java.lang.Class, java.lang.Object], void), cast-from-var2984-to-var2387=([java.util.Set], java.lang.Object)}
; {var1894=r28, var2501=r29, var202=l3, var2387=java.lang.Object, var363=r30, var358=$z21, var1723=r32, var701=java.util.function.Function, var3111=r37, var3902=java.lang.Iterable, var1916=java.util.ArrayList, var3324=r38, var2257=$r40, var2646=b5, var1965=$i6, var1529=com.alibaba.fastjson2.reader.ObjectReaderImplList, var2633=$r3, var936=$r5, var2984=java.util.Set, var2726=java.util.Collections, var3456=$r4}
; {r28=var1894, r29=var2501, l3=var202, java.lang.Object=var2387, r30=var363, $z21=var358, r32=var1723, java.util.function.Function=var701, r37=var3111, java.lang.Iterable=var3902, java.util.ArrayList=var1916, r38=var3324, $r40=var2257, b5=var2646, $i6=var1965, com.alibaba.fastjson2.reader.ObjectReaderImplList=var1529, $r3=var2633, $r5=var936, java.util.Set=var2984, java.util.Collections=var2726, $r4=var3456}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r28 := @parameter0: java.lang.reflect.Type;	r29 := @parameter1: java.lang.Class;	l3 := @parameter2: long;	if r29 != r28 goto r30 = class "Ljava/lang/Object;";	r30 = class "Ljava/lang/Object;";	$z21 = r28 instanceof java.lang.reflect.ParameterizedType;	if $z21 == 0 goto r32 = r28;	r32 = r28;	if r29 == null goto (branch);	if r29 != null goto r37 = null;	r37 = null;	if r29 == class "Ljava/lang/Iterable;" goto r38 = class "Ljava/util/ArrayList;";	r38 = class "Ljava/util/ArrayList;";	goto [?= $r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>()];	$r40 = interfaceinvoke r28.<java.lang.reflect.Type: java.lang.String getTypeName()>();	b5 = -1;	$i6 = virtualinvoke $r40.<java.lang.String: int hashCode()>();	lookupswitch($i6) {     case -1815537371: goto $z4 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptyList");     case -413656092: goto $z3 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptySet");     case 61358428: goto $z2 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("java.util.Collections$EmptyList");     case 357082875: goto $z0 = virtualinvoke $r40.<java.lang.String: boolean equals(java.lang.Object)>("kotlin.collections.EmptySet");     default: goto tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); }; };	tableswitch(b5) {     case 0: goto r6 = (java.lang.Class) r28;     case 1: goto r6 = (java.lang.Class) r28;     case 2: goto $r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     case 3: goto $r0 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;     default: goto if r30 != class "Ljava/lang/String;" goto (branch); };	$r3 = new com.alibaba.fastjson2.reader.ObjectReaderImplList;	$r5 = (java.lang.Class) r28;	$r4 = staticinvoke <java.util.Collections: java.util.Set emptySet()>();	specialinvoke $r3.<com.alibaba.fastjson2.reader.ObjectReaderImplList: void <init>(java.lang.Class,java.lang.Object)>($r5, $r4);	return $r3
;block_num 9