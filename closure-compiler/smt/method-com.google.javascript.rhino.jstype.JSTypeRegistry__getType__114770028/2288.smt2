(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1784 0)
(declare-sort var1167 0)
(declare-sort var2517 0)
(declare-sort var418 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getNativeType/1610976927 (var1784 var418) var961)
(declare-const null-var1784 var1784)
(declare-const null-var1167 var1167)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var418-STRING_TYPE var418)
(declare-const var3427 var1784) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var3427 null-var1784)))
(declare-const var208 var1167) ; Statement: r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var208 null-var1167)))
(declare-const var3864 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3864 null-String)))
(declare-const var260 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var260 null-String)))
(declare-const var2527 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2527 null-Int)))
(declare-const var1978 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var1978 null-Int)))
(define-const var2715 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3118 Int (hashCode/-467973558 var3864)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; } 
(assert (and (not (= var3118 64711720)) (and (not (= var3118 3625364)) (and (not (= var3118 (- 891985903))) (and (not (= var3118 (- 1034364087))) (and (not (= var3118 (- 1038130864))) (and (not (= var3118 (- 1389167889))) true))))))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Intersect: Negate: Cond: $i0 == -1038130864   and Intersect: Negate: Cond: $i0 == -1389167889   and Non Conditional      
 ; Statement: tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; } 
(assert (and (= var2715 3) (and (not (= var2715 2)) (and (not (= var2715 1)) (and (not (= var2715 0)) true))))) ; Intersect: Cond: b3 == 3  and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional    
(define-const var2252 var418 var418-STRING_TYPE) ; Statement: $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE> 
(assert true)
(define-const var3483 var961 (getNativeType/1610976927 var3427 var2252)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var1784=com.google.javascript.rhino.jstype.JSTypeRegistry, var3427=r1, var1167=com.google.javascript.rhino.jstype.StaticTypedScope, var208=r12, var3864=r0, var2517=null_type, var260=r13, var2527=i1, var1978=i2, var2715=b3, var3118=$i0, var418=com.google.javascript.rhino.jstype.JSTypeNative, var2252=$r4, var961=com.google.javascript.rhino.jstype.JSType, var3483=$r5}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1784, r1=var3427, com.google.javascript.rhino.jstype.StaticTypedScope=var1167, r12=var208, r0=var3864, null_type=var2517, r13=var260, i1=var2527, i2=var1978, b3=var2715, $i0=var3118, com.google.javascript.rhino.jstype.JSTypeNative=var418, $r4=var2252, com.google.javascript.rhino.jstype.JSType=var961, $r5=var3483}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	i1 := @parameter3: int;	i2 := @parameter4: int;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; };	tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; };	$r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;	$r5 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r4);	return $r5
;block_num 3