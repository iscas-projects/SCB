(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var927 0)
(declare-sort var680 0)
(declare-sort var1684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var927_iterator/-912451715 (var927) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1684-init () var1684)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1684 String) void)
(declare-const null-var1387 var1387)
(declare-const null-var927 var927)
(declare-const null-String String)
(declare-const var3335 var1387) ; Statement: r33 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var3335 null-var1387)))
(declare-const var255 var927) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var255 null-var927)))
(declare-const var1061 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1061 null-String)))
(declare-const var2145 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2145 null-String)))
(assert true)
(define-const var1885 Int (indexOf/-1209756239 var1061 ".")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
 ; Statement: if i0 <= 0 goto r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert (<= var1885 0)) ; Cond: i0 <= 0 
(define-const var155 Iterator (var927_iterator/-912451715 var255)) ; Statement: r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1407 Bool (Iterator_hasNext/-1669924200 var155)) ; Statement: $z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (= (ite var1407 1 0) 0)) ; Cond: $z0 == 0 
(define-const var72 var1684 var1684-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var499 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var499)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var499!1 String)
(assert (= var499!1 ""))
(assert true)
(define-const var1658 String (append/672562846 var499!1 "\u0022Attempt to get unknown field \u0022")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"Attempt to get unknown field \"") 
(declare-const var499!2 String)
(assert (= var499!2 (str.++ var499!1 "\u0022Attempt to get unknown field \u0022")))
(assert true)
(define-const var1783 String (append/672562846 var1658 var1061)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1658!1 String)
(assert (= var1658!1 (str.++ var1658 var1061)))
(assert true)
(define-const var1788 String (append/672562846 var1783 "\u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1783!1 String)
(assert (= var1783!1 (str.++ var1783 "\u0022")))
(assert true)
(define-const var1182 String (toString/-2075883882 var1788)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var72 var1182)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var72!1 var1684)
(declare-const var1182!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), var927_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1684-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1387=jdk.jfr.consumer.RecordedObject, var3335=r33, var927=java.util.List, var255=r1, var1061=r0, var680=null_type, var2145=r10, var1885=i0, var155=r38, var1407=$z0, var1684=java.lang.IllegalArgumentException, var72=$r2, var499=$r3, var1658=$r4, var1783=$r5, var1788=$r6, var1182=$r7}
; {jdk.jfr.consumer.RecordedObject=var1387, r33=var3335, java.util.List=var927, r1=var255, r0=var1061, null_type=var680, r10=var2145, i0=var1885, r38=var155, $z0=var1407, java.lang.IllegalArgumentException=var1684, $r2=var72, $r3=var499, $r4=var1658, $r5=var1783, $r6=var1788, $r7=var1182}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r33 := @this: jdk.jfr.consumer.RecordedObject;	r1 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	if i0 <= 0 goto r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"Attempt to get unknown field \"");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 4