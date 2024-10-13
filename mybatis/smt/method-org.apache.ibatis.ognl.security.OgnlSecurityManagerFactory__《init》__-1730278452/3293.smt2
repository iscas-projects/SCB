(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1104 0)
(declare-sort var1401 0)
(declare-sort var530 0)
(declare-sort var2304 0)
(declare-sort var562 0)
(declare-sort var1823 0)
(declare-sort var569 0)
(declare-sort var1977 0)
(declare-sort var2657 0)
(declare-sort var914 0)
(declare-sort var1414 0)
(declare-sort var2455 0)
(declare-sort var602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1104!class ClassObject)
(declare-const var914!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var1401)
(declare-fun <init>/190055814 (var530 var1401) void)
(declare-fun cast-from-var1104-to-var530 (var1104) var530)
(declare-fun var2304-init () var2304)
(declare-fun <init>/-800150441 (var2304) void)
(declare-fun newPermissionCollection/-542362839 (var2304) var562)
(declare-fun add/1325158696 (var562 var1823) void)
(declare-fun cast-from-var2304-to-var1823 (var2304) var1823)
(declare-fun var569-init () var569)
(declare-fun <init>/1828495323 (var569 var1977 var562) void)
(declare-fun getParent/1497717415 (var1401) var1401)
(declare-fun cast-from-var1104-to-var1401 (var1104) var1401)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResourceAsStream/269938975 (var1401 String) var1414)
(declare-fun var602_requireNonNull/-961817614 (var2455) var2455)
(declare-fun cast-from-var1414-to-var2455 (var1414) var2455)
(declare-fun cast-from-var2455-to-var1414 (var2455) var1414)
(declare-fun var1104_toByteArray/-1708475000 (var1414) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClass/332501361 (var1401 String (Array Int Int) Int Int var569) ClassObject)
(declare-fun ognlSecurityManagerClass/1405269963 (var1104) ClassObject)
(declare-const null-var1104 var1104)
(declare-const null-NullType var2657)
(declare-const null-var1977 var1977)
(declare-const null-String String)
(declare-const var41 var1104) ; Statement: r0 := @this: org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory 
(assert (not (= var41 null-var1104)))
(define-const var2606 ClassObject var1104!class) ; Statement: $r1 = class "Lorg/apache/ibatis/ognl/security/OgnlSecurityManagerFactory;" 
(assert true)
(define-const var1486 var1401 (getClassLoader/-563698447 var2606)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
;(assert (<init>/190055814 (cast-from-var1104-to-var530 var41) var1486)) ; Statement: specialinvoke r0.<java.security.SecureClassLoader: void <init>(java.lang.ClassLoader)>($r2) 

(declare-const var41!1 var1104)
(declare-const var1486!1 var1401)
(define-const var3672 var2304 var2304-init) ; Statement: $r3 = new java.security.AllPermission 
(assert true)
;(assert (<init>/-800150441 var3672)) ; Statement: specialinvoke $r3.<java.security.AllPermission: void <init>()>() 

(declare-const var3672!1 var2304)
(assert true)
(define-const var2392 var562 (newPermissionCollection/-542362839 var3672!1)) ; Statement: r4 = virtualinvoke $r3.<java.security.AllPermission: java.security.PermissionCollection newPermissionCollection()>() 
(define-const var2156 var2304 var2304-init) ; Statement: $r5 = new java.security.AllPermission 
(assert true)
;(assert (<init>/-800150441 var2156)) ; Statement: specialinvoke $r5.<java.security.AllPermission: void <init>()>() 

(declare-const var2156!1 var2304)
(assert true)
;(assert (add/1325158696 var2392 (cast-from-var2304-to-var1823 var2156!1))) ; Statement: virtualinvoke r4.<java.security.PermissionCollection: void add(java.security.Permission)>($r5) 

(declare-const var2392!1 var562)
(declare-const var2156!2 var2304)
(define-const var3051 var569 var569-init) ; Statement: $r6 = new java.security.ProtectionDomain 
(assert true)
;(assert (<init>/1828495323 var3051 null-var1977 var2392!1)) ; Statement: specialinvoke $r6.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection)>(null, r4) 

(declare-const var3051!1 var569)
(declare-const var1269 var2657)
(declare-const var2392!2 var562)
(assert true)
(define-const var3633 var1401 (getParent/1497717415 (cast-from-var1104-to-var1401 var41!1))) ; Statement: $r14 = virtualinvoke r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.ClassLoader getParent()>() 
(define-const var768 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var768)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var768!1 String)
(assert (= var768!1 ""))
(define-const var421 ClassObject var914!class) ; Statement: $r8 = class "Lorg/apache/ibatis/ognl/security/OgnlSecurityManager;" 
(assert true)
(define-const var2780 String (getName/-1958580599 var421)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var726 String (replace/1524665721 var2780 46 47)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2525 String (append/672562846 var768!1 var726)) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var768!2 String)
(assert (= var768!2 (str.++ var768!1 var726)))
(assert true)
(define-const var1103 String (append/672562846 var2525 ".class")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 ".class")))
(assert true)
(define-const var2018 String (toString/-2075883882 var1103)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1406 var1414 (getResourceAsStream/269938975 var3633 var2018)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r13) 
(define-const var1 var2455 (var602_requireNonNull/-961817614 (cast-from-var1414-to-var2455 var1406))) ; Statement: $r16 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r15) 
(define-const var3642 var1414 (cast-from-var2455-to-var1414 var1)) ; Statement: $r17 = (java.io.InputStream) $r16 
(define-const var3115 (Array Int Int) (var1104_toByteArray/-1708475000 var3642)) ; Statement: r18 = staticinvoke <org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: byte[] toByteArray(java.io.InputStream)>($r17) 
(define-const var1737 Int (getLength-Arr-Int-1 var3115)) ; Statement: $i0 = lengthof r18 
(assert true)
(define-const var3875 ClassObject (defineClass/332501361 (cast-from-var1104-to-var1401 var41!1) null-String var3115 0 var1737 var3051!1)) ; Statement: $r19 = virtualinvoke r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.Class defineClass(java.lang.String,byte[],int,int,java.security.ProtectionDomain)>(null, r18, 0, $i0, $r6) 
(declare-const var41!2 var1104)
(assert (not (= var41!2 null-var1104)))
(assert (= (ognlSecurityManagerClass/1405269963 var41!2) var3875)) ; Statement: r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.Class ognlSecurityManagerClass> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), <init>/190055814=([java.security.SecureClassLoader, java.lang.ClassLoader], void), cast-from-var1104-to-var530=([org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory], java.security.SecureClassLoader), var2304-init=([], java.security.AllPermission), <init>/-800150441=([java.security.AllPermission], void), newPermissionCollection/-542362839=([java.security.AllPermission], java.security.PermissionCollection), add/1325158696=([java.security.PermissionCollection, java.security.Permission], void), cast-from-var2304-to-var1823=([java.security.AllPermission], java.security.Permission), var569-init=([], java.security.ProtectionDomain), <init>/1828495323=([java.security.ProtectionDomain, java.security.CodeSource, java.security.PermissionCollection], void), getParent/1497717415=([java.lang.ClassLoader], java.lang.ClassLoader), cast-from-var1104-to-var1401=([org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResourceAsStream/269938975=([java.lang.ClassLoader, java.lang.String], java.io.InputStream), var602_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var1414-to-var2455=([java.io.InputStream], java.lang.Object), cast-from-var2455-to-var1414=([java.lang.Object], java.io.InputStream), var1104_toByteArray/-1708475000=([java.io.InputStream], byte[]), getLength-Arr-Int-1=([byte[]], int), defineClass/332501361=([java.lang.ClassLoader, java.lang.String, byte[], int, int, java.security.ProtectionDomain], java.lang.Class), ognlSecurityManagerClass/1405269963=([org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory], java.lang.Class)}
; {var1104=org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory, var41=r0, var2606=$r1, var1401=java.lang.ClassLoader, var1486=$r2, var530=java.security.SecureClassLoader, var2304=java.security.AllPermission, var3672=$r3, var562=java.security.PermissionCollection, var2392=r4, var2156=$r5, var1823=java.security.Permission, var569=java.security.ProtectionDomain, var3051=$r6, var1977=java.security.CodeSource, var1269=null, var2657=null_type, var3633=$r14, var768=$r7, var914=org.apache.ibatis.ognl.security.OgnlSecurityManager, var421=$r8, var2780=$r9, var726=$r10, var2525=$r11, var1103=$r12, var2018=$r13, var1414=java.io.InputStream, var1406=$r15, var2455=java.lang.Object, var602=java.util.Objects, var1=$r16, var3642=$r17, var3115=r18, var1737=$i0, var3875=$r19}
; {org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory=var1104, r0=var41, $r1=var2606, java.lang.ClassLoader=var1401, $r2=var1486, java.security.SecureClassLoader=var530, java.security.AllPermission=var2304, $r3=var3672, java.security.PermissionCollection=var562, r4=var2392, $r5=var2156, java.security.Permission=var1823, java.security.ProtectionDomain=var569, $r6=var3051, java.security.CodeSource=var1977, null=var1269, null_type=var2657, $r14=var3633, $r7=var768, org.apache.ibatis.ognl.security.OgnlSecurityManager=var914, $r8=var421, $r9=var2780, $r10=var726, $r11=var2525, $r12=var1103, $r13=var2018, java.io.InputStream=var1414, $r15=var1406, java.lang.Object=var2455, java.util.Objects=var602, $r16=var1, $r17=var3642, r18=var3115, $i0=var1737, $r19=var3875}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory;	$r1 = class "Lorg/apache/ibatis/ognl/security/OgnlSecurityManagerFactory;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	specialinvoke r0.<java.security.SecureClassLoader: void <init>(java.lang.ClassLoader)>($r2);	$r3 = new java.security.AllPermission;	specialinvoke $r3.<java.security.AllPermission: void <init>()>();	r4 = virtualinvoke $r3.<java.security.AllPermission: java.security.PermissionCollection newPermissionCollection()>();	$r5 = new java.security.AllPermission;	specialinvoke $r5.<java.security.AllPermission: void <init>()>();	virtualinvoke r4.<java.security.PermissionCollection: void add(java.security.Permission)>($r5);	$r6 = new java.security.ProtectionDomain;	specialinvoke $r6.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection)>(null, r4);	$r14 = virtualinvoke r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.ClassLoader getParent()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = class "Lorg/apache/ibatis/ognl/security/OgnlSecurityManager;";	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r13);	$r16 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r15);	$r17 = (java.io.InputStream) $r16;	r18 = staticinvoke <org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: byte[] toByteArray(java.io.InputStream)>($r17);	$i0 = lengthof r18;	$r19 = virtualinvoke r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.Class defineClass(java.lang.String,byte[],int,int,java.security.ProtectionDomain)>(null, r18, 0, $i0, $r6);	r0.<org.apache.ibatis.ognl.security.OgnlSecurityManagerFactory: java.lang.Class ognlSecurityManagerClass> = $r19;	return
;block_num 1