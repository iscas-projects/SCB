(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3319 0)
(declare-sort var2355 0)
(declare-sort var3057 0)
(declare-sort var1760 0)
(declare-sort var1535 0)
(declare-sort var3141 0)
(declare-sort var2038 0)
(declare-sort var5 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1760) Int)
(declare-fun cast-from-var3319-to-var1760 (var3319) var1760)
(declare-fun arr-var3141-init () (Array Int var3141))
(declare-fun cast-from-String-to-var3141 (String) var3141)
(declare-fun String_format/-647569892 (var1535 String (Array Int var3141)) String)
(declare-fun var2038-init () var2038)
(declare-fun <init>/1436286819 (var2038 String) void)
(declare-fun cast-from-var2038-to-var5 (var2038) var5)
(declare-const null-var3319 var3319)
(declare-const null-String String)
(declare-const var3057-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause (Array Int Int))
(declare-const var1535-ROOT var1535)
(declare-const null-__Array__Int__var3141__ (Array Int var3141))
(declare-const var3676 var3319) ; Statement: r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause 
(assert (not (= var3676 null-var3319)))
(declare-const var639 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var639 null-String)))
(declare-const var2553 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2553 null-String)))
(define-const var695 (Array Int Int) var3057-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause) ; Statement: $r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause> 
(assert true)
(define-const var3272 Int (ordinal/-291641772 (cast-from-var3319-to-var1760 var3676))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>() 
(define-const var327 Int (select var695 var3272)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; } 
(assert (and (= var327 4) (and (not (= var327 3)) (and (not (= var327 2)) (and (not (= var327 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var1755 String "could not determine SessionFactory UUId to create temporary Session for loading") ; Statement: r4 = "could not determine SessionFactory UUId to create temporary Session for loading" 
 ; Statement: goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>] 
(assert true) ; Non Conditional
(define-const var2556 var1535 var1535-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1980 (Array Int var3141) arr-var3141-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var1980!1 (Array Int var3141))
(assert (not (= var1980!1 null-__Array__Int__var3141__)))
(assert (= (select var1980!1 0) (cast-from-String-to-var3141 var639))) ; Statement: $r6[0] = r2 
(declare-const var1980!2 (Array Int var3141))
(assert (not (= var1980!2 null-__Array__Int__var3141__)))
(assert (= (select var1980!2 1) (cast-from-String-to-var3141 var2553))) ; Statement: $r6[1] = r3 
(declare-const var1980!3 (Array Int var3141))
(assert (not (= var1980!3 null-__Array__Int__var3141__)))
(assert (= (select var1980!3 2) (cast-from-String-to-var3141 var1755))) ; Statement: $r6[2] = r4 
(define-const var1101 String (String_format/-647569892 var2556 "Unable to perform requested lazy initialization [%s.%s] - %s" var1980!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6) 
(define-const var3480 var2038 var2038-init) ; Statement: $r9 = new org.hibernate.LazyInitializationException 
(assert true)
;(assert (<init>/1436286819 var3480 var1101)) ; Statement: specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7) 

(declare-const var3480!1 var2038)
(declare-const var1101!1 String)
(define-const var3066 var5 (cast-from-var2038-to-var5 var3480!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3319-to-var1760=([org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause], java.lang.Enum), arr-var3141-init=([], java.lang.Object[]), cast-from-String-to-var3141=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var2038-init=([], org.hibernate.LazyInitializationException), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var2038-to-var5=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var3319=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause, var3676=r0, var639=r2, var2355=null_type, var2553=r3, var3057=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1, var695=$r1, var1760=java.lang.Enum, var3272=$i0, var327=$i1, var1755=r4, var1535=java.util.Locale, var2556=$r5, var3141=java.lang.Object, var1980=$r6, var1101=$r7, var2038=org.hibernate.LazyInitializationException, var3480=$r9, var5=java.lang.Throwable, var3066=$r10}
; {org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause=var3319, r0=var3676, r2=var639, null_type=var2355, r3=var2553, org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1=var3057, $r1=var695, java.lang.Enum=var1760, $i0=var3272, $i1=var327, r4=var1755, java.util.Locale=var1535, $r5=var2556, java.lang.Object=var3141, $r6=var1980, $r7=var1101, org.hibernate.LazyInitializationException=var2038, $r9=var3480, java.lang.Throwable=var5, $r10=var3066}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause>;	$i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; };	r4 = "could not determine SessionFactory UUId to create temporary Session for loading";	goto [?= $r5 = <java.util.Locale: java.util.Locale ROOT>];	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r6[1] = r3;	$r6[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6);	$r9 = new org.hibernate.LazyInitializationException;	specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 3