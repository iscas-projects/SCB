(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/1461040645 (var615) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var615 var615)
(declare-const var744 var615) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.IntDoubleHashMap 
(assert (not (= var744 null-var615)))
(define-const var1252 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1252)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1252!1 String)
(assert (= var1252!1 ""))
(assert true)
;(assert (append/672562846 var1252!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1252!2 String)
(assert (= var1252!2 (str.++ var1252!1 "[")))
(define-const var1601 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var375 Iterator (iterator/1461040645 var744)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntDoubleHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var454 Bool (Iterator_hasNext/-1669924200 var375)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var454 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1252!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1252!3 String)
(assert (= var1252!3 (str.++ var1252!2 "]")))
(assert true)
(define-const var1710 String (toString/-2075883882 var1252!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/1461040645=([org.apache.lucene.internal.hppc.IntDoubleHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var615=org.apache.lucene.internal.hppc.IntDoubleHashMap, var744=r1, var1252=$r0, var1601=z1, var375=r2, var454=$z0, var1710=$r3}
; {org.apache.lucene.internal.hppc.IntDoubleHashMap=var615, r1=var744, $r0=var1252, z1=var1601, r2=var375, $z0=var454, $r3=var1710}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.IntDoubleHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntDoubleHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3