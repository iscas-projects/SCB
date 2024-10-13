(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/351388912 (var1490) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1490 var1490)
(declare-const var1782 var1490) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.IntFloatHashMap 
(assert (not (= var1782 null-var1490)))
(define-const var342 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var342)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var342!1 String)
(assert (= var342!1 ""))
(assert true)
;(assert (append/672562846 var342!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var342!2 String)
(assert (= var342!2 (str.++ var342!1 "[")))
(define-const var1089 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var3504 Iterator (iterator/351388912 var1782)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntFloatHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2263 Bool (Iterator_hasNext/-1669924200 var3504)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var2263 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var342!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var342!3 String)
(assert (= var342!3 (str.++ var342!2 "]")))
(assert true)
(define-const var1330 String (toString/-2075883882 var342!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/351388912=([org.apache.lucene.internal.hppc.IntFloatHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1490=org.apache.lucene.internal.hppc.IntFloatHashMap, var1782=r1, var342=$r0, var1089=z1, var3504=r2, var2263=$z0, var1330=$r3}
; {org.apache.lucene.internal.hppc.IntFloatHashMap=var1490, r1=var1782, $r0=var342, z1=var1089, r2=var3504, $z0=var2263, $r3=var1330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.IntFloatHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntFloatHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3