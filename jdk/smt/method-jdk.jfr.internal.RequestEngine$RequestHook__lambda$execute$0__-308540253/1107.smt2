(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var3833 0)
(declare-sort var3675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/733109763 (var3862) var3833)
(declare-fun getLogName/-1622746903 (var3675) String)
(declare-fun cast-from-var3833-to-var3675 (var3833) var3675)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3862 var3862)
(declare-const var800 var3862) ; Statement: r1 := @this: jdk.jfr.internal.RequestEngine$RequestHook 
(assert (not (= var800 null-var3862)))
(define-const var3299 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3299)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3299!1 String)
(assert (= var3299!1 ""))
(assert true)
(define-const var2906 String (append/672562846 var3299!1 "Executed periodic hook for ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Executed periodic hook for ") 
(declare-const var3299!2 String)
(assert (= var3299!2 (str.++ var3299!1 "Executed periodic hook for ")))
(define-const var7 var3833 (type/733109763 var800)) ; Statement: $r2 = r1.<jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType type> 
(assert true)
(define-const var1538 String (getLogName/-1622746903 (cast-from-var3833-to-var3675 var7))) ; Statement: $r3 = virtualinvoke $r2.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var3774 String (append/672562846 var2906 var1538)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2906!1 String)
(assert (= var2906!1 (str.++ var2906 var1538)))
(assert true)
(define-const var2721 String (toString/-2075883882 var3774)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/733109763=([jdk.jfr.internal.RequestEngine$RequestHook], jdk.jfr.internal.PlatformEventType), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var3833-to-var3675=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3862=jdk.jfr.internal.RequestEngine$RequestHook, var800=r1, var3299=$r0, var2906=$r4, var3833=jdk.jfr.internal.PlatformEventType, var7=$r2, var3675=jdk.jfr.internal.Type, var1538=$r3, var3774=$r5, var2721=$r6}
; {jdk.jfr.internal.RequestEngine$RequestHook=var3862, r1=var800, $r0=var3299, $r4=var2906, jdk.jfr.internal.PlatformEventType=var3833, $r2=var7, jdk.jfr.internal.Type=var3675, $r3=var1538, $r5=var3774, $r6=var2721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RequestEngine$RequestHook;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Executed periodic hook for ");	$r2 = r1.<jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType type>;	$r3 = virtualinvoke $r2.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1