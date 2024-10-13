(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/2071736023 (var3715) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3715 var3715)
(declare-const var3877 var3715) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.IntObjectHashMap 
(assert (not (= var3877 null-var3715)))
(define-const var2841 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2841)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2841!1 String)
(assert (= var2841!1 ""))
(assert true)
;(assert (append/672562846 var2841!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2841!2 String)
(assert (= var2841!2 (str.++ var2841!1 "[")))
(define-const var2083 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var3214 Iterator (iterator/2071736023 var3877)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3375 Bool (Iterator_hasNext/-1669924200 var3214)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var3375 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2841!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2841!3 String)
(assert (= var2841!3 (str.++ var2841!2 "]")))
(assert true)
(define-const var3591 String (toString/-2075883882 var2841!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/2071736023=([org.apache.lucene.internal.hppc.IntObjectHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3715=org.apache.lucene.internal.hppc.IntObjectHashMap, var3877=r1, var2841=$r0, var2083=z1, var3214=r2, var3375=$z0, var3591=$r3}
; {org.apache.lucene.internal.hppc.IntObjectHashMap=var3715, r1=var3877, $r0=var2841, z1=var2083, r2=var3214, $z0=var3375, $r3=var3591}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.IntObjectHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.IntObjectHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3