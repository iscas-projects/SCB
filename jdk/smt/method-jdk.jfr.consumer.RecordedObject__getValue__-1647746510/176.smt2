(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort var3449 0)
(declare-sort var3218 0)
(declare-sort var2076 0)
(declare-sort var37 0)
(declare-sort var1959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3218_requireNonNull/-961817614 (var2076) var2076)
(declare-fun cast-from-String-to-var2076 (String) var2076)
(declare-fun descriptors/-1914112014 (var3126) var37)
(declare-fun var37_iterator/-912451715 (var37) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var1959-init () var1959)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1959 String) void)
(declare-const null-var3126 var3126)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3695 var3126) ; Statement: r1 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var3695 null-var3126)))
(declare-const var3743 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3743 null-String)))
(declare-const var2503 Bool) ; Statement: z4 := @parameter1: boolean 
(assert (not (= var2503 null-Bool)))
;(assert (var3218_requireNonNull/-961817614 (cast-from-String-to-var2076 var3743))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var3743!1 String)
(define-const var3788 Int 0) ; Statement: i1 = 0 
(define-const var3835 var37 (descriptors/-1914112014 var3695)) ; Statement: $r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors> 
(define-const var2814 Iterator (var37_iterator/-912451715 var3835)) ; Statement: r38 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var781 Bool (Iterator_hasNext/-1669924200 var2814)) ; Statement: $z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
(assert (= (ite var781 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3248 Int (indexOf/-1209756239 var3743!1 ".")) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
 ; Statement: if i2 <= 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (<= var3248 0)) ; Cond: i2 <= 0 
(define-const var2770 var1959 var1959-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var3161 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3161)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3161!1 String)
(assert (= var3161!1 ""))
(assert true)
(define-const var3359 String (append/672562846 var3161!1 "Could not find field with name ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find field with name ") 
(declare-const var3161!2 String)
(assert (= var3161!2 (str.++ var3161!1 "Could not find field with name ")))
(assert true)
(define-const var83 String (append/672562846 var3359 var3743!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3359!1 String)
(assert (= var3359!1 (str.++ var3359 var3743!1)))
(assert true)
(define-const var964 String (toString/-2075883882 var83)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2770 var964)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2770!1 var1959)
(declare-const var964!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3218_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2076=([java.lang.String], java.lang.Object), descriptors/-1914112014=([jdk.jfr.consumer.RecordedObject], java.util.List), var37_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), var1959-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3126=jdk.jfr.consumer.RecordedObject, var3695=r1, var3743=r0, var3449=null_type, var2503=z4, var3218=java.util.Objects, var2076=java.lang.Object, var3788=i1, var37=java.util.List, var3835=$r2, var2814=r38, var781=$z0, var3248=i2, var1959=java.lang.IllegalArgumentException, var2770=$r3, var3161=$r4, var3359=$r5, var83=$r6, var964=$r7}
; {jdk.jfr.consumer.RecordedObject=var3126, r1=var3695, r0=var3743, null_type=var3449, z4=var2503, java.util.Objects=var3218, java.lang.Object=var2076, i1=var3788, java.util.List=var37, $r2=var3835, r38=var2814, $z0=var781, i2=var3248, java.lang.IllegalArgumentException=var1959, $r3=var2770, $r4=var3161, $r5=var3359, $r6=var83, $r7=var964}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.consumer.RecordedObject;	r0 := @parameter0: java.lang.String;	z4 := @parameter1: boolean;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	i1 = 0;	$r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors>;	r38 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	i2 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	if i2 <= 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find field with name ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 4