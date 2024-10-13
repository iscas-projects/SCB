(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1022 0)
(declare-sort var1063 0)
(declare-sort var2193 0)
(declare-sort var405 0)
(declare-sort var3894 0)
(declare-sort var2656 0)
(declare-sort var2111 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var405) void)
(declare-fun cast-from-var1022-to-var405 (var1022) var405)
(declare-fun defaultInstance/-886181383 (var1022) var1063)
(declare-fun info/-886181383 (var1022) String)
(declare-fun objects/-886181383 (var1022) (Array Int var405))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun var2111-init () var2111)
(declare-fun arr-var405-init () (Array Int var405))
(declare-fun cast-from-String-to-var405 (String) var405)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var405 (Int) var405)
(declare-fun String_format/1339386452 (String (Array Int var405)) String)
(declare-fun <init>/-1447874194 (var2111 String var919) void)
(declare-fun cast-from-var2656-to-var919 (var2656) var919)
(declare-const null-var1022 var1022)
(declare-const null-var1063 var1063)
(declare-const null-String String)
(declare-const null-__Array__Int__var405__ (Array Int var405))
(declare-const null-var3894 var3894)
(declare-const null-var2656 var2656)
(declare-const var2772 var1022) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo 
(assert (not (= var2772 null-var1022)))
(declare-const var1711 var1063) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite 
(assert (not (= var1711 null-var1063)))
(declare-const var3551 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var3551 null-String)))
(declare-const var3457 (Array Int var405)) ; Statement: r2 := @parameter2: java.lang.Object[] 
(assert (not (= var3457 null-__Array__Int__var405__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1022-to-var405 var2772))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2772!1 var1022)
(declare-const var2772!2 var1022)
(assert (not (= var2772!2 null-var1022)))
(assert (= (defaultInstance/-886181383 var2772!2) var1711)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite defaultInstance> = r1 
(declare-const var2772!3 var1022)
(assert (not (= var2772!3 null-var1022)))
(assert (= (info/-886181383 var2772!3) var3551)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.String info> = r12 
(declare-const var2772!4 var1022)
(assert (not (= var2772!4 null-var1022)))
(assert (= (objects/-886181383 var2772!4) var3457)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.Object[] objects> = r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1574 var3894) ; Statement: $r10 := @caughtexception 
(assert (not (= var1574 null-var3894)))
(assert true)
(define-const var2280 (Array Int Int) (toCharArray/415275702 var3551)) ; Statement: r13 = virtualinvoke r12.<java.lang.String: char[] toCharArray()>() 
(define-const var2174 String String-init) ; Statement: $r15 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2174 var2280)) ; Statement: specialinvoke $r15.<java.lang.String: void <init>(char[])>(r13) 

(declare-const var2174!1 String)
(declare-const var2280!1 (Array Int Int))
(define-const var3551!1 String var2174!1) ; Statement: r12 = $r15 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1250 var3894) ; Statement: $r8 := @caughtexception 
(assert (not (= var1250 null-var3894)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1530 var2656) ; Statement: $r3 := @caughtexception 
(assert (not (= var1530 null-var2656)))
(define-const var3771 var2111 var2111-init) ; Statement: $r17 = new java.lang.IllegalStateException 
(define-const var2709 (Array Int var405) arr-var405-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(declare-const var2709!1 (Array Int var405))
(assert (not (= var2709!1 null-__Array__Int__var405__)))
(assert (= (select var2709!1 0) (cast-from-String-to-var405 var3551!1))) ; Statement: $r5[0] = r12 
(define-const var3662 Int (getLength-Arr-Int-1 var2280!1)) ; Statement: $i6 = lengthof r13 
(define-const var1674 Int (Int_valueOf/-1371140006 var3662)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var2709!2 (Array Int var405))
(assert (not (= var2709!2 null-__Array__Int__var405__)))
(assert (= (select var2709!2 1) (cast-from-Int-to-var405 var1674))) ; Statement: $r5[1] = $r6 
(define-const var3051 String (String_format/1339386452 "Failed parsing \u0027%s\u0027 with charArray.length of %d" var2709!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed parsing \'%s\' with charArray.length of %d", $r5) 
(assert true)
;(assert (<init>/-1447874194 var3771 var3051 (cast-from-var2656-to-var919 var1530))) ; Statement: specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r3) 

(declare-const var3771!1 var2111)
(declare-const var3051!1 String)
(declare-const var1530!1 var2656)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1022-to-var405=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], java.lang.Object), defaultInstance/-886181383=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite), info/-886181383=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], java.lang.String), objects/-886181383=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], java.lang.Object[]), toCharArray/415275702=([java.lang.String], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), var2111-init=([], java.lang.IllegalStateException), arr-var405-init=([], java.lang.Object[]), cast-from-String-to-var405=([java.lang.String], java.lang.Object), getLength-Arr-Int-1=([char[]], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var405=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var2656-to-var919=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var1022=com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo, var2772=r0, var1063=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, var1711=r1, var3551=r12, var2193=null_type, var405=java.lang.Object, var3457=r2, var3894=java.lang.StringIndexOutOfBoundsException, var1574=$r10, var2280=r13, var2174=$r15, var1250=$r8, var2656=java.lang.IndexOutOfBoundsException, var1530=$r3, var2111=java.lang.IllegalStateException, var3771=$r17, var2709=$r5, var3662=$i6, var1674=$r6, var3051=$r7, var919=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo=var1022, r0=var2772, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite=var1063, r1=var1711, r12=var3551, null_type=var2193, java.lang.Object=var405, r2=var3457, java.lang.StringIndexOutOfBoundsException=var3894, $r10=var1574, r13=var2280, $r15=var2174, $r8=var1250, java.lang.IndexOutOfBoundsException=var2656, $r3=var1530, java.lang.IllegalStateException=var2111, $r17=var3771, $r5=var2709, $i6=var3662, $r6=var1674, $r7=var3051, java.lang.Throwable=var919}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite;	r12 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite defaultInstance> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.String info> = r12;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.Object[] objects> = r2;	$r10 := @caughtexception;	r13 = virtualinvoke r12.<java.lang.String: char[] toCharArray()>();	$r15 = new java.lang.String;	specialinvoke $r15.<java.lang.String: void <init>(char[])>(r13);	r12 = $r15;	$r8 := @caughtexception;	$r3 := @caughtexception;	$r17 = new java.lang.IllegalStateException;	$r5 = newarray (java.lang.Object)[2];	$r5[0] = r12;	$i6 = lengthof r13;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r5[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed parsing \'%s\' with charArray.length of %d", $r5);	specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r3);	throw $r17
;block_num 4