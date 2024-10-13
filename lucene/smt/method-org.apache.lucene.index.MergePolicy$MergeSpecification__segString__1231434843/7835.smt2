(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var497 0)
(declare-sort var1986 0)
(declare-sort var3726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun merges/70512215 (var497) var3726)
(declare-fun var3726_size/-959786421 (var3726) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var497 var497)
(declare-const null-var1986 var1986)
(declare-const var1584 var497) ; Statement: r1 := @this: org.apache.lucene.index.MergePolicy$MergeSpecification 
(assert (not (= var1584 null-var497)))
(declare-const var1768 var1986) ; Statement: r11 := @parameter0: org.apache.lucene.store.Directory 
(assert (not (= var1768 null-var1986)))
(define-const var663 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var663)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var663!1 String)
(assert (= var663!1 ""))
(assert true)
;(assert (append/672562846 var663!1 "MergeSpec:\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MergeSpec:\n") 
(declare-const var663!2 String)
(assert (= var663!2 (str.++ var663!1 "MergeSpec:\n")))
(define-const var52 var3726 (merges/70512215 var1584)) ; Statement: $r2 = r1.<org.apache.lucene.index.MergePolicy$MergeSpecification: java.util.List merges> 
(define-const var3795 Int (var3726_size/-959786421 var52)) ; Statement: i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var269 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var269 var3795)) ; Cond: i2 >= i0 
(assert true)
(define-const var3447 String (toString/-2075883882 var663!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), merges/70512215=([org.apache.lucene.index.MergePolicy$MergeSpecification], java.util.List), var3726_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var497=org.apache.lucene.index.MergePolicy$MergeSpecification, var1584=r1, var1986=org.apache.lucene.store.Directory, var1768=r11, var663=$r0, var3726=java.util.List, var52=$r2, var3795=i0, var269=i2, var3447=$r3}
; {org.apache.lucene.index.MergePolicy$MergeSpecification=var497, r1=var1584, org.apache.lucene.store.Directory=var1986, r11=var1768, $r0=var663, java.util.List=var3726, $r2=var52, i0=var3795, i2=var269, $r3=var3447}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.MergePolicy$MergeSpecification;	r11 := @parameter0: org.apache.lucene.store.Directory;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MergeSpec:\n");	$r2 = r1.<org.apache.lucene.index.MergePolicy$MergeSpecification: java.util.List merges>;	i0 = interfaceinvoke $r2.<java.util.List: int size()>();	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3