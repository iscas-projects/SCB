(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var3968 0)
(declare-sort var3820 0)
(declare-sort var3367 0)
(declare-sort var507 0)
(declare-sort var221 0)
(declare-sort var3207 0)
(declare-sort var733 0)
(declare-sort var86 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3820_requireNonNull/-961817614 (var3367) var3367)
(declare-fun cast-from-String-to-var3367 (String) var3367)
(declare-fun var507_checkControl/2049853312 () void)
(declare-fun getExistingRecording/538856044 (var3372 Int) var221)
(declare-fun var733_getConfigurations/673617761 () var3207)
(declare-fun var3207_iterator/-912451715 (var3207) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var86-init () var86)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var86 String) void)
(declare-const null-var3372 var3372)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1585 var3372) ; Statement: r1 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var1585 null-var3372)))
(declare-const var3501 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3501 null-Int)))
(declare-const var1024 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1024 null-String)))
;(assert (var3820_requireNonNull/-961817614 (cast-from-String-to-var3367 var1024))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var1024!1 String)
;(assert var507_checkControl/2049853312) ; Statement: staticinvoke <jdk.management.jfr.MBeanUtils: void checkControl()>() 
(assert true)
(define-const var164 var221 (getExistingRecording/538856044 var1585 var3501)) ; Statement: r2 = specialinvoke r1.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0) 
(define-const var796 var3207 var733_getConfigurations/673617761) ; Statement: $r3 = staticinvoke <jdk.jfr.Configuration: java.util.List getConfigurations()>() 
(define-const var227 Iterator (var3207_iterator/-912451715 var796)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var249 Bool (Iterator_hasNext/-1669924200 var227)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.IllegalArgumentException 
(assert (= (ite var249 1 0) 0)) ; Cond: $z0 == 0 
(define-const var142 var86 var86-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var255 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var255)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var255!1 String)
(assert (= var255!1 ""))
(assert true)
(define-const var2164 String (append/672562846 var255!1 "Could not find configuration with name ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find configuration with name ") 
(declare-const var255!2 String)
(assert (= var255!2 (str.++ var255!1 "Could not find configuration with name ")))
(assert true)
(define-const var2884 String (append/672562846 var2164 var1024!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 var1024!1)))
(assert true)
(define-const var472 String (toString/-2075883882 var2884)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var142 var472)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var142!1 var86)
(declare-const var472!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3820_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3367=([java.lang.String], java.lang.Object), var507_checkControl/2049853312=([], void), getExistingRecording/538856044=([jdk.management.jfr.FlightRecorderMXBeanImpl, long], jdk.jfr.Recording), var733_getConfigurations/673617761=([], java.util.List), var3207_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var86-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3372=jdk.management.jfr.FlightRecorderMXBeanImpl, var1585=r1, var3501=l0, var1024=r0, var3968=null_type, var3820=java.util.Objects, var3367=java.lang.Object, var507=jdk.management.jfr.MBeanUtils, var221=jdk.jfr.Recording, var164=r2, var3207=java.util.List, var733=jdk.jfr.Configuration, var796=$r3, var227=r4, var249=$z0, var86=java.lang.IllegalArgumentException, var142=$r5, var255=$r6, var2164=$r7, var2884=$r8, var472=$r9}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var3372, r1=var1585, l0=var3501, r0=var1024, null_type=var3968, java.util.Objects=var3820, java.lang.Object=var3367, jdk.management.jfr.MBeanUtils=var507, jdk.jfr.Recording=var221, r2=var164, java.util.List=var3207, jdk.jfr.Configuration=var733, $r3=var796, r4=var227, $z0=var249, java.lang.IllegalArgumentException=var86, $r5=var142, $r6=var255, $r7=var2164, $r8=var2884, $r9=var472}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	l0 := @parameter0: long;	r0 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	staticinvoke <jdk.management.jfr.MBeanUtils: void checkControl()>();	r2 = specialinvoke r1.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0);	$r3 = staticinvoke <jdk.jfr.Configuration: java.util.List getConfigurations()>();	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find configuration with name ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 3