(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var3082 0)
(declare-sort var3501 0)
(declare-sort var2286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3082) ClassObject)
(declare-fun cast-from-var1420-to-var3082 (var1420) var3082)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSequentialSubReaders/226929752 (var1420) var3501)
(declare-fun var2286-init () var2286)
(declare-fun <init>/-208190597 (var2286) void)
(declare-const null-var1420 var1420)
(declare-const null-ClassObject ClassObject)
(declare-const var1420-$assertionsDisabled Bool)
(declare-const null-var3501 var3501)
(declare-const var233 var1420) ; Statement: r1 := @this: org.apache.lucene.index.CompositeReader 
(assert (not (= var233 null-var1420)))
(define-const var870 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var870)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var870!1 String)
(assert (= var870!1 ""))
(assert true)
(define-const var3249 ClassObject (getClass/1258963082 (cast-from-var1420-to-var3082 var233))) ; Statement: r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
 ; Statement: if r9 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (= var3249 null-ClassObject)) ; Cond: r9 == null 
(assert true)
;(assert (append/-1166366385 var870!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var870!2 String)
(assert (str.prefixof var870!1 var870!2))
(assert true)
(define-const var2508 var3501 (getSequentialSubReaders/226929752 var233)) ; Statement: $r8 = virtualinvoke r1.<org.apache.lucene.index.CompositeReader: java.util.List getSequentialSubReaders()>() 
(define-const var1909 Bool var1420-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.index.CompositeReader: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>() 
(assert (not (not (= (ite var1909 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if $r8 != null goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>() 
(assert (not (not (= var2508 null-var3501)))) ; Negate: Cond: $r8 != null  
(define-const var3708 var2286 var2286-init) ; Statement: $r6 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var3708)) ; Statement: specialinvoke $r6.<java.lang.AssertionError: void <init>()>() 

(declare-const var3708!1 var2286)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1420-to-var3082=([org.apache.lucene.index.CompositeReader], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSequentialSubReaders/226929752=([org.apache.lucene.index.CompositeReader], java.util.List), var2286-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var1420=org.apache.lucene.index.CompositeReader, var233=r1, var870=$r0, var3082=java.lang.Object, var3249=r9, var3501=java.util.List, var2508=$r8, var1909=$z0, var2286=java.lang.AssertionError, var3708=$r6}
; {org.apache.lucene.index.CompositeReader=var1420, r1=var233, $r0=var870, java.lang.Object=var3082, r9=var3249, java.util.List=var3501, $r8=var2508, $z0=var1909, java.lang.AssertionError=var2286, $r6=var3708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: org.apache.lucene.index.CompositeReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	if r9 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r8 = virtualinvoke r1.<org.apache.lucene.index.CompositeReader: java.util.List getSequentialSubReaders()>();	$z0 = <org.apache.lucene.index.CompositeReader: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>();	if $r8 != null goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>();	$r6 = new java.lang.AssertionError;	specialinvoke $r6.<java.lang.AssertionError: void <init>()>();	throw $r6
;block_num 5