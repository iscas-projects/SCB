(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/-1395771278 (var1476) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1476 var1476)
(declare-const var1939 var1476) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.LongIntHashMap 
(assert (not (= var1939 null-var1476)))
(define-const var103 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var103)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var103!1 String)
(assert (= var103!1 ""))
(assert true)
;(assert (append/672562846 var103!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var103!2 String)
(assert (= var103!2 (str.++ var103!1 "[")))
(define-const var2062 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var1361 Iterator (iterator/-1395771278 var1939)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.LongIntHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3043 Bool (Iterator_hasNext/-1669924200 var1361)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var3043 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var103!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var103!3 String)
(assert (= var103!3 (str.++ var103!2 "]")))
(assert true)
(define-const var889 String (toString/-2075883882 var103!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/-1395771278=([org.apache.lucene.internal.hppc.LongIntHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1476=org.apache.lucene.internal.hppc.LongIntHashMap, var1939=r1, var103=$r0, var2062=z1, var1361=r2, var3043=$z0, var889=$r3}
; {org.apache.lucene.internal.hppc.LongIntHashMap=var1476, r1=var1939, $r0=var103, z1=var2062, r2=var1361, $z0=var3043, $r3=var889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.LongIntHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.LongIntHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3