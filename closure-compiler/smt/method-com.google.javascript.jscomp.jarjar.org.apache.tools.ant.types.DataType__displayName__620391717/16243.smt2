(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3824 0)
(declare-sort var1813 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClassLoader/-563698447 (ClassObject) var1813)
(declare-fun append/-1031950772 (String var3176) String)
(declare-fun cast-from-var1813-to-var3176 (var1813) var3176)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3824 var3824)
(declare-const null-ClassObject ClassObject)
(declare-const var3 var3824) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType 
(assert (not (= var3 null-var3824)))
(declare-const var345 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var345 null-ClassObject)))
(define-const var3772 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3772)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3772!1 String)
(assert (= var3772!1 ""))
(assert true)
(define-const var916 String (getName/-1958580599 var345)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3762 String (append/672562846 var3772!1 var916)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3772!2 String)
(assert (= var3772!2 (str.++ var3772!1 var916)))
(assert true)
(define-const var2767 String (append/672562846 var3762 " (loaded via ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (loaded via ") 
(declare-const var3762!1 String)
(assert (= var3762!1 (str.++ var3762 " (loaded via ")))
(assert true)
(define-const var9 var1813 (getClassLoader/-563698447 var345)) ; Statement: $r4 = virtualinvoke r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var1251 String (append/-1031950772 var2767 (cast-from-var1813-to-var3176 var9))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2767!1 String)
(assert (str.prefixof var2767 var2767!1))
(assert true)
(define-const var2188 String (append/672562846 var1251 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1251!1 String)
(assert (= var1251!1 (str.++ var1251 ")")))
(assert true)
(define-const var2896 String (toString/-2075883882 var2188)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1813-to-var3176=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3824=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var3=r9, var345=r1, var3772=$r0, var916=$r2, var3762=$r3, var2767=$r5, var1813=java.lang.ClassLoader, var9=$r4, var3176=java.lang.Object, var1251=$r6, var2188=$r7, var2896=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var3824, r9=var3, r1=var345, $r0=var3772, $r2=var916, $r3=var3762, $r5=var2767, java.lang.ClassLoader=var1813, $r4=var9, java.lang.Object=var3176, $r6=var1251, $r7=var2188, $r8=var2896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType;	r1 := @parameter0: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (loaded via ");	$r4 = virtualinvoke r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1