(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3538 0)
(declare-sort var302 0)
(declare-sort var3798 0)
(declare-sort var483 0)
(declare-sort var3883 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var302) void)
(declare-fun cast-from-var3538-to-var302 (var3538) var302)
(declare-fun var483-init () var483)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3883_toString/-285688898 (Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var483 String var1801) void)
(declare-fun cast-from-var3798-to-var1801 (var3798) var1801)
(declare-const null-var3538 var3538)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3798 var3798)
(declare-const var3538-useContextClassLoader Bool)
(declare-const var3174 var3538) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject 
(assert (not (= var3174 null-var3538)))
(declare-const var373 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var373 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3538-to-var302 var3174))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3174!1 var3538)
(define-const var2669 String (select var373 0)) ; Statement: $r2 = r1[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var657 var3798) ; Statement: $r6 := @caughtexception 
(assert (not (= var657 null-var3798)))
(define-const var2502 var483 var483-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var2371 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2371)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2371!1 String)
(assert (= var2371!1 ""))
(assert true)
(define-const var1128 String (append/672562846 var2371!1 "not found: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found: ") 
(declare-const var2371!2 String)
(assert (= var2371!2 (str.++ var2371!1 "not found: ")))
(define-const var1687 String (select var373 0)) ; Statement: $r9 = r1[0] 
(assert true)
(define-const var57 String (append/672562846 var1128 var1687)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1128!1 String)
(assert (= var1128!1 (str.++ var1128 var1687)))
(assert true)
(define-const var2583 String (append/672562846 var57 ", useContextClassLoader: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", useContextClassLoader: ") 
(declare-const var57!1 String)
(assert (= var57!1 (str.++ var57 ", useContextClassLoader: ")))
(define-const var221 Bool var3538-useContextClassLoader) ; Statement: $z0 = <org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: boolean useContextClassLoader> 
(define-const var1066 String (var3883_toString/-285688898 var221)) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.String toString(boolean)>($z0) 
(assert true)
(define-const var3374 String (append/672562846 var2583 var1066)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2583!1 String)
(assert (= var2583!1 (str.++ var2583 var1066)))
(assert true)
(define-const var218 String (toString/-2075883882 var3374)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2502 var218 (cast-from-var3798-to-var1801 var657))) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r6) 

(declare-const var2502!1 var483)
(declare-const var218!1 String)
(declare-const var657!1 var3798)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3538-to-var302=([org.apache.ibatis.javassist.tools.reflect.ClassMetaobject], java.lang.Object), var483-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3883_toString/-285688898=([boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3798-to-var1801=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var3538=org.apache.ibatis.javassist.tools.reflect.ClassMetaobject, var3174=r0, var373=r1, var302=java.lang.Object, var2669=$r2, var3798=java.lang.ClassNotFoundException, var657=$r6, var483=java.lang.RuntimeException, var2502=$r7, var2371=$r8, var1128=$r10, var1687=$r9, var57=$r11, var2583=$r13, var221=$z0, var3883=java.lang.Boolean, var1066=$r12, var3374=$r14, var218=$r15, var1801=java.lang.Throwable}
; {org.apache.ibatis.javassist.tools.reflect.ClassMetaobject=var3538, r0=var3174, r1=var373, java.lang.Object=var302, $r2=var2669, java.lang.ClassNotFoundException=var3798, $r6=var657, java.lang.RuntimeException=var483, $r7=var2502, $r8=var2371, $r10=var1128, $r9=var1687, $r11=var57, $r13=var2583, $z0=var221, java.lang.Boolean=var3883, $r12=var1066, $r14=var3374, $r15=var218, java.lang.Throwable=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Boolean: java.lang.String toString(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject;	r1 := @parameter0: java.lang.String[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = r1[0];	$r6 := @caughtexception;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found: ");	$r9 = r1[0];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", useContextClassLoader: ");	$z0 = <org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: boolean useContextClassLoader>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.String toString(boolean)>($z0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r6);	throw $r7
;block_num 2