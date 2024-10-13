(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2999 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1783) String)
(declare-fun cast-from-var2999-to-var1783 (var2999) var1783)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2999 var2999)
(declare-const var3789 var2999) ; Statement: r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var3789 null-var2999)))
(define-const var3107 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3107)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3107!1 String)
(assert (= var3107!1 ""))
(assert true)
(define-const var3723 String (append/672562846 var3107!1 "Repository chunk ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Repository chunk ") 
(declare-const var3107!2 String)
(assert (= var3107!2 (str.++ var3107!1 "Repository chunk ")))
(assert true)
(define-const var3312 String (append/-1031950772 var3723 (cast-from-var2999-to-var1783 var3789))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3723!1 String)
(assert (str.prefixof var3723 var3723!1))
(assert true)
(define-const var2733 String (append/672562846 var3312 " deleted")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deleted") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 " deleted")))
(assert true)
(define-const var1838 String (toString/-2075883882 var2733)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2999-to-var1783=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2999=jdk.jfr.internal.SecuritySupport$SafePath, var3789=r1, var3107=$r0, var3723=$r2, var1783=java.lang.Object, var3312=$r3, var2733=$r4, var1838=$r5}
; {jdk.jfr.internal.SecuritySupport$SafePath=var2999, r1=var3789, $r0=var3107, $r2=var3723, java.lang.Object=var1783, $r3=var3312, $r4=var2733, $r5=var1838}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Repository chunk ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deleted");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1