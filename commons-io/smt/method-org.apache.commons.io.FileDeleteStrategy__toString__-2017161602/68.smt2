(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-290522266 (var2929) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2929 var2929)
(declare-const var1220 var2929) ; Statement: r1 := @this: org.apache.commons.io.FileDeleteStrategy 
(assert (not (= var1220 null-var2929)))
(define-const var3086 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3086)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3086!1 String)
(assert (= var3086!1 ""))
(assert true)
(define-const var2686 String (append/672562846 var3086!1 "FileDeleteStrategy[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FileDeleteStrategy[") 
(declare-const var3086!2 String)
(assert (= var3086!2 (str.++ var3086!1 "FileDeleteStrategy[")))
(define-const var2042 String (name/-290522266 var1220)) ; Statement: $r2 = r1.<org.apache.commons.io.FileDeleteStrategy: java.lang.String name> 
(assert true)
(define-const var414 String (append/672562846 var2686 var2042)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2686!1 String)
(assert (= var2686!1 (str.++ var2686 var2042)))
(assert true)
(define-const var16 String (append/672562846 var414 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var414!1 String)
(assert (= var414!1 (str.++ var414 "]")))
(assert true)
(define-const var924 String (toString/-2075883882 var16)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-290522266=([org.apache.commons.io.FileDeleteStrategy], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2929=org.apache.commons.io.FileDeleteStrategy, var1220=r1, var3086=$r0, var2686=$r3, var2042=$r2, var414=$r4, var16=$r5, var924=$r6}
; {org.apache.commons.io.FileDeleteStrategy=var2929, r1=var1220, $r0=var3086, $r3=var2686, $r2=var2042, $r4=var414, $r5=var16, $r6=var924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.FileDeleteStrategy;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FileDeleteStrategy[");	$r2 = r1.<org.apache.commons.io.FileDeleteStrategy: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1