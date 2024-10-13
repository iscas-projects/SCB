(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var2474 0)
(declare-sort var1343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2474_checkArgument/1031231112 (Bool String var1343) void)
(declare-fun cast-from-String-to-var1343 (String) var1343)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var896 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(assert (and true (and (> (str.len var896) 0) (<= 0 0))))
(define-const var2592 Int (charAt/698050440 var896 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3444 Int (cast-from-Int-to-Int var2592)) ; Statement: $i11 = (int) $c0 
 ; Statement: if $i11 != 91 goto $z1 = 0 
(assert (not (= var3444 91))) ; Cond: $i11 != 91 
(define-const var3264 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2474_checkArgument/1031231112 var3264 "Bracketed host-port string must start with a bracket: %s" (cast-from-String-to-var1343 var896))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0) 

(declare-const var3264!1 Bool)
(declare-const var2890 String)
(declare-const var896!1 String)
(assert true)
(define-const var2520 Int (indexOf/-1037706067 var896!1 58)) ; Statement: $i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(assert true)
(define-const var3352 Int (lastIndexOf/-1292097097 var896!1 93)) ; Statement: $i6 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(93) 
(define-const var3594 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if $i5 <= $i13 goto $z2 = 0 
(assert (<= var2520 var3594)) ; Cond: $i5 <= $i13 
(define-const var1094 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2474_checkArgument/1031231112 var1094 "Invalid bracketed host/port: %s" (cast-from-String-to-var1343 var896!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Invalid bracketed host/port: %s", r0) 

(declare-const var1094!1 Bool)
(declare-const var2487 String)
(declare-const var896!2 String)
(assert (and true (and (>= 1 0) (>= (str.len var896!2) var3352) (>= var3352 1))))
(define-const var531 String (substring/-1240304868 var896!2 1 var3352)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i6) 
(define-const var2543 Int (+ var3352 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
(define-const var3804 Int (length/-134980193 var896!2)) ; Statement: $i8 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i7 != $i8 goto $i1 = $i6 + 1 
(assert (not (not (= var2543 var3804)))) ; Negate: Cond: $i7 != $i8  
(define-const var127 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[2] 
(declare-const var127!1 (Array Int String))
(assert (not (= var127!1 null-__Array__Int__String__)))
(assert (= (select var127!1 0) var531)) ; Statement: $r3[0] = $r4 
(declare-const var127!2 (Array Int String))
(assert (not (= var127!2 null-__Array__Int__String__)))
(assert (= (select var127!2 1) "")) ; Statement: $r3[1] = "" 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2474_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1343=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var896=r0, var872=null_type, var2592=$c0, var3444=$i11, var3264=$z1, var2474=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1343=java.lang.Object, var2890="Bracketed host-port string must start with a bracket: %s", var2520=$i5, var3352=$i6, var3594=$i13, var1094=$z2, var2487="Invalid bracketed host/port: %s", var531=$r4, var2543=$i7, var3804=$i8, var127=$r3}
; {r0=var896, null_type=var872, $c0=var2592, $i11=var3444, $z1=var3264, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2474, java.lang.Object=var1343, "Bracketed host-port string must start with a bracket: %s"=var2890, $i5=var2520, $i6=var3352, $i13=var3594, $z2=var1094, "Invalid bracketed host/port: %s"=var2487, $r4=var531, $i7=var2543, $i8=var3804, $r3=var127}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i11 = (int) $c0;	if $i11 != 91 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0);	$i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	$i6 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(93);	$i13 = (int) -1;	if $i5 <= $i13 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Invalid bracketed host/port: %s", r0);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i6);	$i7 = $i6 + 1;	$i8 = virtualinvoke r0.<java.lang.String: int length()>();	if $i7 != $i8 goto $i1 = $i6 + 1;	$r3 = newarray (java.lang.String)[2];	$r3[0] = $r4;	$r3[1] = "";	return $r3
;block_num 6