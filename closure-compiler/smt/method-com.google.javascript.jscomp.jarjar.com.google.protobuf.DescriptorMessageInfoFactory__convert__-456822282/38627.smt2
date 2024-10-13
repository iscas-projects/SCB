(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2868 0)
(declare-sort var2616 0)
(declare-sort var3780 0)
(declare-sort var171 0)
(declare-sort var2269 0)
(declare-sort var1291 0)
(declare-sort var2177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFile/201406807 (var2868) var3780)
(declare-fun getSyntax/1211486029 (var3780) var171)
(declare-fun ordinal/-291641772 (var2269) Int)
(declare-fun cast-from-var171-to-var2269 (var171) var2269)
(declare-fun var1291-init () var1291)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2177) String)
(declare-fun cast-from-var171-to-var2177 (var171) var2177)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1291 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2868 var2868)
(declare-const var2616-$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax (Array Int Int))
(declare-const var2228 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var2228 null-ClassObject)))
(declare-const var2181 var2868) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2181 null-var2868)))
(define-const var790 (Array Int Int) var2616-$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3: int[] $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax> 
(assert true)
(define-const var2885 var3780 (getFile/201406807 var2181)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(assert true)
(define-const var1799 var171 (getSyntax/1211486029 var2885)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax getSyntax()>() 
(assert true)
(define-const var1052 Int (ordinal/-291641772 (cast-from-var171-to-var2269 var1799))) ; Statement: $i0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: int ordinal()>() 
(define-const var2813 Int (select var790 var1052)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.StructuralMessageInfo convertProto2(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r4, r0);     case 2: goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.StructuralMessageInfo convertProto3(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r4, r0);     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2813 2)) (and (not (= var2813 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1075 var1291 var1291-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2167 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2167)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2167!1 String)
(assert (= var2167!1 ""))
(assert true)
(define-const var3882 String (append/672562846 var2167!1 "Unsupported syntax: ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported syntax: ") 
(declare-const var2167!2 String)
(assert (= var2167!2 (str.++ var2167!1 "Unsupported syntax: ")))
(assert true)
(define-const var2489 var3780 (getFile/201406807 var2181)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(assert true)
(define-const var139 var171 (getSyntax/1211486029 var2489)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax getSyntax()>() 
(assert true)
(define-const var743 String (append/-1031950772 var3882 (cast-from-var171-to-var2177 var139))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3882!1 String)
(assert (str.prefixof var3882 var3882!1))
(assert true)
(define-const var2320 String (toString/-2075883882 var743)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1075 var2320)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var1075!1 var1291)
(declare-const var2320!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getFile/201406807=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), getSyntax/1211486029=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax), ordinal/-291641772=([java.lang.Enum], int), cast-from-var171-to-var2269=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax], java.lang.Enum), var1291-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var171-to-var2177=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2228=r4, var2868=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2181=r0, var2616=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3, var790=$r1, var3780=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2885=$r2, var171=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax, var1799=$r3, var2269=java.lang.Enum, var1052=$i0, var2813=$i1, var1291=java.lang.IllegalArgumentException, var1075=$r7, var2167=$r8, var3882=$r11, var2489=$r9, var139=$r10, var2177=java.lang.Object, var743=$r12, var2320=$r13}
; {r4=var2228, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2868, r0=var2181, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3=var2616, $r1=var790, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3780, $r2=var2885, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax=var171, $r3=var1799, java.lang.Enum=var2269, $i0=var1052, $i1=var2813, java.lang.IllegalArgumentException=var1291, $r7=var1075, $r8=var2167, $r11=var3882, $r9=var2489, $r10=var139, java.lang.Object=var2177, $r12=var743, $r13=var2320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.Class;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory$3: int[] $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax>;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax getSyntax()>();	$i0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 1: goto $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.StructuralMessageInfo convertProto2(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r4, r0);     case 2: goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.StructuralMessageInfo convertProto3(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r4, r0);     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported syntax: ");	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax getSyntax()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 2