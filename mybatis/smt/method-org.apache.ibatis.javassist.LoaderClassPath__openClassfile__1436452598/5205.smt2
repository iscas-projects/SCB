(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var907 0)
(declare-sort var3119 0)
(declare-sort var3816 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun clref/422152962 (var3199) var3119)
(declare-fun get/1227450990 (var3119) var3816)
(declare-fun cast-from-var3816-to-var2699 (var3816) var2699)
(declare-const null-var3199 var3199)
(declare-const null-String String)
(declare-const null-var2699 var2699)
(declare-const var2042 var3199) ; Statement: r6 := @this: org.apache.ibatis.javassist.LoaderClassPath 
(assert (not (= var2042 null-var3199)))
(declare-const var1509 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1509 null-String)))
(define-const var189 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var189)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var189!1 String)
(assert (= var189!1 ""))
(assert true)
(define-const var3183 String (replace/1524665721 var1509 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1141 String (append/672562846 var189!1 var3183)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var189!2 String)
(assert (= var189!2 (str.++ var189!1 var3183)))
(assert true)
(define-const var3284 String (append/672562846 var1141 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1141!1 String)
(assert (= var1141!1 (str.++ var1141 ".class")))
(assert true)
(define-const var1676 String (toString/-2075883882 var3284)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var959 var3119 (clref/422152962 var2042)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref> 
(assert true)
(define-const var2028 var3816 (get/1227450990 var959)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>() 
(define-const var53 var2699 (cast-from-var3816-to-var2699 var2028)) ; Statement: r9 = (java.lang.ClassLoader) $r8 
 ; Statement: if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5) 
(assert (not (not (= var53 null-var2699)))) ; Negate: Cond: r9 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), clref/422152962=([org.apache.ibatis.javassist.LoaderClassPath], java.lang.ref.Reference), get/1227450990=([java.lang.ref.Reference], java.lang.Object), cast-from-var3816-to-var2699=([java.lang.Object], java.lang.ClassLoader)}
; {var3199=org.apache.ibatis.javassist.LoaderClassPath, var2042=r6, var1509=r1, var907=null_type, var189=$r0, var3183=$r2, var1141=$r3, var3284=$r4, var1676=r5, var3119=java.lang.ref.Reference, var959=$r7, var3816=java.lang.Object, var2028=$r8, var2699=java.lang.ClassLoader, var53=r9}
; {org.apache.ibatis.javassist.LoaderClassPath=var3199, r6=var2042, r1=var1509, null_type=var907, $r0=var189, $r2=var3183, $r3=var1141, $r4=var3284, r5=var1676, java.lang.ref.Reference=var3119, $r7=var959, java.lang.Object=var3816, $r8=var2028, java.lang.ClassLoader=var2699, r9=var53}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.LoaderClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref>;	$r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>();	r9 = (java.lang.ClassLoader) $r8;	if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5);	return null
;block_num 2