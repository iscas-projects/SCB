(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var2897 0)
(declare-sort var816 0)
(declare-sort var481 0)
(declare-sort var948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var816-init () (Array Int var816))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var816 (Int) var816)
(declare-fun name/1633728430 (var481) String)
(declare-fun cast-from-var2897-to-var481 (var2897) var481)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun cast-from-String-to-var816 (String) var816)
(declare-fun String_format/1339386452 (String (Array Int var816)) String)
(declare-fun <init>/-8765015 (var948 String) void)
(declare-fun cast-from-var776-to-var948 (var776) var948)
(declare-fun timeUnit/1791280684 (var776) var2897)
(declare-fun timeout/1791280684 (var776) Int)
(declare-const null-var776 var776)
(declare-const null-Int Int)
(declare-const null-var2897 var2897)
(declare-const null-__Array__Int__var816__ (Array Int var816))
(declare-const var1125 var776) ; Statement: r0 := @this: org.junit.runners.model.TestTimedOutException 
(assert (not (= var1125 null-var776)))
(declare-const var69 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var69 null-Int)))
(declare-const var3876 var2897) ; Statement: r3 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var3876 null-var2897)))
(define-const var3673 (Array Int var816) arr-var816-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var2390 Int (Int_valueOf/-1102777585 var69)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var3673!1 (Array Int var816))
(assert (not (= var3673!1 null-__Array__Int__var816__)))
(assert (= (select var3673!1 0) (cast-from-Int-to-var816 var2390))) ; Statement: $r1[0] = $r2 
(assert true)
(define-const var475 String (name/1633728430 (cast-from-var2897-to-var481 var3876))) ; Statement: $r4 = virtualinvoke r3.<java.util.concurrent.TimeUnit: java.lang.String name()>() 
(assert true)
(define-const var596 String (toLowerCase/415700667 var475)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(declare-const var3673!2 (Array Int var816))
(assert (not (= var3673!2 null-__Array__Int__var816__)))
(assert (= (select var3673!2 1) (cast-from-String-to-var816 var596))) ; Statement: $r1[1] = $r5 
(define-const var2512 String (String_format/1339386452 "test timed out after %d %s" var3673!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("test timed out after %d %s", $r1) 
(assert true)
;(assert (<init>/-8765015 (cast-from-var776-to-var948 var1125) var2512)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6) 

(declare-const var1125!1 var776)
(declare-const var2512!1 String)
(declare-const var1125!2 var776)
(assert (not (= var1125!2 null-var776)))
(assert (= (timeUnit/1791280684 var1125!2) var3876)) ; Statement: r0.<org.junit.runners.model.TestTimedOutException: java.util.concurrent.TimeUnit timeUnit> = r3 
(declare-const var1125!3 var776)
(assert (not (= var1125!3 null-var776)))
(assert (= (timeout/1791280684 var1125!3) var69)) ; Statement: r0.<org.junit.runners.model.TestTimedOutException: long timeout> = l0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var816-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var816=([java.lang.Long], java.lang.Object), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2897-to-var481=([java.util.concurrent.TimeUnit], java.lang.Enum), toLowerCase/415700667=([java.lang.String], java.lang.String), cast-from-String-to-var816=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var776-to-var948=([org.junit.runners.model.TestTimedOutException], java.lang.Exception), timeUnit/1791280684=([org.junit.runners.model.TestTimedOutException], java.util.concurrent.TimeUnit), timeout/1791280684=([org.junit.runners.model.TestTimedOutException], long)}
; {var776=org.junit.runners.model.TestTimedOutException, var1125=r0, var69=l0, var2897=java.util.concurrent.TimeUnit, var3876=r3, var816=java.lang.Object, var3673=$r1, var2390=$r2, var481=java.lang.Enum, var475=$r4, var596=$r5, var2512=$r6, var948=java.lang.Exception}
; {org.junit.runners.model.TestTimedOutException=var776, r0=var1125, l0=var69, java.util.concurrent.TimeUnit=var2897, r3=var3876, java.lang.Object=var816, $r1=var3673, $r2=var2390, java.lang.Enum=var481, $r4=var475, $r5=var596, $r6=var2512, java.lang.Exception=var948}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.runners.model.TestTimedOutException;	l0 := @parameter0: long;	r3 := @parameter1: java.util.concurrent.TimeUnit;	$r1 = newarray (java.lang.Object)[2];	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r1[0] = $r2;	$r4 = virtualinvoke r3.<java.util.concurrent.TimeUnit: java.lang.String name()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$r1[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("test timed out after %d %s", $r1);	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6);	r0.<org.junit.runners.model.TestTimedOutException: java.util.concurrent.TimeUnit timeUnit> = r3;	r0.<org.junit.runners.model.TestTimedOutException: long timeout> = l0;	return
;block_num 1