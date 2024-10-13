(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/1404906173 (var2488) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2488 var2488)
(declare-const var1809 var2488) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.IntIntHashMap 
(assert (not (= var1809 null-var2488)))
(define-const var2733 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2733)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2733!1 String)
(assert (= var2733!1 ""))
(assert true)
;(assert (append/672562846 var2733!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2733!2 String)
(assert (= var2733!2 (str.++ var2733!1 "[")))
(define-const var1596 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var3717 Iterator (iterator/1404906173 var1809)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntIntHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2082 Bool (Iterator_hasNext/-1669924200 var3717)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var2082 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2733!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2733!3 String)
(assert (= var2733!3 (str.++ var2733!2 "]")))
(assert true)
(define-const var2000 String (toString/-2075883882 var2733!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/1404906173=([org.apache.lucene.internal.hppc.IntIntHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2488=org.apache.lucene.internal.hppc.IntIntHashMap, var1809=r1, var2733=$r0, var1596=z1, var3717=r2, var2082=$z0, var2000=$r3}
; {org.apache.lucene.internal.hppc.IntIntHashMap=var2488, r1=var1809, $r0=var2733, z1=var1596, r2=var3717, $z0=var2082, $r3=var2000}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.IntIntHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntIntHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3