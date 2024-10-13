(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun iterator/-1282107800 (var714) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var714 var714)
(declare-const var458 var714) ; Statement: r1 := @this: org.apache.lucene.internal.hppc.CharObjectHashMap 
(assert (not (= var458 null-var714)))
(define-const var2307 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2307)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2307!1 String)
(assert (= var2307!1 ""))
(assert true)
;(assert (append/672562846 var2307!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2307!2 String)
(assert (= var2307!2 (str.++ var2307!1 "[")))
(define-const var459 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var1923 Iterator (iterator/-1282107800 var458)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.CharObjectHashMap: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3911 Bool (Iterator_hasNext/-1669924200 var1923)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var3911 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2307!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2307!3 String)
(assert (= var2307!3 (str.++ var2307!2 "]")))
(assert true)
(define-const var1676 String (toString/-2075883882 var2307!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), iterator/-1282107800=([org.apache.lucene.internal.hppc.CharObjectHashMap], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var714=org.apache.lucene.internal.hppc.CharObjectHashMap, var458=r1, var2307=$r0, var459=z1, var1923=r2, var3911=$z0, var1676=$r3}
; {org.apache.lucene.internal.hppc.CharObjectHashMap=var714, r1=var458, $r0=var2307, z1=var459, r2=var1923, $z0=var3911, $r3=var1676}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.internal.hppc.CharObjectHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	z1 = 1;	r2 = virtualinvoke r1.<org.apache.lucene.internal.hppc.CharObjectHashMap: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3