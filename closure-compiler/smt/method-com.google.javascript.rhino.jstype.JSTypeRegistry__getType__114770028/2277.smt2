(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3766 0)
(declare-sort var3860 0)
(declare-sort var3217 0)
(declare-sort var3348 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getNativeType/1610976927 (var3766 var3348) var122)
(declare-const null-var3766 var3766)
(declare-const null-var3860 var3860)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3348-BIGINT_TYPE var3348)
(declare-const var552 var3766) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var552 null-var3766)))
(declare-const var418 var3860) ; Statement: r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var418 null-var3860)))
(declare-const var3575 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3575 null-String)))
(declare-const var2650 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2650 null-String)))
(declare-const var245 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var245 null-Int)))
(declare-const var362 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var362 null-Int)))
(define-const var895 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var896 Int (hashCode/-467973558 var3575)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; } 
(assert (and (not (= var896 64711720)) (and (not (= var896 3625364)) (and (not (= var896 (- 891985903))) (and (not (= var896 (- 1034364087))) (and (not (= var896 (- 1038130864))) (and (not (= var896 (- 1389167889))) true))))))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Intersect: Negate: Cond: $i0 == -1038130864   and Intersect: Negate: Cond: $i0 == -1389167889   and Non Conditional      
 ; Statement: tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; } 
(assert (and (= var895 2) (and (not (= var895 1)) (and (not (= var895 0)) true)))) ; Intersect: Cond: b3 == 2  and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional   
(define-const var1893 var3348 var3348-BIGINT_TYPE) ; Statement: $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE> 
(assert true)
(define-const var987 var122 (getNativeType/1610976927 var552 var1893)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var3766=com.google.javascript.rhino.jstype.JSTypeRegistry, var552=r1, var3860=com.google.javascript.rhino.jstype.StaticTypedScope, var418=r12, var3575=r0, var3217=null_type, var2650=r13, var245=i1, var362=i2, var895=b3, var896=$i0, var3348=com.google.javascript.rhino.jstype.JSTypeNative, var1893=$r6, var122=com.google.javascript.rhino.jstype.JSType, var987=$r7}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var3766, r1=var552, com.google.javascript.rhino.jstype.StaticTypedScope=var3860, r12=var418, r0=var3575, null_type=var3217, r13=var2650, i1=var245, i2=var362, b3=var895, $i0=var896, com.google.javascript.rhino.jstype.JSTypeNative=var3348, $r6=var1893, com.google.javascript.rhino.jstype.JSType=var122, $r7=var987}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	i1 := @parameter3: int;	i2 := @parameter4: int;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; };	tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; };	$r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;	$r7 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r6);	return $r7
;block_num 3