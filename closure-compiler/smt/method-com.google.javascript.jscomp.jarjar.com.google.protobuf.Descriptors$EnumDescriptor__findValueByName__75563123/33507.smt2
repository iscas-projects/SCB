(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var802 0)
(declare-sort var2771 0)
(declare-sort var3942 0)
(declare-sort var1019 0)
(declare-sort var776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/2118672668 (var262) var2771)
(declare-fun var2771_access$1500/493210752 (var2771) var3942)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/2118672668 (var262) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var3942 String) var1019)
(declare-fun cast-from-var1019-to-var776 (var1019) var776)
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const var36 var262) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor 
(assert (not (= var36 null-var262)))
(declare-const var1423 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1423 null-String)))
(define-const var1286 var2771 (file/2118672668 var36)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var46 var3942 (var2771_access$1500/493210752 var1286)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var3153 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3153)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3153!1 String)
(assert (= var3153!1 ""))
(define-const var3124 String (fullName/2118672668 var36)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String fullName> 
(assert true)
(define-const var1973 String (append/672562846 var3153!1 var3124)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3153!2 String)
(assert (= var3153!2 (str.++ var3153!1 var3124)))
(assert true)
(define-const var2340 String (append/-1166366385 var1973 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1973!1 String)
(assert (str.prefixof var1973 var1973!1))
(assert true)
(define-const var3296 String (append/672562846 var2340 var1423)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2340!1 String)
(assert (= var2340!1 (str.++ var2340 var1423)))
(assert true)
(define-const var2665 String (toString/-2075883882 var3296)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var530 var1019 (findSymbol/-746875982 var46 var2665)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var237 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var237 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1885 var776 (cast-from-var1019-to-var776 var530)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor) r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {file/2118672668=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var2771_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/2118672668=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var1019-to-var776=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor)}
; {var262=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var36=r0, var1423=r5, var802=null_type, var2771=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1286=$r1, var3942=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var46=$r9, var3153=$r2, var3124=$r3, var1973=$r4, var2340=$r6, var3296=$r7, var2665=$r8, var1019=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var530=r10, var237=$z0, var776=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor, var1885=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var262, r0=var36, r5=var1423, null_type=var802, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var2771, $r1=var1286, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3942, $r9=var46, $r2=var3153, $r3=var3124, $r4=var1973, $r6=var2340, $r7=var3296, $r8=var2665, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var1019, r10=var530, $z0=var237, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor=var776, $r11=var1885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor;	if $z0 == 0 goto return null;	$r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor) r10;	return $r11
;block_num 2