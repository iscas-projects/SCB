(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var320 0)
(declare-sort var2969 0)
(declare-sort var842 0)
(declare-sort var487 0)
(declare-sort var3289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun clref/422152962 (var2649) var2969)
(declare-fun get/1227450990 (var2969) var842)
(declare-fun cast-from-var842-to-var487 (var842) var487)
(declare-fun getResource/282459787 (var487 String) var3289)
(declare-const null-var2649 var2649)
(declare-const null-String String)
(declare-const null-var487 var487)
(declare-const var1752 var2649) ; Statement: r6 := @this: org.apache.ibatis.javassist.LoaderClassPath 
(assert (not (= var1752 null-var2649)))
(declare-const var3644 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3644 null-String)))
(define-const var2799 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2799)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2799!1 String)
(assert (= var2799!1 ""))
(assert true)
(define-const var181 String (replace/1524665721 var3644 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2356 String (append/672562846 var2799!1 var181)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2799!2 String)
(assert (= var2799!2 (str.++ var2799!1 var181)))
(assert true)
(define-const var3398 String (append/672562846 var2356 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2356!1 String)
(assert (= var2356!1 (str.++ var2356 ".class")))
(assert true)
(define-const var1151 String (toString/-2075883882 var3398)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var243 var2969 (clref/422152962 var1752)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref> 
(assert true)
(define-const var1105 var842 (get/1227450990 var243)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>() 
(define-const var3976 var487 (cast-from-var842-to-var487 var1105)) ; Statement: r9 = (java.lang.ClassLoader) $r8 
 ; Statement: if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5) 
(assert (not (= var3976 null-var487))) ; Cond: r9 != null 
(assert true)
(define-const var3973 var3289 (getResource/282459787 var3976 var1151)) ; Statement: r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5) 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), clref/422152962=([org.apache.ibatis.javassist.LoaderClassPath], java.lang.ref.Reference), get/1227450990=([java.lang.ref.Reference], java.lang.Object), cast-from-var842-to-var487=([java.lang.Object], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL)}
; {var2649=org.apache.ibatis.javassist.LoaderClassPath, var1752=r6, var3644=r1, var320=null_type, var2799=$r0, var181=$r2, var2356=$r3, var3398=$r4, var1151=r5, var2969=java.lang.ref.Reference, var243=$r7, var842=java.lang.Object, var1105=$r8, var487=java.lang.ClassLoader, var3976=r9, var3289=java.net.URL, var3973=r10}
; {org.apache.ibatis.javassist.LoaderClassPath=var2649, r6=var1752, r1=var3644, null_type=var320, $r0=var2799, $r2=var181, $r3=var2356, $r4=var3398, r5=var1151, java.lang.ref.Reference=var2969, $r7=var243, java.lang.Object=var842, $r8=var1105, java.lang.ClassLoader=var487, r9=var3976, java.net.URL=var3289, r10=var3973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.LoaderClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref>;	$r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>();	r9 = (java.lang.ClassLoader) $r8;	if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5);	r10 = virtualinvoke r9.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5);	return r10
;block_num 2