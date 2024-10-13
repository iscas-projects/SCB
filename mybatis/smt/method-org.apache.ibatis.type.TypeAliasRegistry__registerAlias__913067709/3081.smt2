(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var1934 0)
(declare-sort var385 0)
(declare-sort var3522 0)
(declare-sort var2997 0)
(declare-sort var2897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3522-init () var3522)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2997) String)
(declare-fun cast-from-var385-to-var2997 (var385) var2997)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1017745449 (var3522 String var2897) void)
(declare-fun cast-from-var385-to-var2897 (var385) var2897)
(declare-const null-var966 var966)
(declare-const null-String String)
(declare-const null-var385 var385)
(declare-const var1070 var966) ; Statement: r0 := @this: org.apache.ibatis.type.TypeAliasRegistry 
(assert (not (= var1070 null-var966)))
(declare-const var670 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var670 null-String)))
(declare-const var752 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var752 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var399 var385) ; Statement: $r4 := @caughtexception 
(assert (not (= var399 null-var385)))
(define-const var2922 var3522 var3522-init) ; Statement: $r5 = new org.apache.ibatis.type.TypeException 
(define-const var1453 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1453)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1453!1 String)
(assert (= var1453!1 ""))
(assert true)
(define-const var1062 String (append/672562846 var1453!1 "Error registering type alias ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering type alias ") 
(declare-const var1453!2 String)
(assert (= var1453!2 (str.++ var1453!1 "Error registering type alias ")))
(assert true)
(define-const var927 String (append/672562846 var1062 var670)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 var670)))
(assert true)
(define-const var21 String (append/672562846 var927 " for ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var927!1 String)
(assert (= var927!1 (str.++ var927 " for ")))
(assert true)
(define-const var254 String (append/672562846 var21 var752)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var21!1 String)
(assert (= var21!1 (str.++ var21 var752)))
(assert true)
(define-const var547 String (append/672562846 var254 ". Cause: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ") 
(declare-const var254!1 String)
(assert (= var254!1 (str.++ var254 ". Cause: ")))
(assert true)
(define-const var32 String (append/-1031950772 var547 (cast-from-var385-to-var2997 var399))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var547!1 String)
(assert (str.prefixof var547 var547!1))
(assert true)
(define-const var986 String (toString/-2075883882 var32)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1017745449 var2922 var986 (cast-from-var385-to-var2897 var399))) ; Statement: specialinvoke $r5.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4) 

(declare-const var2922!1 var3522)
(declare-const var986!1 String)
(declare-const var399!1 var385)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3522-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var385-to-var2997=([java.lang.ClassNotFoundException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1017745449=([org.apache.ibatis.type.TypeException, java.lang.String, java.lang.Throwable], void), cast-from-var385-to-var2897=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var966=org.apache.ibatis.type.TypeAliasRegistry, var1070=r0, var670=r1, var1934=null_type, var752=r2, var385=java.lang.ClassNotFoundException, var399=$r4, var3522=org.apache.ibatis.type.TypeException, var2922=$r5, var1453=$r6, var1062=$r7, var927=$r8, var21=$r9, var254=$r10, var547=$r11, var2997=java.lang.Object, var32=$r12, var986=$r13, var2897=java.lang.Throwable}
; {org.apache.ibatis.type.TypeAliasRegistry=var966, r0=var1070, r1=var670, null_type=var1934, r2=var752, java.lang.ClassNotFoundException=var385, $r4=var399, org.apache.ibatis.type.TypeException=var3522, $r5=var2922, $r6=var1453, $r7=var1062, $r8=var927, $r9=var21, $r10=var254, $r11=var547, java.lang.Object=var2997, $r12=var32, $r13=var986, java.lang.Throwable=var2897}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.type.TypeAliasRegistry;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r4 := @caughtexception;	$r5 = new org.apache.ibatis.type.TypeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering type alias ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4);	throw $r5
;block_num 2