(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var631 0)
(declare-sort var1991 0)
(declare-sort var337 0)
(declare-sort var765 0)
(declare-sort var3213 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var337-init () var337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3213_toString/-285688898 (Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var337 String var1914) void)
(declare-fun cast-from-var1991-to-var1914 (var1991) var1914)
(declare-const null-String String)
(declare-const null-var1991 var1991)
(declare-const var765-useContextClassLoader Bool)
(declare-const var3804 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3804 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var630 var1991) ; Statement: $r2 := @caughtexception 
(assert (not (= var630 null-var1991)))
(define-const var407 var337 var337-init) ; Statement: $r3 = new java.lang.RuntimeException 
(define-const var2136 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2136)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2136!1 String)
(assert (= var2136!1 ""))
(assert true)
(define-const var2044 String (append/672562846 var2136!1 "$class: internal error, could not find class \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$class: internal error, could not find class \'") 
(declare-const var2136!2 String)
(assert (= var2136!2 (str.++ var2136!1 "$class: internal error, could not find class \u0027")))
(assert true)
(define-const var3105 String (append/672562846 var2044 var3804)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2044!1 String)
(assert (= var2044!1 (str.++ var2044 var3804)))
(assert true)
(define-const var1746 String (append/672562846 var3105 "\u0027 (Desc.useContextClassLoader: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (Desc.useContextClassLoader: ") 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 "\u0027 (Desc.useContextClassLoader: ")))
(define-const var3960 Bool var765-useContextClassLoader) ; Statement: $z0 = <org.apache.ibatis.javassist.runtime.Desc: boolean useContextClassLoader> 
(define-const var1851 String (var3213_toString/-285688898 var3960)) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.String toString(boolean)>($z0) 
(assert true)
(define-const var1474 String (append/672562846 var1746 var1851)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1746!1 String)
(assert (= var1746!1 (str.++ var1746 var1851)))
(assert true)
(define-const var3461 String (append/672562846 var1474 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1474!1 String)
(assert (= var1474!1 (str.++ var1474 ")")))
(assert true)
(define-const var411 String (toString/-2075883882 var3461)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var407 var411 (cast-from-var1991-to-var1914 var630))) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r2) 

(declare-const var407!1 var337)
(declare-const var411!1 String)
(declare-const var630!1 var1991)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var337-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3213_toString/-285688898=([boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1991-to-var1914=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var3804=r0, var631=null_type, var1991=java.lang.ClassNotFoundException, var630=$r2, var337=java.lang.RuntimeException, var407=$r3, var2136=$r4, var2044=$r5, var3105=$r6, var1746=$r8, var765=org.apache.ibatis.javassist.runtime.Desc, var3960=$z0, var3213=java.lang.Boolean, var1851=$r7, var1474=$r9, var3461=$r10, var411=$r11, var1914=java.lang.Throwable}
; {r0=var3804, null_type=var631, java.lang.ClassNotFoundException=var1991, $r2=var630, java.lang.RuntimeException=var337, $r3=var407, $r4=var2136, $r5=var2044, $r6=var3105, $r8=var1746, org.apache.ibatis.javassist.runtime.Desc=var765, $z0=var3960, java.lang.Boolean=var3213, $r7=var1851, $r9=var1474, $r10=var3461, $r11=var411, java.lang.Throwable=var1914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Boolean: java.lang.String toString(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 := @caughtexception;	$r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$class: internal error, could not find class \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (Desc.useContextClassLoader: ");	$z0 = <org.apache.ibatis.javassist.runtime.Desc: boolean useContextClassLoader>;	$r7 = staticinvoke <java.lang.Boolean: java.lang.String toString(boolean)>($z0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r2);	throw $r3
;block_num 2