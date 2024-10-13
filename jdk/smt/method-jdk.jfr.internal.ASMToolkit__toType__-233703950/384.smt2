(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1318 0)
(declare-sort var225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/-1561139576 (var1318) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1318 var1318)
(declare-const var225-INT_TYPE var225)
(declare-const var3713 var1318) ; Statement: r0 := @parameter0: jdk.jfr.ValueDescriptor 
(assert (not (= var3713 null-var1318)))
(assert true)
(define-const var1455 String (getTypeName/-1561139576 var3713)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>() 
(define-const var1563 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1065 Int (hashCode/-467973558 var1455)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case -530663260: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case 104431: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     case 1212802142: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     default: goto tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; }; } 
(assert (and (not (= var1065 1212802142)) (and (not (= var1065 1195259493)) (and (not (= var1065 109413500)) (and (not (= var1065 97526364)) (and (not (= var1065 64711720)) (and (not (= var1065 3327612)) (and (not (= var1065 3052374)) (and (not (= var1065 3039496)) (and (not (= var1065 104431)) (and (not (= var1065 (- 530663260))) (and (not (= var1065 (- 1325958191))) true)))))))))))) ; Intersect: Negate: Cond: $i0 == 1212802142   and Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -530663260   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional           
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; } 
(assert (and (= var1563 2) (and (not (= var1563 1)) (and (not (= var1563 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var2964 var225 var225-INT_TYPE) ; Statement: $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE> 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/-1561139576=([jdk.jfr.ValueDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1318=jdk.jfr.ValueDescriptor, var3713=r0, var1455=r1, var1563=b1, var1065=$i0, var225=jdk.internal.org.objectweb.asm.Type, var2964=$r10}
; {jdk.jfr.ValueDescriptor=var1318, r0=var3713, r1=var1455, b1=var1563, $i0=var1065, jdk.internal.org.objectweb.asm.Type=var225, $r10=var2964}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.jfr.ValueDescriptor;	r1 = virtualinvoke r0.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case -530663260: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case 104431: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     case 1212802142: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     default: goto tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; }; };	tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; };	$r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;	return $r10
;block_num 3