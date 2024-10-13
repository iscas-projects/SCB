(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun thisClass/-1796861939 (var622) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var622 var622)
(declare-const var2910 var622) ; Statement: r1 := @this: org.apache.ibatis.javassist.ClassClassPath 
(assert (not (= var2910 null-var622)))
(define-const var471 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var471)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var471!1 String)
(assert (= var471!1 ""))
(define-const var3114 ClassObject (thisClass/-1796861939 var2910)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass> 
(assert true)
(define-const var2424 String (getName/-1958580599 var3114)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var503 String (append/672562846 var471!1 var2424)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var471!2 String)
(assert (= var471!2 (str.++ var471!1 var2424)))
(assert true)
(define-const var3122 String (append/672562846 var503 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var503!1 String)
(assert (= var503!1 (str.++ var503 ".class")))
(assert true)
(define-const var2589 String (toString/-2075883882 var3122)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), thisClass/-1796861939=([org.apache.ibatis.javassist.ClassClassPath], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var622=org.apache.ibatis.javassist.ClassClassPath, var2910=r1, var471=$r0, var3114=$r2, var2424=$r3, var503=$r4, var3122=$r5, var2589=$r6}
; {org.apache.ibatis.javassist.ClassClassPath=var622, r1=var2910, $r0=var471, $r2=var3114, $r3=var2424, $r4=var503, $r5=var3122, $r6=var2589}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ClassClassPath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.ClassClassPath: java.lang.Class thisClass>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1