(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2915 0)
(declare-sort var584 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun thisClass/-1796861939 (var2915) ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var919)
(declare-const null-var2915 var2915)
(declare-const null-String String)
(declare-const var1192 var2915) ; Statement: r7 := @this: org.apache.ibatis.javassist.ClassClassPath 
(assert (not (= var1192 null-var2915)))
(declare-const var2465 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2465 null-String)))
(define-const var1223 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(assert true)
(define-const var1212 String (append/-1166366385 var1223!1 47)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var1223!2 String)
(assert (str.prefixof var1223!1 var1223!2))
(assert true)
(define-const var922 String (replace/1524665721 var2465 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2139 String (append/672562846 var1212 var922)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1212!1 String)
(assert (= var1212!1 (str.++ var1212 var922)))
(assert true)
(define-const var2313 String (append/672562846 var2139 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2139!1 String)
(assert (= var2139!1 (str.++ var2139 ".class")))
(assert true)
(define-const var1820 String (toString/-2075883882 var2313)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1669 ClassObject (thisClass/-1796861939 var1192)) ; Statement: $r8 = r7.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass> 
(assert true)
(define-const var3122 var919 (getResource/413390302 var1669 var1820)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), thisClass/-1796861939=([org.apache.ibatis.javassist.ClassClassPath], java.lang.Class), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL)}
; {var2915=org.apache.ibatis.javassist.ClassClassPath, var1192=r7, var2465=r1, var584=null_type, var1223=$r0, var1212=$r3, var922=$r2, var2139=$r4, var2313=$r5, var1820=r6, var1669=$r8, var919=java.net.URL, var3122=$r9}
; {org.apache.ibatis.javassist.ClassClassPath=var2915, r7=var1192, r1=var2465, null_type=var584, $r0=var1223, $r3=var1212, $r2=var922, $r4=var2139, $r5=var2313, r6=var1820, $r8=var1669, java.net.URL=var919, $r9=var3122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.javassist.ClassClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r6);	return $r9
;block_num 1