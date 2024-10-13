(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var857 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/-1561139576 (var857) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var857 var857)
(declare-const var665-LONG_TYPE var665)
(declare-const var3768 var857) ; Statement: r0 := @parameter0: jdk.jfr.ValueDescriptor 
(assert (not (= var3768 null-var857)))
(assert true)
(define-const var1662 String (getTypeName/-1561139576 var3768)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>() 
(define-const var3663 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var509 Int (hashCode/-467973558 var1662)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case -530663260: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case 104431: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     case 1212802142: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     default: goto tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; }; } 
(assert (and (not (= var509 1212802142)) (and (not (= var509 1195259493)) (and (not (= var509 109413500)) (and (not (= var509 97526364)) (and (not (= var509 64711720)) (and (not (= var509 3327612)) (and (not (= var509 3052374)) (and (not (= var509 3039496)) (and (not (= var509 104431)) (and (not (= var509 (- 530663260))) (and (not (= var509 (- 1325958191))) true)))))))))))) ; Intersect: Negate: Cond: $i0 == 1212802142   and Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -530663260   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional           
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; } 
(assert (and (= var3663 3) (and (not (= var3663 2)) (and (not (= var3663 1)) (and (not (= var3663 0)) true))))) ; Intersect: Cond: b1 == 3  and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(define-const var75 var665 var665-LONG_TYPE) ; Statement: $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/-1561139576=([jdk.jfr.ValueDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var857=jdk.jfr.ValueDescriptor, var3768=r0, var1662=r1, var3663=b1, var509=$i0, var665=jdk.internal.org.objectweb.asm.Type, var75=$r9}
; {jdk.jfr.ValueDescriptor=var857, r0=var3768, r1=var1662, b1=var3663, $i0=var509, jdk.internal.org.objectweb.asm.Type=var665, $r9=var75}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.jfr.ValueDescriptor;	r1 = virtualinvoke r0.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z10 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case -530663260: goto $z9 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Class");     case 104431: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     case 1212802142: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Thread");     default: goto tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; }; };	tableswitch(b1) {     case 0: goto $r12 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BYTE_TYPE>;     case 1: goto $r11 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type SHORT_TYPE>;     case 2: goto $r10 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type INT_TYPE>;     case 3: goto $r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;     case 4: goto $r8 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type DOUBLE_TYPE>;     case 5: goto $r7 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type FLOAT_TYPE>;     case 6: goto $r6 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type CHAR_TYPE>;     case 7: goto $r5 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;     case 8: goto $r4 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_STRING>;     case 9: goto $r3 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type Type_THREAD>;     case 10: goto $r2 = <jdk.jfr.internal.ASMToolkit: jdk.internal.org.objectweb.asm.Type TYPE_CLASS>;     default: goto $r13 = new java.lang.Error; };	$r9 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;	return $r9
;block_num 3