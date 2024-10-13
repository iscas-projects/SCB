(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var2262 0)
(declare-sort var1027 0)
(declare-sort var721 0)
(declare-sort var3236 0)
(declare-sort var2669 0)
(declare-sort var1184 0)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var721) Int)
(declare-fun cast-from-var2290-to-var721 (var2290) var721)
(declare-fun arr-var2669-init () (Array Int var2669))
(declare-fun cast-from-String-to-var2669 (String) var2669)
(declare-fun String_format/-647569892 (var3236 String (Array Int var2669)) String)
(declare-fun var1184-init () var1184)
(declare-fun <init>/1436286819 (var1184 String) void)
(declare-fun cast-from-var1184-to-var2540 (var1184) var2540)
(declare-const null-var2290 var2290)
(declare-const null-String String)
(declare-const var1027-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause (Array Int Int))
(declare-const var3236-ROOT var3236)
(declare-const null-__Array__Int__var2669__ (Array Int var2669))
(declare-const var207 var2290) ; Statement: r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause 
(assert (not (= var207 null-var2290)))
(declare-const var3321 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3321 null-String)))
(declare-const var1541 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1541 null-String)))
(define-const var2199 (Array Int Int) var1027-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause) ; Statement: $r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause> 
(assert true)
(define-const var1355 Int (ordinal/-291641772 (cast-from-var2290-to-var721 var207))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>() 
(define-const var1957 Int (select var2199 var1355)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; } 
(assert (and (= var1957 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var1353 String "no session and settings disallow loading outside the Session") ; Statement: r4 = "no session and settings disallow loading outside the Session" 
 ; Statement: goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>] 
(assert true) ; Non Conditional
(define-const var2693 var3236 var3236-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2704 (Array Int var2669) arr-var2669-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var2704!1 (Array Int var2669))
(assert (not (= var2704!1 null-__Array__Int__var2669__)))
(assert (= (select var2704!1 0) (cast-from-String-to-var2669 var3321))) ; Statement: $r6[0] = r2 
(declare-const var2704!2 (Array Int var2669))
(assert (not (= var2704!2 null-__Array__Int__var2669__)))
(assert (= (select var2704!2 1) (cast-from-String-to-var2669 var1541))) ; Statement: $r6[1] = r3 
(declare-const var2704!3 (Array Int var2669))
(assert (not (= var2704!3 null-__Array__Int__var2669__)))
(assert (= (select var2704!3 2) (cast-from-String-to-var2669 var1353))) ; Statement: $r6[2] = r4 
(define-const var2025 String (String_format/-647569892 var2693 "Unable to perform requested lazy initialization [%s.%s] - %s" var2704!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6) 
(define-const var1926 var1184 var1184-init) ; Statement: $r9 = new org.hibernate.LazyInitializationException 
(assert true)
;(assert (<init>/1436286819 var1926 var2025)) ; Statement: specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7) 

(declare-const var1926!1 var1184)
(declare-const var2025!1 String)
(define-const var2245 var2540 (cast-from-var1184-to-var2540 var1926!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2290-to-var721=([org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause], java.lang.Enum), arr-var2669-init=([], java.lang.Object[]), cast-from-String-to-var2669=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1184-init=([], org.hibernate.LazyInitializationException), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var1184-to-var2540=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var2290=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause, var207=r0, var3321=r2, var2262=null_type, var1541=r3, var1027=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1, var2199=$r1, var721=java.lang.Enum, var1355=$i0, var1957=$i1, var1353=r4, var3236=java.util.Locale, var2693=$r5, var2669=java.lang.Object, var2704=$r6, var2025=$r7, var1184=org.hibernate.LazyInitializationException, var1926=$r9, var2540=java.lang.Throwable, var2245=$r10}
; {org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause=var2290, r0=var207, r2=var3321, null_type=var2262, r3=var1541, org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1=var1027, $r1=var2199, java.lang.Enum=var721, $i0=var1355, $i1=var1957, r4=var1353, java.util.Locale=var3236, $r5=var2693, java.lang.Object=var2669, $r6=var2704, $r7=var2025, org.hibernate.LazyInitializationException=var1184, $r9=var1926, java.lang.Throwable=var2540, $r10=var2245}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause>;	$i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; };	r4 = "no session and settings disallow loading outside the Session";	goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>];	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r6[1] = r3;	$r6[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6);	$r9 = new org.hibernate.LazyInitializationException;	specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 3