(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3988 0)
(declare-sort var2589 0)
(declare-sort var2136 0)
(declare-sort var2763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/805158125 (var3988) String)
(declare-fun var2589_access$200/579475431 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2136-init () var2136)
(declare-fun getIndex/1319435430 (var3988) Int)
(declare-fun var2589_access$300/807833722 (ClassObject String) var2763)
(declare-fun <init>/-2126356317 (var2136 Int var2763 var2763) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3988 var3988)
(declare-const var2190 ClassObject) ; Statement: r12 := @parameter0: java.lang.Class 
(assert (not (= var2190 null-ClassObject)))
(declare-const var720 var3988) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor 
(assert (not (= var720 null-var3988)))
(assert true)
(define-const var485 String (getName/805158125 var720)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: java.lang.String getName()>() 
(define-const var48 String (var2589_access$200/579475431 var485)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String access$200(java.lang.String)>($r1) 
(define-const var868 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var868)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var868!1 String)
(assert (= var868!1 ""))
(assert true)
(define-const var2883 String (append/672562846 var868!1 var48)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var868!2 String)
(assert (= var868!2 (str.++ var868!1 var48)))
(assert true)
(define-const var2643 String (append/672562846 var2883 "_")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2883!1 String)
(assert (= var2883!1 (str.++ var2883 "_")))
(assert true)
(define-const var2508 String (toString/-2075883882 var2643)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2073 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2073)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2073!1 String)
(assert (= var2073!1 ""))
(assert true)
(define-const var1256 String (append/672562846 var2073!1 var48)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2073!2 String)
(assert (= var2073!2 (str.++ var2073!1 var48)))
(assert true)
(define-const var931 String (append/672562846 var1256 "Case_")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case_") 
(declare-const var1256!1 String)
(assert (= var1256!1 (str.++ var1256 "Case_")))
(assert true)
(define-const var3526 String (toString/-2075883882 var931)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2306 var2136 var2136-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo 
(assert true)
(define-const var136 Int (getIndex/1319435430 var720)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: int getIndex()>() 
(define-const var1094 var2763 (var2589_access$300/807833722 var2190 var3526)) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field access$300(java.lang.Class,java.lang.String)>(r12, r10) 
(define-const var192 var2763 (var2589_access$300/807833722 var2190 var2508)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field access$300(java.lang.Class,java.lang.String)>(r12, r6) 
(assert true)
;(assert (<init>/-2126356317 var2306 var136 var1094 var192)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo: void <init>(int,java.lang.reflect.Field,java.lang.reflect.Field)>($i0, $r14, $r13) 

(declare-const var2306!1 var2136)
(declare-const var136!1 Int)
(declare-const var1094!1 var2763)
(declare-const var192!1 var2763)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/805158125=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor], java.lang.String), var2589_access$200/579475431=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2136-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo), getIndex/1319435430=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor], int), var2589_access$300/807833722=([java.lang.Class, java.lang.String], java.lang.reflect.Field), <init>/-2126356317=([com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo, int, java.lang.reflect.Field, java.lang.reflect.Field], void)}
; {var2190=r12, var3988=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var720=r0, var485=$r1, var2589=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var48=r2, var868=$r3, var2883=$r4, var2643=$r5, var2508=r6, var2073=$r7, var1256=$r8, var931=$r9, var3526=r10, var2136=com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo, var2306=$r11, var136=$i0, var2763=java.lang.reflect.Field, var1094=$r14, var192=$r13}
; {r12=var2190, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var3988, r0=var720, $r1=var485, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var2589, r2=var48, $r3=var868, $r4=var2883, $r5=var2643, r6=var2508, $r7=var2073, $r8=var1256, $r9=var931, r10=var3526, com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo=var2136, $r11=var2306, $i0=var136, java.lang.reflect.Field=var2763, $r14=var1094, $r13=var192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r12 := @parameter0: java.lang.Class;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: java.lang.String getName()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String access$200(java.lang.String)>($r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case_");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: int getIndex()>();	$r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field access$300(java.lang.Class,java.lang.String)>(r12, r10);	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.reflect.Field access$300(java.lang.Class,java.lang.String)>(r12, r6);	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo: void <init>(int,java.lang.reflect.Field,java.lang.reflect.Field)>($i0, $r14, $r13);	return $r11
;block_num 1