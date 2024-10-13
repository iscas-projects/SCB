(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var130 0)
(declare-sort var2818 0)
(declare-sort var593 0)
(declare-sort var872 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun clref/422152962 (var130) var593)
(declare-fun get/1227450990 (var593) var872)
(declare-fun cast-from-var872-to-var677 (var872) var677)
(declare-const null-var130 var130)
(declare-const null-String String)
(declare-const null-var677 var677)
(declare-const var3786 var130) ; Statement: r6 := @this: org.apache.ibatis.javassist.LoaderClassPath 
(assert (not (= var3786 null-var130)))
(declare-const var2187 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2187 null-String)))
(define-const var3047 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3047)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3047!1 String)
(assert (= var3047!1 ""))
(assert true)
(define-const var193 String (replace/1524665721 var2187 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1965 String (append/672562846 var3047!1 var193)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3047!2 String)
(assert (= var3047!2 (str.++ var3047!1 var193)))
(assert true)
(define-const var922 String (append/672562846 var1965 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 ".class")))
(assert true)
(define-const var1743 String (toString/-2075883882 var922)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1490 var593 (clref/422152962 var3786)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref> 
(assert true)
(define-const var2906 var872 (get/1227450990 var1490)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>() 
(define-const var733 var677 (cast-from-var872-to-var677 var2906)) ; Statement: r9 = (java.lang.ClassLoader) $r8 
 ; Statement: if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5) 
(assert (not (not (= var733 null-var677)))) ; Negate: Cond: r9 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), clref/422152962=([org.apache.ibatis.javassist.LoaderClassPath], java.lang.ref.Reference), get/1227450990=([java.lang.ref.Reference], java.lang.Object), cast-from-var872-to-var677=([java.lang.Object], java.lang.ClassLoader)}
; {var130=org.apache.ibatis.javassist.LoaderClassPath, var3786=r6, var2187=r1, var2818=null_type, var3047=$r0, var193=$r2, var1965=$r3, var922=$r4, var1743=r5, var593=java.lang.ref.Reference, var1490=$r7, var872=java.lang.Object, var2906=$r8, var677=java.lang.ClassLoader, var733=r9}
; {org.apache.ibatis.javassist.LoaderClassPath=var130, r6=var3786, r1=var2187, null_type=var2818, $r0=var3047, $r2=var193, $r3=var1965, $r4=var922, r5=var1743, java.lang.ref.Reference=var593, $r7=var1490, java.lang.Object=var872, $r8=var2906, java.lang.ClassLoader=var677, r9=var733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.LoaderClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref>;	$r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>();	r9 = (java.lang.ClassLoader) $r8;	if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5);	return null
;block_num 2