(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun classname/-546390156 (var705) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var705 var705)
(declare-const var702 var705) ; Statement: r1 := @this: org.apache.ibatis.javassist.ByteArrayClassPath 
(assert (not (= var702 null-var705)))
(define-const var3299 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3299)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3299!1 String)
(assert (= var3299!1 ""))
(assert true)
(define-const var2332 String (append/672562846 var3299!1 "byte[]:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byte[]:") 
(declare-const var3299!2 String)
(assert (= var3299!2 (str.++ var3299!1 "byte[]:")))
(define-const var1249 String (classname/-546390156 var702)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname> 
(assert true)
(define-const var3613 String (append/672562846 var2332 var1249)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2332!1 String)
(assert (= var2332!1 (str.++ var2332 var1249)))
(assert true)
(define-const var1198 String (toString/-2075883882 var3613)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), classname/-546390156=([org.apache.ibatis.javassist.ByteArrayClassPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var705=org.apache.ibatis.javassist.ByteArrayClassPath, var702=r1, var3299=$r0, var2332=$r3, var1249=$r2, var3613=$r4, var1198=$r5}
; {org.apache.ibatis.javassist.ByteArrayClassPath=var705, r1=var702, $r0=var3299, $r3=var2332, $r2=var1249, $r4=var3613, $r5=var1198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ByteArrayClassPath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byte[]:");	$r2 = r1.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1