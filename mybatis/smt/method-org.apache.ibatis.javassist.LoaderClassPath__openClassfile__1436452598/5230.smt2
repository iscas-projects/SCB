(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var183 0)
(declare-sort var1985 0)
(declare-sort var382 0)
(declare-sort var1069 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun clref/422152962 (var898) var1985)
(declare-fun get/1227450990 (var1985) var382)
(declare-fun cast-from-var382-to-var1069 (var382) var1069)
(declare-fun getResourceAsStream/269938975 (var1069 String) var3258)
(declare-const null-var898 var898)
(declare-const null-String String)
(declare-const null-var1069 var1069)
(declare-const var1689 var898) ; Statement: r6 := @this: org.apache.ibatis.javassist.LoaderClassPath 
(assert (not (= var1689 null-var898)))
(declare-const var3342 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3342 null-String)))
(define-const var1467 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1467)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1467!1 String)
(assert (= var1467!1 ""))
(assert true)
(define-const var81 String (replace/1524665721 var3342 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3122 String (append/672562846 var1467!1 var81)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1467!2 String)
(assert (= var1467!2 (str.++ var1467!1 var81)))
(assert true)
(define-const var3756 String (append/672562846 var3122 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3122!1 String)
(assert (= var3122!1 (str.++ var3122 ".class")))
(assert true)
(define-const var1214 String (toString/-2075883882 var3756)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var800 var1985 (clref/422152962 var1689)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref> 
(assert true)
(define-const var268 var382 (get/1227450990 var800)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>() 
(define-const var2171 var1069 (cast-from-var382-to-var1069 var268)) ; Statement: r9 = (java.lang.ClassLoader) $r8 
 ; Statement: if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5) 
(assert (not (= var2171 null-var1069))) ; Cond: r9 != null 
(assert true)
(define-const var1541 var3258 (getResourceAsStream/269938975 var2171 var1214)) ; Statement: r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5) 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), clref/422152962=([org.apache.ibatis.javassist.LoaderClassPath], java.lang.ref.Reference), get/1227450990=([java.lang.ref.Reference], java.lang.Object), cast-from-var382-to-var1069=([java.lang.Object], java.lang.ClassLoader), getResourceAsStream/269938975=([java.lang.ClassLoader, java.lang.String], java.io.InputStream)}
; {var898=org.apache.ibatis.javassist.LoaderClassPath, var1689=r6, var3342=r1, var183=null_type, var1467=$r0, var81=$r2, var3122=$r3, var3756=$r4, var1214=r5, var1985=java.lang.ref.Reference, var800=$r7, var382=java.lang.Object, var268=$r8, var1069=java.lang.ClassLoader, var2171=r9, var3258=java.io.InputStream, var1541=r10}
; {org.apache.ibatis.javassist.LoaderClassPath=var898, r6=var1689, r1=var3342, null_type=var183, $r0=var1467, $r2=var81, $r3=var3122, $r4=var3756, r5=var1214, java.lang.ref.Reference=var1985, $r7=var800, java.lang.Object=var382, $r8=var268, java.lang.ClassLoader=var1069, r9=var2171, java.io.InputStream=var3258, r10=var1541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.LoaderClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.LoaderClassPath: java.lang.ref.Reference clref>;	$r8 = virtualinvoke $r7.<java.lang.ref.Reference: java.lang.Object get()>();	r9 = (java.lang.ClassLoader) $r8;	if r9 != null goto r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5);	r10 = virtualinvoke r9.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>(r5);	return r10
;block_num 2