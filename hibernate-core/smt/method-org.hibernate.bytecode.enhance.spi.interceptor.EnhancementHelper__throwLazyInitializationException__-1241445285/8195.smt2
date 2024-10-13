(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2025 0)
(declare-sort var169 0)
(declare-sort var991 0)
(declare-sort var3165 0)
(declare-sort var155 0)
(declare-sort var1126 0)
(declare-sort var1313 0)
(declare-sort var759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3165) Int)
(declare-fun cast-from-var2025-to-var3165 (var2025) var3165)
(declare-fun arr-var1126-init () (Array Int var1126))
(declare-fun cast-from-String-to-var1126 (String) var1126)
(declare-fun String_format/-647569892 (var155 String (Array Int var1126)) String)
(declare-fun var1313-init () var1313)
(declare-fun <init>/1436286819 (var1313 String) void)
(declare-fun cast-from-var1313-to-var759 (var1313) var759)
(declare-const null-var2025 var2025)
(declare-const null-String String)
(declare-const var991-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause (Array Int Int))
(declare-const var155-ROOT var155)
(declare-const null-__Array__Int__var1126__ (Array Int var1126))
(declare-const var1553 var2025) ; Statement: r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause 
(assert (not (= var1553 null-var2025)))
(declare-const var1090 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1090 null-String)))
(declare-const var3209 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3209 null-String)))
(define-const var1550 (Array Int Int) var991-$SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause) ; Statement: $r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause> 
(assert true)
(define-const var2015 Int (ordinal/-291641772 (cast-from-var2025-to-var3165 var1553))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>() 
(define-const var1482 Int (select var1550 var2015)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; } 
(assert (and (not (= var1482 4)) (and (not (= var1482 3)) (and (not (= var1482 2)) (and (not (= var1482 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3651 String "<should never get here>") ; Statement: r4 = "<should never get here>" 
(assert true) ; Non Conditional
(define-const var3273 var155 var155-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3512 (Array Int var1126) arr-var1126-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var3512!1 (Array Int var1126))
(assert (not (= var3512!1 null-__Array__Int__var1126__)))
(assert (= (select var3512!1 0) (cast-from-String-to-var1126 var1090))) ; Statement: $r6[0] = r2 
(declare-const var3512!2 (Array Int var1126))
(assert (not (= var3512!2 null-__Array__Int__var1126__)))
(assert (= (select var3512!2 1) (cast-from-String-to-var1126 var3209))) ; Statement: $r6[1] = r3 
(declare-const var3512!3 (Array Int var1126))
(assert (not (= var3512!3 null-__Array__Int__var1126__)))
(assert (= (select var3512!3 2) (cast-from-String-to-var1126 var3651))) ; Statement: $r6[2] = r4 
(define-const var1110 String (String_format/-647569892 var3273 "Unable to perform requested lazy initialization [%s.%s] - %s" var3512!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6) 
(define-const var438 var1313 var1313-init) ; Statement: $r9 = new org.hibernate.LazyInitializationException 
(assert true)
;(assert (<init>/1436286819 var438 var1110)) ; Statement: specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7) 

(declare-const var438!1 var1313)
(declare-const var1110!1 String)
(define-const var360 var759 (cast-from-var1313-to-var759 var438!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2025-to-var3165=([org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause], java.lang.Enum), arr-var1126-init=([], java.lang.Object[]), cast-from-String-to-var1126=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1313-init=([], org.hibernate.LazyInitializationException), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var1313-to-var759=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var2025=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause, var1553=r0, var1090=r2, var169=null_type, var3209=r3, var991=org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1, var1550=$r1, var3165=java.lang.Enum, var2015=$i0, var1482=$i1, var3651=r4, var155=java.util.Locale, var3273=$r5, var1126=java.lang.Object, var3512=$r6, var1110=$r7, var1313=org.hibernate.LazyInitializationException, var438=$r9, var759=java.lang.Throwable, var360=$r10}
; {org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause=var2025, r0=var1553, r2=var1090, null_type=var169, r3=var3209, org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1=var991, $r1=var1550, java.lang.Enum=var3165, $i0=var2015, $i1=var1482, r4=var3651, java.util.Locale=var155, $r5=var3273, java.lang.Object=var1126, $r6=var3512, $r7=var1110, org.hibernate.LazyInitializationException=var1313, $r9=var438, java.lang.Throwable=var759, $r10=var360}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r1 = <org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$1: int[] $SwitchMap$org$hibernate$bytecode$enhance$spi$interceptor$EnhancementHelper$Cause>;	$i0 = virtualinvoke r0.<org.hibernate.bytecode.enhance.spi.interceptor.EnhancementHelper$Cause: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r4 = "no session and settings disallow loading outside the Session";     case 2: goto r4 = "session is closed and settings disallow loading outside the Session";     case 3: goto r4 = "session is disconnected and settings disallow loading outside the Session";     case 4: goto r4 = "could not determine SessionFactory UUId to create temporary Session for loading";     default: goto r4 = "<should never get here>"; };	r4 = "<should never get here>";	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r6[1] = r3;	$r6[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Unable to perform requested lazy initialization [%s.%s] - %s", $r6);	$r9 = new org.hibernate.LazyInitializationException;	specialinvoke $r9.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 3