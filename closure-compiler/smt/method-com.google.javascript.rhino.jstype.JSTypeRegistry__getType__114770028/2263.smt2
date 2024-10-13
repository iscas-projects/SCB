(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1429 0)
(declare-sort var2942 0)
(declare-sort var3168 0)
(declare-sort var1113 0)
(declare-sort var3632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getNativeType/1610976927 (var1429 var1113) var3632)
(declare-const null-var1429 var1429)
(declare-const null-var2942 var2942)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1113-NUMBER_TYPE var1113)
(declare-const var156 var1429) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var156 null-var1429)))
(declare-const var3089 var2942) ; Statement: r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var3089 null-var2942)))
(declare-const var367 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var367 null-String)))
(declare-const var110 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var110 null-String)))
(declare-const var305 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var305 null-Int)))
(declare-const var3087 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var3087 null-Int)))
(define-const var1795 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var721 Int (hashCode/-467973558 var367)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; } 
(assert (and (not (= var721 64711720)) (and (not (= var721 3625364)) (and (not (= var721 (- 891985903))) (and (not (= var721 (- 1034364087))) (and (not (= var721 (- 1038130864))) (and (not (= var721 (- 1389167889))) true))))))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Intersect: Negate: Cond: $i0 == -1038130864   and Intersect: Negate: Cond: $i0 == -1389167889   and Non Conditional      
 ; Statement: tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; } 
(assert (and (= var1795 1) (and (not (= var1795 0)) true))) ; Intersect: Cond: b3 == 1  and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var1767 var1113 var1113-NUMBER_TYPE) ; Statement: $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE> 
(assert true)
(define-const var876 var3632 (getNativeType/1610976927 var156 var1767)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var1429=com.google.javascript.rhino.jstype.JSTypeRegistry, var156=r1, var2942=com.google.javascript.rhino.jstype.StaticTypedScope, var3089=r12, var367=r0, var3168=null_type, var110=r13, var305=i1, var3087=i2, var1795=b3, var721=$i0, var1113=com.google.javascript.rhino.jstype.JSTypeNative, var1767=$r8, var3632=com.google.javascript.rhino.jstype.JSType, var876=$r9}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1429, r1=var156, com.google.javascript.rhino.jstype.StaticTypedScope=var2942, r12=var3089, r0=var367, null_type=var3168, r13=var110, i1=var305, i2=var3087, b3=var1795, $i0=var721, com.google.javascript.rhino.jstype.JSTypeNative=var1113, $r8=var1767, com.google.javascript.rhino.jstype.JSType=var3632, $r9=var876}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	i1 := @parameter3: int;	i2 := @parameter4: int;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; };	tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; };	$r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;	$r9 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r8);	return $r9
;block_num 3