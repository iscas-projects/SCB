(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1076 0)
(declare-sort var2010 0)
(declare-sort var1114 0)
(declare-sort var2554 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getNativeType/1610976927 (var1076 var2554) var1804)
(declare-const null-var1076 var1076)
(declare-const null-var2010 var2010)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2554-VOID_TYPE var2554)
(declare-const var2595 var1076) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var2595 null-var1076)))
(declare-const var318 var2010) ; Statement: r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var318 null-var2010)))
(declare-const var1314 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1314 null-String)))
(declare-const var1753 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var1753 null-String)))
(declare-const var3527 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3527 null-Int)))
(declare-const var210 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var210 null-Int)))
(define-const var1432 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3941 Int (hashCode/-467973558 var1314)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; } 
(assert (and (not (= var3941 64711720)) (and (not (= var3941 3625364)) (and (not (= var3941 (- 891985903))) (and (not (= var3941 (- 1034364087))) (and (not (= var3941 (- 1038130864))) (and (not (= var3941 (- 1389167889))) true))))))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Intersect: Negate: Cond: $i0 == -1038130864   and Intersect: Negate: Cond: $i0 == -1389167889   and Non Conditional      
 ; Statement: tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; } 
(assert (and (= var1432 4) (and (not (= var1432 3)) (and (not (= var1432 2)) (and (not (= var1432 1)) (and (not (= var1432 0)) true)))))) ; Intersect: Cond: b3 == 4  and Intersect: Negate: Cond: b3 == 3   and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional     
(define-const var403 var2554 var2554-VOID_TYPE) ; Statement: $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE> 
(assert true)
(define-const var1350 var1804 (getNativeType/1610976927 var2595 var403)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var1076=com.google.javascript.rhino.jstype.JSTypeRegistry, var2595=r1, var2010=com.google.javascript.rhino.jstype.StaticTypedScope, var318=r12, var1314=r0, var1114=null_type, var1753=r13, var3527=i1, var210=i2, var1432=b3, var3941=$i0, var2554=com.google.javascript.rhino.jstype.JSTypeNative, var403=$r2, var1804=com.google.javascript.rhino.jstype.JSType, var1350=$r3}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1076, r1=var2595, com.google.javascript.rhino.jstype.StaticTypedScope=var2010, r12=var318, r0=var1314, null_type=var1114, r13=var1753, i1=var3527, i2=var210, b3=var1432, $i0=var3941, com.google.javascript.rhino.jstype.JSTypeNative=var2554, $r2=var403, com.google.javascript.rhino.jstype.JSType=var1804, $r3=var1350}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	i1 := @parameter3: int;	i2 := @parameter4: int;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; };	tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; };	$r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;	$r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r2);	return $r3
;block_num 3