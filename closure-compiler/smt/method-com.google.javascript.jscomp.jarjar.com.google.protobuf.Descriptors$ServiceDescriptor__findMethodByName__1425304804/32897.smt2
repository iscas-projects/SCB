(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var1387 0)
(declare-sort var694 0)
(declare-sort var470 0)
(declare-sort var417 0)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1958098248 (var2953) var694)
(declare-fun var694_access$1500/493210752 (var694) var470)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1958098248 (var2953) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var470 String) var417)
(declare-fun cast-from-var417-to-var1981 (var417) var1981)
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const var2185 var2953) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor 
(assert (not (= var2185 null-var2953)))
(declare-const var3113 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3113 null-String)))
(define-const var3309 var694 (file/-1958098248 var2185)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var1226 var470 (var694_access$1500/493210752 var3309)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var2211 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2211)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2211!1 String)
(assert (= var2211!1 ""))
(define-const var255 String (fullName/-1958098248 var2185)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String fullName> 
(assert true)
(define-const var3322 String (append/672562846 var2211!1 var255)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2211!2 String)
(assert (= var2211!2 (str.++ var2211!1 var255)))
(assert true)
(define-const var3343 String (append/-1166366385 var3322 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3322!1 String)
(assert (str.prefixof var3322 var3322!1))
(assert true)
(define-const var2892 String (append/672562846 var3343 var3113)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3343!1 String)
(assert (= var3343!1 (str.++ var3343 var3113)))
(assert true)
(define-const var520 String (toString/-2075883882 var2892)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2780 var417 (findSymbol/-746875982 var1226 var520)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var3868 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var3868 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1956 var1981 (cast-from-var417-to-var1981 var2780)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor) r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1958098248=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var694_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1958098248=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var417-to-var1981=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor)}
; {var2953=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor, var2185=r0, var3113=r5, var1387=null_type, var694=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3309=$r1, var470=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1226=$r9, var2211=$r2, var255=$r3, var3322=$r4, var3343=$r6, var2892=$r7, var520=$r8, var417=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2780=r10, var3868=$z0, var1981=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor, var1956=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor=var2953, r0=var2185, r5=var3113, null_type=var1387, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var694, $r1=var3309, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var470, $r9=var1226, $r2=var2211, $r3=var255, $r4=var3322, $r6=var3343, $r7=var2892, $r8=var520, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var417, r10=var2780, $z0=var3868, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor=var1981, $r11=var1956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor;	if $z0 == 0 goto return null;	$r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor) r10;	return $r11
;block_num 2