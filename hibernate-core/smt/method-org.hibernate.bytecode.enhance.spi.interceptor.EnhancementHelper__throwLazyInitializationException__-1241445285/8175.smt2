(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3176 0)
(declare-sort var492 0)
(declare-sort var443 0)
(declare-sort var499 0)
(declare-sort var1384 0)
(declare-sort var2211 0)
(declare-sort var3972 0)
(declare-sort var1220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var499) Int)
(declare-fun cast-from-var3176-to-var499 (var3176) var499)
(declare-fun arr-var2211-init () (Array Int var2211))
(declare-fun cast-from-String-to-var2211 (String) var2211)
(declare-fun String_format/-647569892 (var1384 String (Array Int var2211)) String)
(declare-fun var3972-init () var3972)
(declare-fun <init>/1436286819 (var3972 String) void)
(declare-fun cast-from-var3972-to-var1220 (var3972) var1220)
(declare-const null-var3176 var3176)
(declare-const null-String String)
(declare-const var443-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause (Array Int Int))
(declare-const var1384-ROOT var1384)
(declare-const null-__Array__Int__var2211__ (Array Int var2211))
(declare-const var338 var3176) ; Statement: r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause 
(assert (not (= var338 null-var3176)))
(declare-const var3953 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3953 null-String)))
(declare-const var2279 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2279 null-String)))
(define-const var875 (Array Int Int) var443-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause) ; Statement: $r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause> 
(assert true)
(define-const var2995 Int (ordinal/-291641772 (cast-from-var3176-to-var499 var338))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>() 
(define-const var3090 Int (select var875 var2995)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; } 
(assert (and (= var3090 3) (and (not (= var3090 2)) (and (not (= var3090 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2999 String "session is disconnected and settings disallow loading outside the Session") ; Statement: r4 = "session is disconnected and settings disallow loading outside the Session" 
 ; Statement: goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>] 
(assert true) ; Non Conditional
(define-const var2023 var1384 var1384-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2221 (Array Int var2211) arr-var2211-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var2221!1 (Array Int var2211))
(assert (not (= var2221!1 null-__Array__Int__var2211__)))
(assert (= (select var2221!1 0) (cast-from-String-to-var2211 var3953))) ; Statement: $r6[0] = r2 
(declare-const var2221!2 (Array Int var2211))
(assert (not (= var2221!2 null-__Array__Int__var2211__)))
(assert (= (select var2221!2 1) (cast-from-String-to-var2211 var2279))) ; Statement: $r6[1] = r3 
(declare-const var2221!3 (Array Int var2211))
(assert (not (= var2221!3 null-__Array__Int__var2211__)))
(assert (= (select var2221!3 2) (cast-from-String-to-var2211 var2999))) ; Statement: $r6[2] = r4 
(define-const var731 String (String_format/-647569892 var2023 "Unable to perform requested lazy initialization [%s.%s] - %s" var2221!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6) 
(define-const var1927 var3972 var3972-init) ; Statement: $r9 = new org.hibernate.LazyInitializationException 
(assert true)
;(assert (<init>/1436286819 var1927 var731)) ; Statement: specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7) 

(declare-const var1927!1 var3972)
(declare-const var731!1 String)
(define-const var603 var1220 (cast-from-var3972-to-var1220 var1927!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3176-to-var499=([org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause], java.lang.Enum), arr-var2211-init=([], java.lang.Object[]), cast-from-String-to-var2211=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var3972-init=([], org.hibernate.LazyInitializationException), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var3972-to-var1220=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var3176=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause, var338=r0, var3953=r2, var492=null_type, var2279=r3, var443=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1, var875=$r1, var499=java.lang.Enum, var2995=$i0, var3090=$i1, var2999=r4, var1384=java.util.Locale, var2023=$r5, var2211=java.lang.Object, var2221=$r6, var731=$r7, var3972=org.hibernate.LazyInitializationException, var1927=$r9, var1220=java.lang.Throwable, var603=$r10}
; {org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause=var3176, r0=var338, r2=var3953, null_type=var492, r3=var2279, org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1=var443, $r1=var875, java.lang.Enum=var499, $i0=var2995, $i1=var3090, r4=var2999, java.util.Locale=var1384, $r5=var2023, java.lang.Object=var2211, $r6=var2221, $r7=var731, org.hibernate.LazyInitializationException=var3972, $r9=var1927, java.lang.Throwable=var1220, $r10=var603}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause>;	$i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; };	r4 = "session is disconnected and settings disallow loading outside the Session";	goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>];	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r6[1] = r3;	$r6[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6);	$r9 = new org.hibernate.LazyInitializationException;	specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 3