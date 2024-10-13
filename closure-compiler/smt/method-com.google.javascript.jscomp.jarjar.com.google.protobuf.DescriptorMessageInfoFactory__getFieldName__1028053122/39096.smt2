(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3615 0)
(declare-sort var2821 0)
(declare-sort var2666 0)
(declare-sort var1334 0)
(declare-sort var1471 0)
(declare-sort var962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1129309445 (var3615) var2821)
(declare-fun getMessageType/-284492780 (var3615) var2666)
(declare-fun getName/152591194 (var2666) String)
(declare-fun var1334_contains/1636690605 (var1334 var962) Bool)
(declare-fun cast-from-String-to-var962 (String) var962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1471_snakeCaseToCamelCase/-1012853538 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3615 var3615)
(declare-const var2821-GROUP var2821)
(declare-const var1471-specialFieldNames var1334)
(declare-const var2523 var3615) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2523 null-var3615)))
(assert true)
(define-const var2379 var2821 (getType/1129309445 var2523)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>() 
(define-const var3374 var2821 var2821-GROUP) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP> 
 ; Statement: if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (not (not (= var2379 var3374)))) ; Negate: Cond: $r2 != $r1  
(assert true)
(define-const var29 var2666 (getMessageType/-284492780 var2523)) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getMessageType()>() 
(assert true)
(define-const var904 String (getName/152591194 var29)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getName()>() 
 ; Statement: goto [?= r3 = $r11] 
(assert true) ; Non Conditional
(define-const var1633 String var904) ; Statement: r3 = $r11 
(define-const var958 var1334 var1471-specialFieldNames) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames> 
(define-const var3933 Bool (var1334_contains/1636690605 var958 (cast-from-String-to-var962 var904))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r12 = "_" 
(assert (= (ite var3933 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3050 String "_") ; Statement: $r12 = "_" 
(assert true) ; Non Conditional
(define-const var2524 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2524)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2524!1 String)
(assert (= var2524!1 ""))
(define-const var3972 String (var1471_snakeCaseToCamelCase/-1012853538 var1633)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3) 
(assert true)
(define-const var698 String (append/672562846 var2524!1 var3972)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2524!2 String)
(assert (= var2524!2 (str.++ var2524!1 var3972)))
(assert true)
(define-const var545 String (append/672562846 var698 var3050)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var698!1 String)
(assert (= var698!1 (str.++ var698 var3050)))
(assert true)
(define-const var1613 String (toString/-2075883882 var545)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1129309445=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type), getMessageType/-284492780=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getName/152591194=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), var1334_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var962=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1471_snakeCaseToCamelCase/-1012853538=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3615=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2523=r0, var2821=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type, var2379=$r2, var3374=$r1, var2666=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var29=$r10, var904=$r11, var1633=r3, var1334=java.util.Set, var1471=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var958=$r4, var962=java.lang.Object, var3933=$z0, var3050=$r12, var2524=$r5, var3972=$r6, var698=$r7, var545=$r8, var1613=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3615, r0=var2523, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type=var2821, $r2=var2379, $r1=var3374, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2666, $r10=var29, $r11=var904, r3=var1633, java.util.Set=var1334, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var1471, $r4=var958, java.lang.Object=var962, $z0=var3933, $r12=var3050, $r5=var2524, $r6=var3972, $r7=var698, $r8=var545, $r9=var1613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP>;	if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getMessageType()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getName()>();	goto [?= r3 = $r11];	r3 = $r11;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames>;	$z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11);	if $z0 == 0 goto $r12 = "_";	$r12 = "_";	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5