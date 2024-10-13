(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2630 0)
(declare-sort var2144 0)
(declare-sort var1747 0)
(declare-sort var3625 0)
(declare-sort var2748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1747_requireNonNull/-961817614 (var3625) var3625)
(declare-fun cast-from-String-to-var3625 (String) var3625)
(declare-fun descriptors/-1914112014 (var2630) var2748)
(declare-fun var2748_iterator/-912451715 (var2748) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2630 var2630)
(declare-const null-String String)
(declare-const var2218 var2630) ; Statement: r1 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var2218 null-var2630)))
(declare-const var1907 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1907 null-String)))
;(assert (var1747_requireNonNull/-961817614 (cast-from-String-to-var3625 var1907))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var1907!1 String)
(define-const var868 var2748 (descriptors/-1914112014 var2218)) ; Statement: $r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors> 
(define-const var112 Iterator (var2748_iterator/-912451715 var868)) ; Statement: r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1523 Bool (Iterator_hasNext/-1669924200 var112)) ; Statement: $z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
(assert (= (ite var1523 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1056 Int (indexOf/-1209756239 var1907!1 ".")) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
 ; Statement: if i1 <= 0 goto return 0 
(assert (<= var1056 0)) ; Cond: i1 <= 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1747_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3625=([java.lang.String], java.lang.Object), descriptors/-1914112014=([jdk.jfr.consumer.RecordedObject], java.util.List), var2748_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2630=jdk.jfr.consumer.RecordedObject, var2218=r1, var1907=r0, var2144=null_type, var1747=java.util.Objects, var3625=java.lang.Object, var2748=java.util.List, var868=$r2, var112=r14, var1523=$z0, var1056=i1}
; {jdk.jfr.consumer.RecordedObject=var2630, r1=var2218, r0=var1907, null_type=var2144, java.util.Objects=var1747, java.lang.Object=var3625, java.util.List=var2748, $r2=var868, r14=var112, $z0=var1523, i1=var1056}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: jdk.jfr.consumer.RecordedObject;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors>;	r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	if i1 <= 0 goto return 0;	return 0
;block_num 4