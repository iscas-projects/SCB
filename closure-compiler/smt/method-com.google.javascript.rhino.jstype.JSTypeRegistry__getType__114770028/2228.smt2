(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var205 0)
(declare-sort var3232 0)
(declare-sort var2794 0)
(declare-sort var985 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getNativeType/1610976927 (var205 var985) var2832)
(declare-const null-var205 var205)
(declare-const null-var3232 var3232)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var985-BOOLEAN_TYPE var985)
(declare-const var2524 var205) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var2524 null-var205)))
(declare-const var207 var3232) ; Statement: r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var207 null-var3232)))
(declare-const var1636 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1636 null-String)))
(declare-const var1564 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var1564 null-String)))
(declare-const var1644 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1644 null-Int)))
(declare-const var2856 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var2856 null-Int)))
(define-const var2696 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var644 Int (hashCode/-467973558 var1636)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; } 
(assert (and (not (= var644 64711720)) (and (not (= var644 3625364)) (and (not (= var644 (- 891985903))) (and (not (= var644 (- 1034364087))) (and (not (= var644 (- 1038130864))) (and (not (= var644 (- 1389167889))) true))))))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Intersect: Negate: Cond: $i0 == -1038130864   and Intersect: Negate: Cond: $i0 == -1389167889   and Non Conditional      
 ; Statement: tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; } 
(assert (and (= var2696 0) true)) ; Intersect: Cond: b3 == 0  and Non Conditional 
(define-const var3536 var985 var985-BOOLEAN_TYPE) ; Statement: $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE> 
(assert true)
(define-const var633 var2832 (getNativeType/1610976927 var2524 var3536)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r10) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var205=com.google.javascript.rhino.jstype.JSTypeRegistry, var2524=r1, var3232=com.google.javascript.rhino.jstype.StaticTypedScope, var207=r12, var1636=r0, var2794=null_type, var1564=r13, var1644=i1, var2856=i2, var2696=b3, var644=$i0, var985=com.google.javascript.rhino.jstype.JSTypeNative, var3536=$r10, var2832=com.google.javascript.rhino.jstype.JSType, var633=$r11}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var205, r1=var2524, com.google.javascript.rhino.jstype.StaticTypedScope=var3232, r12=var207, r0=var1636, null_type=var2794, r13=var1564, i1=var1644, i2=var2856, b3=var2696, $i0=var644, com.google.javascript.rhino.jstype.JSTypeNative=var985, $r10=var3536, com.google.javascript.rhino.jstype.JSType=var2832, $r11=var633}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r12 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	i1 := @parameter3: int;	i2 := @parameter4: int;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1389167889: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("bigint");     case -1038130864: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case -1034364087: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 3625364: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     case 64711720: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; }; };	tableswitch(b3) {     case 0: goto $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;     case 1: goto $r8 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NUMBER_TYPE>;     case 2: goto $r6 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BIGINT_TYPE>;     case 3: goto $r4 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;     case 4: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     case 5: goto $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;     default: goto r19 = null; };	$r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative BOOLEAN_TYPE>;	$r11 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r10);	return $r11
;block_num 3