(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3018 0)
(declare-sort var2512 0)
(declare-sort var3039 0)
(declare-sort var3973 0)
(declare-sort var2279 0)
(declare-sort var3270 0)
(declare-sort var1508 0)
(declare-sort var3117 0)
(declare-sort var1889 0)
(declare-sort var3564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-287631587 (var3018) var3039)
(declare-fun val$bytes/-1667336560 (var3039) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3973-init () var3973)
(declare-fun var2279-init () var2279)
(declare-fun <init>/-740583468 (var2279 var1508 (Array Int var3270)) void)
(declare-fun var3117-init () var3117)
(declare-fun <init>/169859851 (var3117) void)
(declare-fun <init>/1828495323 (var3973 var2279 var1889) void)
(declare-fun cast-from-var3117-to-var1889 (var3117) var1889)
(declare-fun defineClass/332501361 (var3564 String (Array Int Int) Int Int var3973) ClassObject)
(declare-fun cast-from-var3018-to-var3564 (var3018) var3564)
(declare-const null-var3018 var3018)
(declare-const null-String String)
(declare-const null-__Array__Int__var3270__ (Array Int var3270))
(declare-const null-NullType var2512)
(declare-const null-var1508 var1508)
(declare-const var217 var3018) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1 
(assert (not (= var217 null-var3018)))
(declare-const var1333 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1333 null-String)))
(assert true)
(define-const var3603 Bool (= var1333 "NoPermissionsInvoker")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("NoPermissionsInvoker") 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.ClassNotFoundException 
(assert (not (= (ite var3603 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var671 var3039 (this$0/-287631587 var217)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1 this$0> 
(define-const var2540 (Array Int Int) (val$bytes/-1667336560 var671)) ; Statement: $r9 = $r3.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1: byte[] val$bytes> 
(define-const var3785 var3039 (this$0/-287631587 var217)) ; Statement: $r4 = r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1 this$0> 
(define-const var3793 (Array Int Int) (val$bytes/-1667336560 var3785)) ; Statement: $r5 = $r4.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1: byte[] val$bytes> 
(define-const var1093 Int (getLength-Arr-Int-1 var3793)) ; Statement: $i0 = lengthof $r5 
(define-const var2715 var3973 var3973-init) ; Statement: $r6 = new java.security.ProtectionDomain 
(define-const var1287 var2279 var2279-init) ; Statement: $r7 = new java.security.CodeSource 
(define-const var3160 (Array Int var3270) null-__Array__Int__var3270__) ; Statement: $r8 = (java.security.CodeSigner[]) null 
(assert true)
;(assert (<init>/-740583468 var1287 null-var1508 var3160)) ; Statement: specialinvoke $r7.<java.security.CodeSource: void <init>(java.net.URL,java.security.CodeSigner[])>(null, $r8) 

(declare-const var1287!1 var2279)
(declare-const var3747 var2512)
(declare-const var3160!1 (Array Int var3270))
(define-const var2493 var3117 var3117-init) ; Statement: $r10 = new java.security.Permissions 
(assert true)
;(assert (<init>/169859851 var2493)) ; Statement: specialinvoke $r10.<java.security.Permissions: void <init>()>() 

(declare-const var2493!1 var3117)
(assert true)
;(assert (<init>/1828495323 var2715 var1287!1 (cast-from-var3117-to-var1889 var2493!1))) ; Statement: specialinvoke $r6.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection)>($r7, $r10) 

(declare-const var2715!1 var3973)
(declare-const var1287!2 var2279)
(declare-const var2493!2 var3117)
(assert true)
(define-const var2858 ClassObject (defineClass/332501361 (cast-from-var3018-to-var3564 var217) var1333 var2540 0 var1093 var2715!1)) ; Statement: $r11 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: java.lang.Class defineClass(java.lang.String,byte[],int,int,java.security.ProtectionDomain)>(r0, $r9, 0, $i0, $r6) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-287631587=([jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1], jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1), val$bytes/-1667336560=([jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1], byte[]), getLength-Arr-Int-1=([byte[]], int), var3973-init=([], java.security.ProtectionDomain), var2279-init=([], java.security.CodeSource), <init>/-740583468=([java.security.CodeSource, java.net.URL, java.security.CodeSigner[]], void), var3117-init=([], java.security.Permissions), <init>/169859851=([java.security.Permissions], void), <init>/1828495323=([java.security.ProtectionDomain, java.security.CodeSource, java.security.PermissionCollection], void), cast-from-var3117-to-var1889=([java.security.Permissions], java.security.PermissionCollection), defineClass/332501361=([java.lang.ClassLoader, java.lang.String, byte[], int, int, java.security.ProtectionDomain], java.lang.Class), cast-from-var3018-to-var3564=([jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1], java.lang.ClassLoader)}
; {var3018=jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1, var217=r2, var1333=r0, var2512=null_type, var3603=$z0, var3039=jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1, var671=$r3, var2540=$r9, var3785=$r4, var3793=$r5, var1093=$i0, var3973=java.security.ProtectionDomain, var2715=$r6, var2279=java.security.CodeSource, var1287=$r7, var3270=java.security.CodeSigner, var3160=$r8, var1508=java.net.URL, var3747=null, var3117=java.security.Permissions, var2493=$r10, var1889=java.security.PermissionCollection, var3564=java.lang.ClassLoader, var2858=$r11}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1=var3018, r2=var217, r0=var1333, null_type=var2512, $z0=var3603, jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1=var3039, $r3=var671, $r9=var2540, $r4=var3785, $r5=var3793, $i0=var1093, java.security.ProtectionDomain=var3973, $r6=var2715, java.security.CodeSource=var2279, $r7=var1287, java.security.CodeSigner=var3270, $r8=var3160, java.net.URL=var1508, null=var3747, java.security.Permissions=var3117, $r10=var2493, java.security.PermissionCollection=var1889, java.lang.ClassLoader=var3564, $r11=var2858}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("NoPermissionsInvoker");	if $z0 == 0 goto $r1 = new java.lang.ClassNotFoundException;	$r3 = r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1 this$0>;	$r9 = $r3.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1: byte[] val$bytes>;	$r4 = r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1 this$0>;	$r5 = $r4.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1: byte[] val$bytes>;	$i0 = lengthof $r5;	$r6 = new java.security.ProtectionDomain;	$r7 = new java.security.CodeSource;	$r8 = (java.security.CodeSigner[]) null;	specialinvoke $r7.<java.security.CodeSource: void <init>(java.net.URL,java.security.CodeSigner[])>(null, $r8);	$r10 = new java.security.Permissions;	specialinvoke $r10.<java.security.Permissions: void <init>()>();	specialinvoke $r6.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection)>($r7, $r10);	$r11 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1: java.lang.Class defineClass(java.lang.String,byte[],int,int,java.security.ProtectionDomain)>(r0, $r9, 0, $i0, $r6);	return $r11
;block_num 2