(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2078 0)
(declare-sort var70 0)
(declare-sort var2982 0)
(declare-sort var729 0)
(declare-sort var3740 0)
(declare-sort var3667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var729-init () var729)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3740) String)
(declare-fun cast-from-var70-to-var3740 (var70) var3740)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var729 String) void)
(declare-fun initCause/2003336360 (var3667 var3667) var3667)
(declare-fun cast-from-var729-to-var3667 (var729) var3667)
(declare-fun cast-from-var2982-to-var3667 (var2982) var3667)
(declare-const null-var2078 var2078)
(declare-const null-var70 var70)
(declare-const null-var2982 var2982)
(declare-const var2979 var2078) ; Statement: r0 := @parameter0: java.lang.invoke.MethodHandles$Lookup 
(assert (not (= var2979 null-var2078)))
(declare-const var2367 var70) ; Statement: r1 := @parameter1: java.lang.reflect.Constructor 
(assert (not (= var2367 null-var70)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2648 var2982) ; Statement: $r3 := @caughtexception 
(assert (not (= var2648 null-var2982)))
(define-const var1602 var729 var729-init) ; Statement: $r4 = new java.lang.IllegalAccessError 
(define-const var3814 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3814)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3814!1 String)
(assert (= var3814!1 ""))
(assert true)
(define-const var3482 String (append/672562846 var3814!1 "Failed to unreflect constructor ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect constructor ") 
(declare-const var3814!2 String)
(assert (= var3814!2 (str.++ var3814!1 "Failed to unreflect constructor ")))
(assert true)
(define-const var658 String (append/-1031950772 var3482 (cast-from-var70-to-var3740 var2367))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3482!1 String)
(assert (str.prefixof var3482 var3482!1))
(assert true)
(define-const var2070 String (toString/-2075883882 var658)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var1602 var2070)) ; Statement: specialinvoke $r4.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r8) 

(declare-const var1602!1 var729)
(declare-const var2070!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var729-to-var3667 var1602!1) (cast-from-var2982-to-var3667 var2648))) ; Statement: virtualinvoke $r4.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r3) 

(declare-const var1602!2 var729)
(declare-const var2648!1 var2982)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var729-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var70-to-var3740=([java.lang.reflect.Constructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var729-to-var3667=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var2982-to-var3667=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var2078=java.lang.invoke.MethodHandles$Lookup, var2979=r0, var70=java.lang.reflect.Constructor, var2367=r1, var2982=java.lang.IllegalAccessException, var2648=$r3, var729=java.lang.IllegalAccessError, var1602=$r4, var3814=$r5, var3482=$r6, var3740=java.lang.Object, var658=$r7, var2070=$r8, var3667=java.lang.Throwable}
; {java.lang.invoke.MethodHandles$Lookup=var2078, r0=var2979, java.lang.reflect.Constructor=var70, r1=var2367, java.lang.IllegalAccessException=var2982, $r3=var2648, java.lang.IllegalAccessError=var729, $r4=var1602, $r5=var3814, $r6=var3482, java.lang.Object=var3740, $r7=var658, $r8=var2070, java.lang.Throwable=var3667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.MethodHandles$Lookup;	r1 := @parameter1: java.lang.reflect.Constructor;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalAccessError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect constructor ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r8);	virtualinvoke $r4.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r3);	throw $r4
;block_num 2