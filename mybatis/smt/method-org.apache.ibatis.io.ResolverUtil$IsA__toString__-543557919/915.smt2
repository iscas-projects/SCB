(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parent/1056473601 (var3789) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3789 var3789)
(declare-const var2702 var3789) ; Statement: r1 := @this: org.apache.ibatis.io.ResolverUtil$IsA 
(assert (not (= var2702 null-var3789)))
(define-const var2942 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2942)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2942!1 String)
(assert (= var2942!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var2942!1 "is assignable to ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("is assignable to ") 
(declare-const var2942!2 String)
(assert (= var2942!2 (str.++ var2942!1 "is assignable to ")))
(define-const var3390 ClassObject (parent/1056473601 var2702)) ; Statement: $r2 = r1.<org.apache.ibatis.io.ResolverUtil$IsA: java.lang.Class parent> 
(assert true)
(define-const var3406 String (getSimpleName/-390194377 var3390)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2307 String (append/672562846 var3347 var3406)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var3406)))
(assert true)
(define-const var3828 String (toString/-2075883882 var2307)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parent/1056473601=([org.apache.ibatis.io.ResolverUtil$IsA], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3789=org.apache.ibatis.io.ResolverUtil$IsA, var2702=r1, var2942=$r0, var3347=$r4, var3390=$r2, var3406=$r3, var2307=$r5, var3828=$r6}
; {org.apache.ibatis.io.ResolverUtil$IsA=var3789, r1=var2702, $r0=var2942, $r4=var3347, $r2=var3390, $r3=var3406, $r5=var2307, $r6=var3828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.io.ResolverUtil$IsA;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("is assignable to ");	$r2 = r1.<org.apache.ibatis.io.ResolverUtil$IsA: java.lang.Class parent>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1