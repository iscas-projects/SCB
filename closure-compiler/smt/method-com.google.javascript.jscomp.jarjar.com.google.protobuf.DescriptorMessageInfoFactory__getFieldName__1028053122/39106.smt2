(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2141 0)
(declare-sort var3795 0)
(declare-sort var1633 0)
(declare-sort var2571 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1129309445 (var2141) var3795)
(declare-fun getName/-2025161712 (var2141) String)
(declare-fun var1633_contains/1636690605 (var1633 var835) Bool)
(declare-fun cast-from-String-to-var835 (String) var835)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2571_snakeCaseToCamelCase/-1012853538 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2141 var2141)
(declare-const var3795-GROUP var3795)
(declare-const var2571-specialFieldNames var1633)
(declare-const var1865 var2141) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1865 null-var2141)))
(assert true)
(define-const var359 var3795 (getType/1129309445 var1865)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>() 
(define-const var3156 var3795 var3795-GROUP) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP> 
 ; Statement: if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (not (= var359 var3156))) ; Cond: $r2 != $r1 
(assert true)
(define-const var2393 String (getName/-2025161712 var1865)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var1298 String var2393) ; Statement: r3 = $r11 
(define-const var1469 var1633 var2571-specialFieldNames) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames> 
(define-const var2419 Bool (var1633_contains/1636690605 var1469 (cast-from-String-to-var835 var2393))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r12 = "_" 
(assert (not (= (ite var2419 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var648 String "__") ; Statement: $r12 = "__" 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2212 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2212)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2212!1 String)
(assert (= var2212!1 ""))
(define-const var1637 String (var2571_snakeCaseToCamelCase/-1012853538 var1298)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3) 
(assert true)
(define-const var2691 String (append/672562846 var2212!1 var1637)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2212!2 String)
(assert (= var2212!2 (str.++ var2212!1 var1637)))
(assert true)
(define-const var498 String (append/672562846 var2691 var648)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2691!1 String)
(assert (= var2691!1 (str.++ var2691 var648)))
(assert true)
(define-const var2304 String (toString/-2075883882 var498)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1129309445=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type), getName/-2025161712=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), var1633_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var835=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2571_snakeCaseToCamelCase/-1012853538=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2141=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1865=r0, var3795=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type, var359=$r2, var3156=$r1, var2393=$r11, var1298=r3, var1633=java.util.Set, var2571=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var1469=$r4, var835=java.lang.Object, var2419=$z0, var648=$r12, var2212=$r5, var1637=$r6, var2691=$r7, var498=$r8, var2304=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2141, r0=var1865, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type=var3795, $r2=var359, $r1=var3156, $r11=var2393, r3=var1298, java.util.Set=var1633, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var2571, $r4=var1469, java.lang.Object=var835, $z0=var2419, $r12=var648, $r5=var2212, $r6=var1637, $r7=var2691, $r8=var498, $r9=var2304}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP>;	if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	r3 = $r11;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames>;	$z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11);	if $z0 == 0 goto $r12 = "_";	$r12 = "__";	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5