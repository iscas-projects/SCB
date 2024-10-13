(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2855 var2855)
(declare-const var2346 var2855) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyMap 
(assert (not (= var2346 null-var2855)))
(declare-const var1317 var2855) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.PropertyMap 
(assert (not (= var1317 null-var2855)))
(define-const var1585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1585!1 String)
(assert (= var1585!1 ""))
 ; Statement: if r1 == r2 goto $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2346 var1317)) ; Cond: r1 == r2 
(assert true)
(define-const var2914 String (toString/-2075883882 var1585!1)) ; Statement: $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2855=jdk.nashorn.internal.runtime.PropertyMap, var2346=r1, var1317=r2, var1585=$r0, var2914=$r21}
; {jdk.nashorn.internal.runtime.PropertyMap=var2855, r1=var2346, r2=var1317, $r0=var1585, $r21=var2914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyMap;	r2 := @parameter1: jdk.nashorn.internal.runtime.PropertyMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == r2 goto $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 2