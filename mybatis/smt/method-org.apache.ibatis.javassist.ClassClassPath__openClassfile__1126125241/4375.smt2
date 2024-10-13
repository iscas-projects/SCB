(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3194 0)
(declare-sort var2802 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun thisClass/-1796861939 (var3194) ClassObject)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var2535)
(declare-const null-var3194 var3194)
(declare-const null-String String)
(declare-const var2988 var3194) ; Statement: r7 := @this: org.apache.ibatis.javassist.ClassClassPath 
(assert (not (= var2988 null-var3194)))
(declare-const var962 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var962 null-String)))
(define-const var1150 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1150)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1150!1 String)
(assert (= var1150!1 ""))
(assert true)
(define-const var2865 String (append/-1166366385 var1150!1 47)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var1150!2 String)
(assert (str.prefixof var1150!1 var1150!2))
(assert true)
(define-const var1695 String (replace/1524665721 var962 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2495 String (append/672562846 var2865 var1695)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2865!1 String)
(assert (= var2865!1 (str.++ var2865 var1695)))
(assert true)
(define-const var3566 String (append/672562846 var2495 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2495!1 String)
(assert (= var2495!1 (str.++ var2495 ".class")))
(assert true)
(define-const var1614 String (toString/-2075883882 var3566)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var60 ClassObject (thisClass/-1796861939 var2988)) ; Statement: $r8 = r7.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass> 
(assert true)
(define-const var3698 var2535 (getResourceAsStream/2018191724 var60 var1614)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>(r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), thisClass/-1796861939=([org.apache.ibatis.javassist.ClassClassPath], java.lang.Class), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream)}
; {var3194=org.apache.ibatis.javassist.ClassClassPath, var2988=r7, var962=r1, var2802=null_type, var1150=$r0, var2865=$r3, var1695=$r2, var2495=$r4, var3566=$r5, var1614=r6, var60=$r8, var2535=java.io.InputStream, var3698=$r9}
; {org.apache.ibatis.javassist.ClassClassPath=var3194, r7=var2988, r1=var962, null_type=var2802, $r0=var1150, $r3=var2865, $r2=var1695, $r4=var2495, $r5=var3566, r6=var1614, $r8=var60, java.io.InputStream=var2535, $r9=var3698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.javassist.ClassClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>(r6);	return $r9
;block_num 1