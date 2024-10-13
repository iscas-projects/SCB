(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2844 0)
(declare-sort var2589 0)
(declare-sort var2356 0)
(declare-sort var3539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAssignableFrom/-1149007002 (var2589 var2589) Bool)
(declare-fun var2356-init () var2356)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3539) String)
(declare-fun cast-from-var2589-to-var3539 (var2589) var3539)
(declare-fun lastPos/-20364844 (var2844) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2356 String) void)
(declare-const null-var2844 var2844)
(declare-const null-var2589 var2589)
(declare-const var918 var2844) ; Statement: r8 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var918 null-var2844)))
(declare-const var910 var2589) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var910 null-var2589)))
(declare-const var1974 var2589) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var1974 null-var2589)))
(assert true)
(define-const var1539 Bool (isAssignableFrom/-1149007002 var910 var1974)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Type: boolean isAssignableFrom(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1539 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2295 var2356 var2356-init) ; Statement: $r2 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var1848 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1848)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1848!1 String)
(assert (= var1848!1 ""))
(assert true)
(define-const var3206 String (append/672562846 var1848!1 "Expected type: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected type: ") 
(declare-const var1848!2 String)
(assert (= var1848!2 (str.++ var1848!1 "Expected type: ")))
(assert true)
(define-const var3648 String (append/-1031950772 var3206 (cast-from-var2589-to-var3539 var910))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3206!1 String)
(assert (str.prefixof var3206 var3206!1))
(assert true)
(define-const var2627 String (append/672562846 var3648 " Got: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Got: ") 
(declare-const var3648!1 String)
(assert (= var3648!1 (str.++ var3648 " Got: ")))
(assert true)
(define-const var1511 String (append/-1031950772 var2627 (cast-from-var2589-to-var3539 var1974))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2627!1 String)
(assert (str.prefixof var2627 var2627!1))
(assert true)
(define-const var1042 String (append/672562846 var1511 " [pos = ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [pos = ") 
(declare-const var1511!1 String)
(assert (= var1511!1 (str.++ var1511 " [pos = ")))
(define-const var3532 Int (lastPos/-20364844 var918)) ; Statement: $i0 = r8.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var567 String (append/-1001720160 var1042 var3532)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1042!1 String)
(assert (str.prefixof var1042 var1042!1))
(assert true)
(define-const var1499 String (append/672562846 var567 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 "]")))
(assert true)
(define-const var2921 String (toString/-2075883882 var1499)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2295 var2921)) ; Statement: specialinvoke $r2.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r12) 

(declare-const var2295!1 var2356)
(declare-const var2921!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1149007002=([org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Type], boolean), var2356-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2589-to-var3539=([org.apache.ibatis.javassist.bytecode.analysis.Type], java.lang.Object), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var2844=org.apache.ibatis.javassist.bytecode.analysis.Executor, var918=r8, var2589=org.apache.ibatis.javassist.bytecode.analysis.Type, var910=r0, var1974=r1, var1539=$z0, var2356=org.apache.ibatis.javassist.bytecode.BadBytecode, var2295=$r2, var1848=$r3, var3206=$r4, var3539=java.lang.Object, var3648=$r5, var2627=$r6, var1511=$r7, var1042=$r9, var3532=$i0, var567=$r10, var1499=$r11, var2921=$r12}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var2844, r8=var918, org.apache.ibatis.javassist.bytecode.analysis.Type=var2589, r0=var910, r1=var1974, $z0=var1539, org.apache.ibatis.javassist.bytecode.BadBytecode=var2356, $r2=var2295, $r3=var1848, $r4=var3206, java.lang.Object=var3539, $r5=var3648, $r6=var2627, $r7=var1511, $r9=var1042, $i0=var3532, $r10=var567, $r11=var1499, $r12=var2921}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Type;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Type: boolean isAssignableFrom(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r1);	if $z0 != 0 goto return;	$r2 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected type: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Got: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [pos = ");	$i0 = r8.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r12);	throw $r2
;block_num 2