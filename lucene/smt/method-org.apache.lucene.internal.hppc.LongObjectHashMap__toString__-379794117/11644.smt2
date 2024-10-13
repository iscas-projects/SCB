(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/1124485378 (var1405) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1405 var1405)
(declare-const var186 var1405) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.LongObjectHashMap 
(assert (not (= var186 null-var1405)))
(define-const var1469 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1469)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1469!1 String)
(assert (= var1469!1 ""))
(assert true)
;(assert (append/672562846 var1469!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1469!2 String)
(assert (= var1469!2 (str.++ var1469!1 "[")))
(define-const var3683 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var1428 Iterator (iterator/1124485378 var186)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.LongObjectHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3263 Bool (Iterator_hasNext/-1669924200 var1428)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var3263 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1469!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1469!3 String)
(assert (= var1469!3 (str.++ var1469!2 "]")))
(assert true)
(define-const var2685 String (toString/-2075883882 var1469!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/1124485378=([org.apache.lucene.internal.hppc.LongObjectHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1405=org.apache.lucene.internal.hppc.LongObjectHashMap, var186=r1, var1469=$r0, var3683=z1, var1428=r2, var3263=$z0, var2685=$r3}
; {org.apache.lucene.internal.hppc.LongObjectHashMap=var1405, r1=var186, $r0=var1469, z1=var3683, r2=var1428, $z0=var3263, $r3=var2685}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.LongObjectHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.LongObjectHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3