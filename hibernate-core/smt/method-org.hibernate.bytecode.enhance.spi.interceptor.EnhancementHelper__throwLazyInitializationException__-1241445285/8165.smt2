(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var3646 0)
(declare-sort var1824 0)
(declare-sort var916 0)
(declare-sort var1046 0)
(declare-sort var235 0)
(declare-sort var1900 0)
(declare-sort var1972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var916) Int)
(declare-fun cast-from-var1544-to-var916 (var1544) var916)
(declare-fun arr-var235-init () (Array Int var235))
(declare-fun cast-from-String-to-var235 (String) var235)
(declare-fun String_format/-647569892 (var1046 String (Array Int var235)) String)
(declare-fun var1900-init () var1900)
(declare-fun <init>/1436286819 (var1900 String) void)
(declare-fun cast-from-var1900-to-var1972 (var1900) var1972)
(declare-const null-var1544 var1544)
(declare-const null-String String)
(declare-const var1824-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause (Array Int Int))
(declare-const var1046-ROOT var1046)
(declare-const null-__Array__Int__var235__ (Array Int var235))
(declare-const var1806 var1544) ; Statement: r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause 
(assert (not (= var1806 null-var1544)))
(declare-const var416 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var416 null-String)))
(declare-const var1368 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1368 null-String)))
(define-const var2424 (Array Int Int) var1824-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause) ; Statement: $r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause> 
(assert true)
(define-const var3165 Int (ordinal/-291641772 (cast-from-var1544-to-var916 var1806))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>() 
(define-const var1956 Int (select var2424 var3165)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; } 
(assert (and (= var1956 2) (and (not (= var1956 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2904 String "session is closed and settings disallow loading outside the Session") ; Statement: r4 = "session is closed and settings disallow loading outside the Session" 
 ; Statement: goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>] 
(assert true) ; Non Conditional
(define-const var1281 var1046 var1046-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1348 (Array Int var235) arr-var235-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var1348!1 (Array Int var235))
(assert (not (= var1348!1 null-__Array__Int__var235__)))
(assert (= (select var1348!1 0) (cast-from-String-to-var235 var416))) ; Statement: $r6[0] = r2 
(declare-const var1348!2 (Array Int var235))
(assert (not (= var1348!2 null-__Array__Int__var235__)))
(assert (= (select var1348!2 1) (cast-from-String-to-var235 var1368))) ; Statement: $r6[1] = r3 
(declare-const var1348!3 (Array Int var235))
(assert (not (= var1348!3 null-__Array__Int__var235__)))
(assert (= (select var1348!3 2) (cast-from-String-to-var235 var2904))) ; Statement: $r6[2] = r4 
(define-const var2397 String (String_format/-647569892 var1281 "Unable to perform requested lazy initialization [%s.%s] - %s" var1348!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6) 
(define-const var3902 var1900 var1900-init) ; Statement: $r9 = new org.hibernate.LazyInitializationException 
(assert true)
;(assert (<init>/1436286819 var3902 var2397)) ; Statement: specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7) 

(declare-const var3902!1 var1900)
(declare-const var2397!1 String)
(define-const var1622 var1972 (cast-from-var1900-to-var1972 var3902!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1544-to-var916=([org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause], java.lang.Enum), arr-var235-init=([], java.lang.Object[]), cast-from-String-to-var235=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1900-init=([], org.hibernate.LazyInitializationException), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var1900-to-var1972=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var1544=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause, var1806=r0, var416=r2, var3646=null_type, var1368=r3, var1824=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1, var2424=$r1, var916=java.lang.Enum, var3165=$i0, var1956=$i1, var2904=r4, var1046=java.util.Locale, var1281=$r5, var235=java.lang.Object, var1348=$r6, var2397=$r7, var1900=org.hibernate.LazyInitializationException, var3902=$r9, var1972=java.lang.Throwable, var1622=$r10}
; {org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause=var1544, r0=var1806, r2=var416, null_type=var3646, r3=var1368, org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1=var1824, $r1=var2424, java.lang.Enum=var916, $i0=var3165, $i1=var1956, r4=var2904, java.util.Locale=var1046, $r5=var1281, java.lang.Object=var235, $r6=var1348, $r7=var2397, org.hibernate.LazyInitializationException=var1900, $r9=var3902, java.lang.Throwable=var1972, $r10=var1622}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause>;	$i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; };	r4 = "session is closed and settings disallow loading outside the Session";	goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>];	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r6[1] = r3;	$r6[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6);	$r9 = new org.hibernate.LazyInitializationException;	specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 3