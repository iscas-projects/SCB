(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2110 0)
(declare-sort var1321 0)
(declare-sort var2010 0)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/143846864 (var2110) var1321)
(declare-fun var1321_access$200/421135032 (var1321) var2010)
(declare-fun getLogName/-1622746903 (var3693) String)
(declare-fun cast-from-var2010-to-var3693 (var2010) var3693)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2110 var2110)
(declare-const var3891 var2110) ; Statement: r1 := @this: jdk.jfr.internal.RequestEngine$RequestHook$1 
(assert (not (= var3891 null-var2110)))
(define-const var546 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var546)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var546!1 String)
(assert (= var546!1 ""))
(assert true)
(define-const var2767 String (append/672562846 var546!1 "Executed periodic hook for ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Executed periodic hook for ") 
(declare-const var546!2 String)
(assert (= var546!2 (str.++ var546!1 "Executed periodic hook for ")))
(define-const var3627 var1321 (this$0/143846864 var3891)) ; Statement: $r2 = r1.<jdk.jfr.internal.RequestEngine$RequestHook$1: jdk.jfr.internal.RequestEngine$RequestHook this$0> 
(define-const var3824 var2010 (var1321_access$200/421135032 var3627)) ; Statement: $r3 = staticinvoke <jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType access$200(jdk.jfr.internal.RequestEngine$RequestHook)>($r2) 
(assert true)
(define-const var2713 String (getLogName/-1622746903 (cast-from-var2010-to-var3693 var3824))) ; Statement: $r4 = virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var133 String (append/672562846 var2767 var2713)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2767!1 String)
(assert (= var2767!1 (str.++ var2767 var2713)))
(assert true)
(define-const var945 String (toString/-2075883882 var133)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/143846864=([jdk.jfr.internal.RequestEngine$RequestHook$1], jdk.jfr.internal.RequestEngine$RequestHook), var1321_access$200/421135032=([jdk.jfr.internal.RequestEngine$RequestHook], jdk.jfr.internal.PlatformEventType), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var2010-to-var3693=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2110=jdk.jfr.internal.RequestEngine$RequestHook$1, var3891=r1, var546=$r0, var2767=$r5, var1321=jdk.jfr.internal.RequestEngine$RequestHook, var3627=$r2, var2010=jdk.jfr.internal.PlatformEventType, var3824=$r3, var3693=jdk.jfr.internal.Type, var2713=$r4, var133=$r6, var945=$r7}
; {jdk.jfr.internal.RequestEngine$RequestHook$1=var2110, r1=var3891, $r0=var546, $r5=var2767, jdk.jfr.internal.RequestEngine$RequestHook=var1321, $r2=var3627, jdk.jfr.internal.PlatformEventType=var2010, $r3=var3824, jdk.jfr.internal.Type=var3693, $r4=var2713, $r6=var133, $r7=var945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RequestEngine$RequestHook$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Executed periodic hook for ");	$r2 = r1.<jdk.jfr.internal.RequestEngine$RequestHook$1: jdk.jfr.internal.RequestEngine$RequestHook this$0>;	$r3 = staticinvoke <jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType access$200(jdk.jfr.internal.RequestEngine$RequestHook)>($r2);	$r4 = virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1