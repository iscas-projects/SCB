(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort var3613 0)
(declare-sort var1805 0)
(declare-sort var1657 0)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1129309445 (var1332) var3613)
(declare-fun getName/-2025161712 (var1332) String)
(declare-fun var1805_contains/1636690605 (var1805 var765) Bool)
(declare-fun cast-from-String-to-var765 (String) var765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1657_snakeCaseToCamelCase/-1012853538 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1332 var1332)
(declare-const var3613-GROUP var3613)
(declare-const var1657-specialFieldNames var1805)
(declare-const var2555 var1332) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2555 null-var1332)))
(assert true)
(define-const var2116 var3613 (getType/1129309445 var2555)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>() 
(define-const var3644 var3613 var3613-GROUP) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP> 
 ; Statement: if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (not (= var2116 var3644))) ; Cond: $r2 != $r1 
(assert true)
(define-const var264 String (getName/-2025161712 var2555)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var150 String var264) ; Statement: r3 = $r11 
(define-const var2780 var1805 var1657-specialFieldNames) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames> 
(define-const var959 Bool (var1805_contains/1636690605 var2780 (cast-from-String-to-var765 var264))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r12 = "_" 
(assert (= (ite var959 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2417 String "_") ; Statement: $r12 = "_" 
(assert true) ; Non Conditional
(define-const var2612 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2612)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2612!1 String)
(assert (= var2612!1 ""))
(define-const var2312 String (var1657_snakeCaseToCamelCase/-1012853538 var150)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3) 
(assert true)
(define-const var1541 String (append/672562846 var2612!1 var2312)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2612!2 String)
(assert (= var2612!2 (str.++ var2612!1 var2312)))
(assert true)
(define-const var3776 String (append/672562846 var1541 var2417)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1541!1 String)
(assert (= var1541!1 (str.++ var1541 var2417)))
(assert true)
(define-const var3981 String (toString/-2075883882 var3776)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1129309445=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type), getName/-2025161712=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), var1805_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var765=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1657_snakeCaseToCamelCase/-1012853538=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1332=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2555=r0, var3613=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type, var2116=$r2, var3644=$r1, var264=$r11, var150=r3, var1805=java.util.Set, var1657=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var2780=$r4, var765=java.lang.Object, var959=$z0, var2417=$r12, var2612=$r5, var2312=$r6, var1541=$r7, var3776=$r8, var3981=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1332, r0=var2555, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type=var3613, $r2=var2116, $r1=var3644, $r11=var264, r3=var150, java.util.Set=var1805, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var1657, $r4=var2780, java.lang.Object=var765, $z0=var959, $r12=var2417, $r5=var2612, $r6=var2312, $r7=var1541, $r8=var3776, $r9=var3981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP>;	if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	r3 = $r11;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames>;	$z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11);	if $z0 == 0 goto $r12 = "_";	$r12 = "_";	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5