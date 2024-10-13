(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1343 0)
(declare-sort var2864 0)
(declare-sort var1408 0)
(declare-sort var1934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2864_getDescriptorForType/-355994375 (var2864) var1934)
(declare-fun getFullName/-1302123061 (var1934) String)
(declare-fun printMessage/1271330188 (var1343 var2864 var1408) void)
(declare-const null-var1343 var1343)
(declare-const null-var2864 var2864)
(declare-const null-var1408 var1408)
(declare-const var2299 var1343) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer 
(assert (not (= var2299 null-var1343)))
(declare-const var3323 var2864) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder 
(assert (not (= var3323 null-var2864)))
(declare-const var1881 var1408) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var1881 null-var1408)))
(define-const var1426 var1934 (var2864_getDescriptorForType/-355994375 var3323)) ; Statement: $r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
(assert true)
(define-const var2772 String (getFullName/-1302123061 var1426)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var3776 Bool (= var2772 "google.protobuf.Any")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("google.protobuf.Any") 
 ; Statement: if $z0 == 0 goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer: void printMessage(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator)>(r0, r4) 
(assert (= (ite var3776 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (printMessage/1271330188 var2299 var3323 var1881)) ; Statement: specialinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer: void printMessage(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator)>(r0, r4) 

(declare-const var2299!1 var1343)
(declare-const var3323!1 var2864)
(declare-const var1881!1 var1408)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2864_getDescriptorForType/-355994375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), printMessage/1271330188=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], void)}
; {var1343=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer, var2299=r3, var2864=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder, var3323=r0, var1408=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var1881=r4, var1934=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1426=$r1, var2772=$r2, var3776=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer=var1343, r3=var2299, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder=var2864, r0=var3323, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var1408, r4=var1881, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1934, $r1=var1426, $r2=var2772, $z0=var3776}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("google.protobuf.Any");	if $z0 == 0 goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer: void printMessage(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator)>(r0, r4);	specialinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Printer: void printMessage(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageOrBuilder,com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator)>(r0, r4);	return
;block_num 2