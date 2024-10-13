(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var1454 0)
(declare-sort var1300 0)
(declare-sort var308 0)
(declare-sort var1585 0)
(declare-sort var2590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1129309445 (var2384) var1454)
(declare-fun getMessageType/-284492780 (var2384) var1300)
(declare-fun getName/152591194 (var1300) String)
(declare-fun var308_contains/1636690605 (var308 var2590) Bool)
(declare-fun cast-from-String-to-var2590 (String) var2590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1585_snakeCaseToCamelCase/-1012853538 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2384 var2384)
(declare-const var1454-GROUP var1454)
(declare-const var1585-specialFieldNames var308)
(declare-const var196 var2384) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var196 null-var2384)))
(assert true)
(define-const var188 var1454 (getType/1129309445 var196)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>() 
(define-const var1955 var1454 var1454-GROUP) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP> 
 ; Statement: if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (not (not (= var188 var1955)))) ; Negate: Cond: $r2 != $r1  
(assert true)
(define-const var1226 var1300 (getMessageType/-284492780 var196)) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getMessageType()>() 
(assert true)
(define-const var2754 String (getName/152591194 var1226)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getName()>() 
 ; Statement: goto [?= r3 = $r11] 
(assert true) ; Non Conditional
(define-const var3766 String var2754) ; Statement: r3 = $r11 
(define-const var1882 var308 var1585-specialFieldNames) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames> 
(define-const var3519 Bool (var308_contains/1636690605 var1882 (cast-from-String-to-var2590 var2754))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r12 = "_" 
(assert (not (= (ite var3519 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2857 String "__") ; Statement: $r12 = "__" 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1954 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1954)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1954!1 String)
(assert (= var1954!1 ""))
(define-const var3679 String (var1585_snakeCaseToCamelCase/-1012853538 var3766)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3) 
(assert true)
(define-const var2133 String (append/672562846 var1954!1 var3679)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1954!2 String)
(assert (= var1954!2 (str.++ var1954!1 var3679)))
(assert true)
(define-const var2134 String (append/672562846 var2133 var2857)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 var2857)))
(assert true)
(define-const var763 String (toString/-2075883882 var2134)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1129309445=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type), getMessageType/-284492780=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getName/152591194=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), var308_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2590=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1585_snakeCaseToCamelCase/-1012853538=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2384=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var196=r0, var1454=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type, var188=$r2, var1955=$r1, var1300=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1226=$r10, var2754=$r11, var3766=r3, var308=java.util.Set, var1585=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var1882=$r4, var2590=java.lang.Object, var3519=$z0, var2857=$r12, var1954=$r5, var3679=$r6, var2133=$r7, var2134=$r8, var763=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2384, r0=var196, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type=var1454, $r2=var188, $r1=var1955, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1300, $r10=var1226, $r11=var2754, r3=var3766, java.util.Set=var308, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var1585, $r4=var1882, java.lang.Object=var2590, $z0=var3519, $r12=var2857, $r5=var1954, $r6=var3679, $r7=var2133, $r8=var2134, $r9=var763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type getType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$Type GROUP>;	if $r2 != $r1 goto $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getMessageType()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getName()>();	goto [?= r3 = $r11];	r3 = $r11;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.util.Set specialFieldNames>;	$z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>($r11);	if $z0 == 0 goto $r12 = "_";	$r12 = "__";	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5